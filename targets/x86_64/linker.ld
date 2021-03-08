/*specifying entry point */
ENTRY(start)

SECTIONS
{
	 /*set the current address to 1mb, system data will start 1mb in */
	. = 1M;

	.boot :
	{
		/*include our multiboot_header from header.asm */
		KEEP(*(.multiboot_header))
	}

	.text :
	{
		/*include our text section from main.asm */
		*(.text)
	}
}
