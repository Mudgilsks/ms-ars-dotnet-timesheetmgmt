using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebTimeSheetManagement.Interface
{
    public interface IRoles
    {
        /// <summary>
        /// Rename method name
        /// </summary>
        /// <param name="Rolename"></param>
        /// <returns></returns>
        int GetRolesofUserbyRolename(string Rolename);
    }
}
