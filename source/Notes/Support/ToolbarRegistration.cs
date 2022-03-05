using UnityEngine;
using ToolbarControl_NS;

namespace Proximity
{
    [KSPAddon(KSPAddon.Startup.MainMenu, true)]
    public class RegisterToolbar : MonoBehaviour
    {
        void Start()
        {
            ToolbarControl.RegisterMod(StockToolbar.MODID, StockToolbar.MODNAME);
        }
    }
}