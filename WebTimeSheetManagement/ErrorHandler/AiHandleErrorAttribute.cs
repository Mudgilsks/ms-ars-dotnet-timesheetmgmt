using System;
using System.Web.Mvc;
using Microsoft.ApplicationInsights;

namespace WebTimeSheetManagement.ErrorHandler
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, Inherited = true, AllowMultiple = true)]
    public class AiHandleErrorAttribute : HandleErrorAttribute
    {
        public override void OnException(ExceptionContext filterContext)
        {

            if (filterContext != null && filterContext.HttpContext != null && filterContext.Exception != null)
            {
                //If customError is Off, then AI HTTPModule will report the exception
                if (filterContext.HttpContext.IsCustomErrorEnabled)
                {

                    string strLogText = "";
                    Exception ex = filterContext.Exception;
                    filterContext.ExceptionHandled = true;
                    var objClass = filterContext;
                    strLogText += "Message ---\n{0}" + ex.Message;

                    if (ex.Source == ".Net SqlClient Data Provider")
                    {
                        strLogText += Environment.NewLine + "SqlClient Error ---\n{0}" + "Check Sql Error";
                    }
                    else if (ex.Source == "System.Web.Mvc")
                    {
                        strLogText += Environment.NewLine + ".Net Error ---\n{0}" + "Check MVC Code For Error";
                    }
                    else if (filterContext.HttpContext.Request.IsAjaxRequest() == true)
                    {
                        strLogText += Environment.NewLine + ".Net Error ---\n{0}" + "Check MVC Ajax Code For Error";
                    }

                    strLogText += Environment.NewLine + "Source ---\n{0}" + ex.Source;
                    strLogText += Environment.NewLine + "StackTrace ---\n{0}" + ex.StackTrace;
                    strLogText += Environment.NewLine + "TargetSite ---\n{0}" + ex.TargetSite;
                    if (ex.InnerException != null)
                    {
                        strLogText += Environment.NewLine + "Inner Exception is {0}" + ex.InnerException;//error prone
                    }
                    if (ex.HelpLink != null)
                    {
                        strLogText += Environment.NewLine + "HelpLink ---\n{0}" + ex.HelpLink;//error prone
                    }

                    var controllerName = (string)filterContext.RouteData.Values["controller"];
                    var actionName = (string)filterContext.RouteData.Values["action"];


                    strLogText += Environment.NewLine + "Controller Name :- \n{0}" + controllerName;
                    strLogText += Environment.NewLine + "Action Method Name :- \n{0}" + actionName;

                    Exception e = new Exception(strLogText);
                    var ai = new TelemetryClient();
                    ai.TrackException(e);

                    filterContext.HttpContext.Session.Abandon();
                    filterContext.Result = new ViewResult()
                    {
                        ViewName = "Error"
                    };
                }
            }
            base.OnException(filterContext);
        }
    }
}