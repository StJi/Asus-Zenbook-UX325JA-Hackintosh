// Fix AC Adapter SB.PCI0.LPCB.H_EC

DefinitionBlock ("", "SSDT", 2, "hack", "ADP1", 0x00000000)
{
    External (_SB_.PCI0.LPCB.H_EC.ADP1, DeviceObj)

    Scope (\_SB.PCI0.LPCB.H_EC.ADP1)
    {
		Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
		{
			0x18, 
			0x03
		})
		 Method (_STA, 0, NotSerialized)  // _STA: Status
		{
			Return (0x0F)
		}
    }
}
