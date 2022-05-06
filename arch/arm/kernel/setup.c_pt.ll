; ModuleID = '/llk/IR/arch/arm/kernel/setup.c_pt.bc'
source_filename = "../arch/arm/kernel/setup.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_processor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22processor_id\22\09\09\09\09\09"
module asm "__kstrtabns_processor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___machine_arch_type:\09\09\09\09\09"
module asm "\09.asciz \09\22__machine_arch_type\22\09\09\09\09\09"
module asm "__kstrtabns___machine_arch_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cacheid:\09\09\09\09\09"
module asm "\09.asciz \09\22cacheid\22\09\09\09\09\09"
module asm "__kstrtabns_cacheid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22system_rev\22\09\09\09\09\09"
module asm "__kstrtabns_system_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_serial:\09\09\09\09\09"
module asm "\09.asciz \09\22system_serial\22\09\09\09\09\09"
module asm "__kstrtabns_system_serial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_serial_low:\09\09\09\09\09"
module asm "\09.asciz \09\22system_serial_low\22\09\09\09\09\09"
module asm "__kstrtabns_system_serial_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_serial_high:\09\09\09\09\09"
module asm "\09.asciz \09\22system_serial_high\22\09\09\09\09\09"
module asm "__kstrtabns_system_serial_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_hwcap:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_hwcap\22\09\09\09\09\09"
module asm "__kstrtabns_elf_hwcap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_hwcap2:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_hwcap2\22\09\09\09\09\09"
module asm "__kstrtabns_elf_hwcap2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_outer_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22outer_cache\22\09\09\09\09\09"
module asm "__kstrtabns_outer_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_platform\22\09\09\09\09\09"
module asm "__kstrtabns_elf_platform:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stack = type { [3 x i32], [3 x i32], [3 x i32], [3 x i32], [16 x i8] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.cpu_user_fns = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_arm = type { %struct.cpu, i32, i32 }
%struct.cpu = type { i32, i32, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mpidr_hash = type { i32, [3 x i32], i32 }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.proc_info_list = type { i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@processor_id = dso_local global i32 0, align 4
@__kstrtab_processor_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_processor_id = external dso_local constant [0 x i8], align 1
@__ksymtab_processor_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @processor_id to i32), ptr @__kstrtab_processor_id, ptr @__kstrtabns_processor_id }, section "___ksymtab+processor_id", align 4
@__machine_arch_type = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab___machine_arch_type = external dso_local constant [0 x i8], align 1
@__kstrtabns___machine_arch_type = external dso_local constant [0 x i8], align 1
@__ksymtab___machine_arch_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__machine_arch_type to i32), ptr @__kstrtab___machine_arch_type, ptr @__kstrtabns___machine_arch_type }, section "___ksymtab+__machine_arch_type", align 4
@cacheid = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_cacheid = external dso_local constant [0 x i8], align 1
@__kstrtabns_cacheid = external dso_local constant [0 x i8], align 1
@__ksymtab_cacheid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cacheid to i32), ptr @__kstrtab_cacheid, ptr @__kstrtabns_cacheid }, section "___ksymtab+cacheid", align 4
@system_rev = dso_local global i32 0, align 4
@__kstrtab_system_rev = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_rev = external dso_local constant [0 x i8], align 1
@__ksymtab_system_rev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_rev to i32), ptr @__kstrtab_system_rev, ptr @__kstrtabns_system_rev }, section "___ksymtab+system_rev", align 4
@system_serial = dso_local global ptr null, align 4
@__kstrtab_system_serial = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_serial = external dso_local constant [0 x i8], align 1
@__ksymtab_system_serial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_serial to i32), ptr @__kstrtab_system_serial, ptr @__kstrtabns_system_serial }, section "___ksymtab+system_serial", align 4
@system_serial_low = dso_local global i32 0, align 4
@__kstrtab_system_serial_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_serial_low = external dso_local constant [0 x i8], align 1
@__ksymtab_system_serial_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_serial_low to i32), ptr @__kstrtab_system_serial_low, ptr @__kstrtabns_system_serial_low }, section "___ksymtab+system_serial_low", align 4
@system_serial_high = dso_local global i32 0, align 4
@__kstrtab_system_serial_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_serial_high = external dso_local constant [0 x i8], align 1
@__ksymtab_system_serial_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_serial_high to i32), ptr @__kstrtab_system_serial_high, ptr @__kstrtabns_system_serial_high }, section "___ksymtab+system_serial_high", align 4
@elf_hwcap = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_elf_hwcap = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_hwcap = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_hwcap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_hwcap to i32), ptr @__kstrtab_elf_hwcap, ptr @__kstrtabns_elf_hwcap }, section "___ksymtab+elf_hwcap", align 4
@elf_hwcap2 = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_elf_hwcap2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_hwcap2 = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_hwcap2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_hwcap2 to i32), ptr @__kstrtab_elf_hwcap2, ptr @__kstrtabns_elf_hwcap2 }, section "___ksymtab+elf_hwcap2", align 4
@outer_cache = dso_local global %struct.outer_cache_fns zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_outer_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_outer_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_outer_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @outer_cache to i32), ptr @__kstrtab_outer_cache, ptr @__kstrtabns_outer_cache }, section "___ksymtab+outer_cache", align 4
@__cpu_architecture = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@elf_platform = dso_local global [8 x i8] zeroinitializer, align 1
@__kstrtab_elf_platform = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_platform = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_platform = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_platform to i32), ptr @__kstrtab_elf_platform, ptr @__kstrtabns_elf_platform }, section "___ksymtab+elf_platform", align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stacks = internal global [16 x %struct.stack] zeroinitializer, align 64
@.str.1 = private unnamed_addr constant [33 x i8] c"\012CPU%u: bad primary CPU number\0A\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@processor = dso_local local_unnamed_addr global %struct.processor zeroinitializer, section ".data..ro_after_init", align 4
@__cpu_logical_map = dso_local local_unnamed_addr global [16 x i32] [i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\016Booting Linux on physical CPU 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\013CPU%u: configuration botched (ID %08x), CPU halted\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Available machine support:\0A\0AID (hex)\09NAME\0A\00", align 1
@__arch_info_begin = external dso_local constant [0 x %struct.machine_desc], align 4
@__arch_info_end = external dso_local constant [0 x %struct.machine_desc], align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%08x\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\0APlease check your kernel config and/or bootloader.\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"\012Ignoring memory at 0x%08llx outside 32-bit physical address space\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"\012Truncating memory at 0x%08llx to fit in 32-bit physical address space\0A\00", align 1
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"\016Ignoring memory below PHYS_OFFSET: 0x%08llx-0x%08llx\0A\00", align 1
@__setup_str_early_mem = internal constant [4 x i8] c"mem\00", section ".init.rodata", align 1
@__setup_early_mem = internal global %struct.obs_kernel_param { ptr @__setup_str_early_mem, ptr @early_mem, i32 1 }, section ".init.setup", align 4
@screen_info = dso_local local_unnamed_addr global %struct.screen_info <{ i8 0, i8 0, i16 0, i16 0, i8 0, i8 80, i8 0, i8 0, i16 0, i16 0, i8 30, i8 1, i16 8, i16 0, i16 0, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, i16 0, i16 0, i32 0, i32 0, [2 x i8] zeroinitializer }>, align 1
@__initcall__kmod_setup__231_949_customize_machine3 = internal global ptr @customize_machine, section ".initcall3.init", align 4
@__initcall__kmod_setup__232_974_init_machine_late7 = internal global ptr @init_machine_late, section ".initcall7.init", align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"\016CPU: All CPU(s) started in HYP mode.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\016CPU: Virtualization extensions available.\0A\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"\014CPU: WARNING: CPU(s) started in wrong/inconsistent modes (primary CPU mode 0x%x)\0A\00", align 1
@__boot_cpu_mode = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [59 x i8] c"\014CPU: This may indicate a broken bootloader or firmware.\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"\016CPU: All CPU(s) started in SVC mode.\0A\00", align 1
@__atags_pointer = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@.str.15 = private unnamed_addr constant [61 x i8] c"\0AError: invalid dtb and unrecognized/unsupported machine ID\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"  r1=0x%08x, r2=0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"  r2[]=%*ph\0A\00", align 1
@machine_desc = dso_local local_unnamed_addr global ptr null, section ".init.data", align 4
@machine_name = internal unnamed_addr global ptr null, align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@_text = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@cmd_line = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@__arm_pm_restart = internal unnamed_addr global ptr null, align 4
@arm_restart_nb = internal global %struct.notifier_block { ptr @arm_restart, ptr null, i32 128 }, align 4
@psci_smp_ops = external dso_local constant %struct.smp_operations, align 4
@handle_arch_irq = external dso_local local_unnamed_addr global ptr, section ".data..ro_after_init", align 4
@__initcall__kmod_setup__233_1213_topology_init4 = internal global ptr @topology_init, section ".initcall4.init", align 4
@__initcall__kmod_setup__234_1225_proc_cpu_init5 = internal global ptr @proc_cpu_init, section ".initcall5.init", align 4
@cpuinfo_op = dso_local local_unnamed_addr constant %struct.seq_operations { ptr @c_start, ptr @c_stop, ptr @c_next, ptr @c_show }, align 4
@cpu_tlb = dso_local local_unnamed_addr global %struct.cpu_tlb_fns zeroinitializer, section ".data..ro_after_init", align 4
@cpu_user = dso_local local_unnamed_addr global %struct.cpu_user_fns zeroinitializer, section ".data..ro_after_init", align 4
@cpu_cache = dso_local local_unnamed_addr global %struct.cpu_cache_fns zeroinitializer, section ".data..ro_after_init", align 4
@cpu_data = dso_local global %struct.cpuinfo_arm zeroinitializer, section ".data..percpu", align 8
@mpidr_hash = dso_local global %struct.mpidr_hash zeroinitializer, align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@early_mem.usermem = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"serial-number\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@cpu_name = internal unnamed_addr global ptr null, align 4
@.str.21 = private unnamed_addr constant [49 x i8] c"\016CPU: %s [%08x] revision %d (ARMv%s), cr=%08lx\0A\00", align 1
@proc_arch = internal unnamed_addr constant [17 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"undefined/unknown\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"4T\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"5T\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"5TE\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"5TEJ\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"6TEJ\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"7M\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"?(12)\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"?(13)\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"?(14)\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"?(15)\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"?(16)\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"?(17)\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.41 = private unnamed_addr constant [59 x i8] c"\016CPU: div instructions available: patching division code\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"\016CPU: %s data cache, %s instruction cache\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"VIPT aliasing\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"PIPT / VIPT nonaliasing\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"VIVT ASID tagged\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"PIPT\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"VIPT nonaliasing\00", align 1
@mem_res = internal global [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.53, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.54, i32 16777728, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.55, i32 16777728, i32 0, ptr null, ptr null, ptr null }], align 4
@__init_begin = external dso_local global [0 x i8], align 1
@_sdata = external dso_local global [0 x i8], align 1
@memblock = external dso_local global %struct.memblock, align 4
@.str.50 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.request_standard_resources = private unnamed_addr constant [27 x i8] c"request_standard_resources\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"System RAM (boot alias)\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.52 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 4
@io_res = internal global [3 x %struct.resource] [%struct.resource { i32 956, i32 958, ptr @.str.56, i32 -2147483392, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 888, i32 895, ptr @.str.56, i32 -2147483392, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 632, i32 639, ptr @.str.56, i32 -2147483392, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.53 = private unnamed_addr constant [10 x i8] c"Video RAM\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Kernel code\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"Kernel data\00", align 1
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@.str.56 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.57 = private unnamed_addr constant [47 x i8] c"\014Large number of MPIDR hash buckets detected\0A\00", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str.58 = private unnamed_addr constant [60 x i8] c"\013crashkernel reservation failed - No suitable area found.\0A\00", align 1
@.str.59 = private unnamed_addr constant [54 x i8] c"\013crashkernel reservation failed - memory is in use.\0A\00", align 1
@.str.60 = private unnamed_addr constant [74 x i8] c"\016Reserving %ldMB of memory at %ldMB for crashkernel (System RAM: %ldMB)\0A\00", align 1
@crashk_res = external dso_local global %struct.resource, align 4
@reserve_crashkernel.crashk_boot_res = internal global %struct.resource { i32 0, i32 0, ptr @.str.61, i32 -2147483136, i32 0, ptr null, ptr null, ptr null }, align 4
@.str.61 = private unnamed_addr constant [26 x i8] c"Crash kernel (boot alias)\00", align 1
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.63 = private unnamed_addr constant [16 x i8] c"processor\09: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"model name\09: %s rev %d (%s)\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"BogoMIPS\09: %lu.%02lu\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Features\09: \00", align 1
@hwcap_str = internal unnamed_addr constant [23 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr null], align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"\0ACPU implementer\09: 0x%02x\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"CPU architecture: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"CPU part\09: %07x\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"CPU variant\09: 0x%02x\0A\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"CPU variant\09: 0x%x\0A\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"CPU part\09: 0x%03x\0A\00", align 1
@.str.74 = private unnamed_addr constant [20 x i8] c"CPU revision\09: %d\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"Hardware\09: %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"Revision\09: %04x\0A\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"Serial\09\09: %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"swp\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"thumb\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"26bit\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"fastmult\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"fpa\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"vfp\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"edsp\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"iwmmxt\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"crunch\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"thumbee\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"neon\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"vfpv3\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"vfpv3d16\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"vfpv4\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"idiva\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"idivt\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"vfpd32\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"lpae\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"evtstrm\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"pmull\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"sha2\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"crc32\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_setup__231_949_customize_machine3, ptr @__initcall__kmod_setup__232_974_init_machine_late7, ptr @__initcall__kmod_setup__233_1213_topology_init4, ptr @__initcall__kmod_setup__234_1225_proc_cpu_init5, ptr @__ksymtab___machine_arch_type, ptr @__ksymtab_cacheid, ptr @__ksymtab_elf_hwcap, ptr @__ksymtab_elf_hwcap2, ptr @__ksymtab_elf_platform, ptr @__ksymtab_outer_cache, ptr @__ksymtab_processor_id, ptr @__ksymtab_system_rev, ptr @__ksymtab_system_serial, ptr @__ksymtab_system_serial_high, ptr @__ksymtab_system_serial_low, ptr @__setup_early_mem], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpu_architecture() local_unnamed_addr #0 {
  %1 = load i32, ptr @__cpu_architecture, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #19, !srcloc !9
  unreachable

4:                                                ; preds = %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_print(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #1 section ".init.text" {
  %2 = alloca [256 x i8], align 1
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %2, i8 0, i32 256, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @vsnprintf(ptr noundef nonnull %2, i32 noundef 256, ptr noundef %0, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_init() local_unnamed_addr #7 {
  %1 = tail call ptr @llvm.thread.pointer() #19
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp ugt i32 %3, 15
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3) #20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 532, 0\0A.popsection", ""() #19, !srcloc !11
  unreachable

7:                                                ; preds = %0
  %8 = getelementptr [16 x %struct.stack], ptr @stacks, i32 0, i32 %3
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 4", "r,~{memory}"(i32 %10) #19, !srcloc !12
  %11 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 2), align 4
  tail call void %11() #19
  tail call void asm sideeffect "msr\09cpsr_c, $1\0A\09add\09r14, $0, $2\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $3\0A\09add\09r14, $0, $4\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $5\0A\09add\09r14, $0, $6\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $7\0A\09add\09r14, $0, $8\0A\09mov\09sp, r14\0A\09msr\09cpsr_c, $9", "r,I,I,I,I,I,I,I,I,I,~{lr}"(ptr %8, i32 210, i32 0, i32 215, i32 12, i32 219, i32 24, i32 209, i32 36, i32 211) #19, !srcloc !13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @smp_setup_processor_id() local_unnamed_addr #1 section ".init.text" {
  %1 = load i32, ptr @smp_on_up, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #21, !srcloc !14
  %5 = and i32 %4, 16777215
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ 0, %0 ]
  %8 = and i32 %7, 255
  store i32 %8, ptr @__cpu_logical_map, align 4
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %16, %11 ], [ 1, %6 ]
  %13 = icmp eq i32 %12, %8
  %14 = select i1 %13, i32 0, i32 %12
  %15 = getelementptr [16 x i32], ptr @__cpu_logical_map, i32 0, i32 %12
  store i32 %14, ptr %15, align 4
  %16 = add nuw i32 %12, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c13, c0, 4", "r,~{memory}"(i32 0) #19, !srcloc !12
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %7) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_processor(i32 noundef %0) local_unnamed_addr #7 {
  %2 = tail call ptr @lookup_processor_type(i32 noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #19
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %0) #20
  br label %9

9:                                                ; preds = %9, %4
  br label %9

10:                                               ; preds = %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_processor_type(i32 noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dump_machine_table() local_unnamed_addr #9 section ".init.text" {
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.4) #22
  br i1 icmp ult (ptr @__arch_info_begin, ptr @__arch_info_end), label %1, label %8

1:                                                ; preds = %1, %0
  %2 = phi ptr [ %6, %1 ], [ @__arch_info_begin, %0 ]
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.machine_desc, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.5, i32 noundef %3, ptr noundef %5) #22
  %6 = getelementptr %struct.machine_desc, ptr %2, i32 1
  %7 = icmp ult ptr %6, @__arch_info_end
  br i1 %7, label %1, label %8

8:                                                ; preds = %1, %0
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.6) #22
  br label %9

9:                                                ; preds = %9, %8
  br label %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @arm_add_memory(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 section ".init.text" {
  %3 = add i64 %0, 4095
  %4 = and i64 %3, -4096
  %5 = icmp ugt i64 %4, 4294967295
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %0) #20
  br label %42

8:                                                ; preds = %2
  %9 = add i64 %1, %0
  %10 = call i64 @llvm.usub.sat.i64(i64 %9, i64 %4)
  %11 = add i64 %10, %4
  %12 = icmp ugt i64 %11, 4294967295
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %0) #20
  %15 = sub nuw nsw i64 4294967295, %4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %15, %13 ], [ %10, %8 ]
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %19 = shl i32 %18, 12
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %4, %20
  %22 = trunc i64 %4 to i32
  br i1 %21, label %23, label %34

23:                                               ; preds = %16
  %24 = add i64 %17, %4
  %25 = icmp ugt i64 %24, %20
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %4, i64 noundef %24) #20
  br label %42

28:                                               ; preds = %23
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %4, i64 noundef %20) #20
  %30 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %31 = shl i32 %30, 12
  %32 = zext i32 %31 to i64
  %33 = sub i64 %24, %32
  br label %34

34:                                               ; preds = %28, %16
  %35 = phi i32 [ %31, %28 ], [ %22, %16 ]
  %36 = phi i64 [ %33, %28 ], [ %17, %16 ]
  %37 = and i64 %36, 4294963200
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = trunc i64 %37 to i32
  %41 = tail call i32 @memblock_add(i32 noundef %35, i32 noundef %40) #19
  br label %42

42:                                               ; preds = %39, %34, %26, %6
  %43 = phi i32 [ -22, %6 ], [ -22, %26 ], [ 0, %39 ], [ -22, %34 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_add(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_mem(ptr noundef %0) #1 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store ptr null, ptr %2, align 4, !annotation !10
  %3 = load i1, ptr @early_mem.usermem, align 4
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  store i1 true, ptr @early_mem.usermem, align 4
  %5 = tail call i32 @memblock_start_of_DRAM() #19
  %6 = tail call i32 @memblock_end_of_DRAM() #19
  %7 = tail call i32 @memblock_start_of_DRAM() #19
  %8 = sub i32 %6, %7
  %9 = tail call i32 @memblock_remove(i32 noundef %5, i32 noundef %8) #19
  br label %10

10:                                               ; preds = %4, %1
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %12 = shl i32 %11, 12
  %13 = zext i32 %12 to i64
  %14 = call i64 @memparse(ptr noundef %0, ptr noundef nonnull %2) #19
  %15 = load ptr, ptr %2, align 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 64
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %15, i32 1
  %20 = call i64 @memparse(ptr noundef %19, ptr noundef null) #19
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi i64 [ %20, %18 ], [ %13, %10 ]
  %23 = call i32 @arm_add_memory(i64 noundef %22, i64 noundef %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @customize_machine() #1 section ".init.text" {
  %1 = load ptr, ptr @machine_desc, align 4
  %2 = getelementptr inbounds %struct.machine_desc, ptr %1, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void %3() #19
  br label %6

6:                                                ; preds = %5, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_machine_late() #1 section ".init.text" {
  %1 = load ptr, ptr @machine_desc, align 4
  %2 = getelementptr inbounds %struct.machine_desc, ptr %1, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void %3() #19
  br label %6

6:                                                ; preds = %5, %0
  %7 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.18, ptr noundef null) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @of_property_read_string(ptr noundef nonnull %7, ptr noundef nonnull @.str.19, ptr noundef nonnull @system_serial) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store ptr null, ptr @system_serial, align 4
  br label %16

13:                                               ; preds = %9, %6
  %14 = load ptr, ptr @system_serial, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %12
  %17 = load i32, ptr @system_serial_high, align 4
  %18 = load i32, ptr @system_serial_low, align 4
  %19 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20, i32 noundef %17, i32 noundef %18) #19
  store ptr %19, ptr @system_serial, align 4
  br label %20

20:                                               ; preds = %16, %13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @hyp_mode_check() local_unnamed_addr #1 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %4(ptr noundef nonnull @__boot_cpu_mode, i32 noundef 4) #19
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @__boot_cpu_mode to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @__boot_cpu_mode, i32 1) to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(i32 noundef %5, i32 noundef %6) #19
  br label %10

10:                                               ; preds = %9, %3, %0
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %11(ptr noundef nonnull @__boot_cpu_mode, i32 noundef 4) #19
  %12 = load i32, ptr @__boot_cpu_mode, align 4
  %13 = and i32 %12, -2147483617
  %14 = icmp eq i32 %13, 26
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #20
  br label %22

17:                                               ; preds = %10
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = and i32 %12, 31
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %20) #20
  br label %22

22:                                               ; preds = %19, %17, %15
  %23 = phi ptr [ @.str.13, %19 ], [ @.str.11, %15 ], [ @.str.14, %17 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %23) #20
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @setup_arch(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 section ".init.text" {
  %2 = load i32, ptr @__atags_pointer, align 4
  %3 = icmp eq i32 %2, 0
  %4 = and i32 %2, 1048575
  %5 = or i32 %4, -8388608
  %6 = inttoptr i32 %5 to ptr
  %7 = select i1 %3, ptr null, ptr %6
  tail call fastcc void @setup_processor() #22
  br i1 %3, label %32, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @setup_machine_fdt(ptr noundef nonnull %7) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @__atags_pointer, align 4
  %13 = getelementptr inbounds %struct.fdt_header, ptr %7, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %20, %16
  %22 = getelementptr i8, ptr %13, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %21, %25
  %27 = getelementptr i8, ptr %13, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  %31 = tail call i32 @memblock_reserve(i32 noundef %12, i32 noundef %30) #19
  br label %43

32:                                               ; preds = %8, %1
  %33 = load i32, ptr @__machine_arch_type, align 4
  %34 = tail call ptr @setup_machine_tags(ptr noundef %7, i32 noundef %33) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.15) #22
  %37 = load i32, ptr @__machine_arch_type, align 4
  %38 = load i32, ptr @__atags_pointer, align 4
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.16, i32 noundef %37, i32 noundef %38) #22
  %39 = load i32, ptr @__atags_pointer, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.17, i32 noundef 16, ptr noundef %7) #22
  br label %42

42:                                               ; preds = %41, %36
  tail call void @dump_machine_table() #22
  unreachable

43:                                               ; preds = %32, %11
  %44 = phi ptr [ %9, %11 ], [ %34, %32 ]
  store ptr %44, ptr @machine_desc, align 4
  %45 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %46, ptr @machine_name, align 4
  tail call void (ptr, ...) @dump_stack_set_arch_desc(ptr noundef nonnull @.str, ptr noundef %46) #19
  %47 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 %48, ptr @reboot_mode, align 4
  br label %51

51:                                               ; preds = %50, %43
  tail call void @setup_initial_init_mm(ptr noundef nonnull @_text, ptr noundef nonnull @_etext, ptr noundef nonnull @_edata, ptr noundef nonnull @_end) #19
  %52 = tail call i32 @strlcpy(ptr noundef nonnull @cmd_line, ptr noundef nonnull @boot_command_line, i32 noundef 1024) #19
  store ptr @cmd_line, ptr %0, align 4
  tail call void @early_fixmap_init() #20
  tail call void @early_ioremap_init() #19
  tail call void @parse_early_param() #20
  tail call void @early_mm_init(ptr noundef nonnull %44) #19
  tail call void @setup_dma_zone(ptr noundef nonnull %44) #19
  tail call void @efi_init() #19
  tail call void @adjust_lowmem_bounds() #19
  tail call void @arm_memblock_init(ptr noundef nonnull %44) #19
  tail call void @adjust_lowmem_bounds() #19
  tail call void @early_ioremap_reset() #19
  tail call void @paging_init(ptr noundef nonnull %44) #19
  tail call fastcc void @request_standard_resources(ptr noundef nonnull %44) #22
  %53 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 26
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  store ptr %54, ptr @__arm_pm_restart, align 4
  %57 = tail call i32 @register_restart_handler(ptr noundef nonnull @arm_restart_nb) #19
  br label %58

58:                                               ; preds = %56, %51
  tail call void @unflatten_device_tree() #19
  tail call void @arm_dt_init_cpu_maps() #20
  %59 = tail call i32 @psci_dt_init() #20
  %60 = load i32, ptr @smp_on_up, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 14
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call zeroext i1 %64() #19
  br i1 %67, label %76, label %68

68:                                               ; preds = %66, %62
  %69 = tail call zeroext i1 @psci_smp_available() #19
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 13
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70, %68
  %75 = phi ptr [ @psci_smp_ops, %68 ], [ %72, %70 ]
  tail call void @smp_set_ops(ptr noundef nonnull %75) #19
  br label %76

76:                                               ; preds = %74, %70, %66
  tail call void @smp_init_cpus() #19
  tail call fastcc void @smp_build_mpidr_hash() #22
  %77 = load i32, ptr @smp_on_up, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %58
  tail call void @hyp_mode_check() #22
  br label %80

80:                                               ; preds = %79, %76
  tail call fastcc void @reserve_crashkernel() #22
  %81 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 25
  %82 = load ptr, ptr %81, align 4
  store ptr %82, ptr @handle_arch_irq, align 4
  %83 = getelementptr inbounds %struct.machine_desc, ptr %44, i32 0, i32 20
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  tail call void %84() #19
  br label %87

87:                                               ; preds = %86, %80
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @setup_processor() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #21, !srcloc !16
  %2 = tail call ptr @lookup_processor(i32 noundef %1)
  %3 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  store ptr %4, ptr @cpu_name, align 4
  %5 = and i32 %1, 585728
  switch i32 %5, label %10 [
    i32 0, label %34
    i32 28672, label %6
  ]

6:                                                ; preds = %0
  %7 = and i32 %1, 8388608
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 3
  br label %34

10:                                               ; preds = %0
  %11 = and i32 %1, 524288
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = lshr i32 %1, 16
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 0
  %17 = add nuw nsw i32 %15, 1
  %18 = select i1 %16, i32 0, i32 %17
  br label %34

19:                                               ; preds = %10
  %20 = and i32 %1, 983040
  %21 = icmp eq i32 %20, 983040
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{memory}"() #19, !srcloc !17
  %24 = and i32 %23, 15
  %25 = icmp ugt i32 %24, 2
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = and i32 %23, 240
  %28 = icmp ugt i32 %27, 47
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = icmp eq i32 %24, 2
  %31 = icmp eq i32 %27, 32
  %32 = or i1 %30, %31
  %33 = select i1 %32, i32 8, i32 0
  br label %34

34:                                               ; preds = %29, %26, %22, %19, %13, %6, %0
  %35 = phi i32 [ %9, %6 ], [ %5, %0 ], [ 9, %26 ], [ 9, %22 ], [ 0, %19 ], [ %18, %13 ], [ %33, %29 ]
  store i32 %35, ptr @__cpu_architecture, align 4
  %36 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) @processor, ptr noundef align 4 dereferenceable(52) %37, i32 52, i1 false) #19
  %38 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) @cpu_tlb, ptr noundef align 4 dereferenceable(12) %39, i32 12, i1 false)
  %40 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = load i64, ptr %41, align 4
  store i64 %42, ptr @cpu_user, align 4
  %43 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) @cpu_cache, ptr noundef align 4 dereferenceable(44) %44, i32 44, i1 false)
  %45 = icmp eq i32 %35, 0
  br i1 %45, label %46, label %47, !prof !8

46:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #19, !srcloc !9
  unreachable

47:                                               ; preds = %34
  %48 = and i32 %1, 15
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr [17 x ptr], ptr @proc_arch, i32 0, i32 %35
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #21, !srcloc !18
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %49, i32 noundef %1, i32 noundef %48, ptr noundef %51, i32 noundef %52) #20
  %54 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4), i32 noundef 65, ptr noundef nonnull @.str.22, ptr noundef %55, i32 noundef 108)
  %57 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @elf_platform, i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef %58, i32 noundef 108)
  %60 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr @elf_hwcap, align 4
  tail call fastcc void @cpuid_init_hwcaps() #22
  tail call fastcc void @patch_aeabi_idiv() #22
  %62 = getelementptr inbounds %struct.proc_info_list, ptr %2, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  tail call void @init_default_cache_policy(i32 noundef %63) #19
  tail call void @erratum_a15_798181_init() #19
  tail call fastcc void @elf_hwcap_fixup() #22
  tail call fastcc void @cacheid_init() #22
  tail call void @cpu_init()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @setup_machine_fdt(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @setup_machine_tags(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_stack_set_arch_desc(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_initial_init_mm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @early_fixmap_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_init() local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @parse_early_param() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_mm_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_dma_zone(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @efi_init() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_lowmem_bounds() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_memblock_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_reset() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @paging_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @request_standard_resources(ptr nocapture noundef readonly %0) unnamed_addr #1 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @_text to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  store i32 %5, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1), align 4
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @__init_begin, i32 0, i32 -1) to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  store i32 %6, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1, i32 1), align 4
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @_sdata to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  store i32 %7, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2), align 4
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @_end, i32 0, i32 -1) to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  store i32 %8, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2, i32 1), align 4
  store i64 0, ptr %4, align 8
  call void @__next_mem_range(ptr noundef nonnull %4, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #19
  %9 = load i64, ptr %4, align 8
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %66, label %11

11:                                               ; preds = %63, %1
  %12 = load i32, ptr %3, align 4
  %13 = add i32 %12, -1
  %14 = load i32, ptr %2, align 4
  %15 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %16 = trunc i64 %15 to i32
  %17 = add i32 %14, %16
  %18 = icmp ne i64 %15, 0
  %19 = icmp ne i32 %17, -1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %33

21:                                               ; preds = %11
  %22 = call ptr @memblock_alloc_try_nid(i32 noundef 32, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.request_standard_resources, i32 noundef 32) #23
  unreachable

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 2
  store ptr @.str.51, ptr %26, align 4
  store i32 %17, ptr %22, align 4
  %27 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %28 = trunc i64 %27 to i32
  %29 = add i32 %13, %28
  %30 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 3
  store i32 -2147483136, ptr %31, align 4
  %32 = call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %22) #19
  br label %33

33:                                               ; preds = %25, %11
  %34 = call ptr @memblock_alloc_try_nid(i32 noundef 32, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.request_standard_resources, i32 noundef 32) #23
  unreachable

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 2
  store ptr @.str.52, ptr %38, align 4
  %39 = load i32, ptr %2, align 4
  store i32 %39, ptr %34, align 4
  %40 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1
  store i32 %13, ptr %40, align 4
  %41 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 3
  store i32 -2130705920, ptr %41, align 4
  %42 = call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %34) #19
  %43 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1), align 4
  %44 = load i32, ptr %34, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1, i32 1), align 4
  %48 = load i32, ptr %40, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = call i32 @request_resource(ptr noundef nonnull %34, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 1)) #19
  %52 = load i32, ptr %34, align 4
  br label %53

53:                                               ; preds = %50, %46, %37
  %54 = phi i32 [ %52, %50 ], [ %44, %46 ], [ %44, %37 ]
  %55 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2), align 4
  %56 = icmp ult i32 %55, %54
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2, i32 1), align 4
  %59 = load i32, ptr %40, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 @request_resource(ptr noundef nonnull %34, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 2)) #19
  br label %63

63:                                               ; preds = %61, %57, %53
  call void @__next_mem_range(ptr noundef nonnull %4, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #19
  %64 = load i64, ptr %4, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %11

66:                                               ; preds = %63, %1
  %67 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  store i32 %68, ptr @mem_res, align 4
  %71 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr getelementptr inbounds ([3 x %struct.resource], ptr @mem_res, i32 0, i32 0, i32 1), align 4
  %73 = call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @mem_res) #19
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 8
  %76 = load i8, ptr %75, align 4
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef nonnull @io_res) #19
  %81 = load i8, ptr %75, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i8 [ %81, %79 ], [ %76, %74 ]
  %84 = and i8 %83, 2
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @io_res, i32 0, i32 1)) #19
  %88 = load i8, ptr %75, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi i8 [ %88, %86 ], [ %83, %82 ]
  %91 = and i8 %90, 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef getelementptr inbounds ([3 x %struct.resource], ptr @io_res, i32 0, i32 2)) #19
  br label %95

95:                                               ; preds = %93, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @unflatten_device_tree() local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arm_dt_init_cpu_maps() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @psci_dt_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psci_smp_available() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_init_cpus() local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @smp_build_mpidr_hash() unnamed_addr #1 section ".init.text" {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i32 12, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !10
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, ptr @__cpu_logical_map, align 4
  br label %10

8:                                                ; preds = %10, %0
  %9 = phi i32 [ 0, %0 ], [ %16, %10 ]
  br label %19

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %4, %6 ], [ %17, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %16, %10 ]
  %13 = getelementptr [16 x i32], ptr @__cpu_logical_map, i32 0, i32 %11
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %7, %14
  %16 = or i32 %15, %12
  %17 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #24
  %18 = icmp ult i32 %17, %3
  br i1 %18, label %10, label %8

19:                                               ; preds = %19, %8
  %20 = phi i32 [ 0, %8 ], [ %33, %19 ]
  %21 = shl nuw nsw i32 %20, 3
  %22 = lshr i32 %9, %21
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 0
  %25 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false) #19, !range !19
  %26 = sub nuw nsw i32 32, %25
  %27 = select i1 %24, i32 0, i32 %26
  %28 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true), !range !19
  %29 = select i1 %24, i32 0, i32 %28
  %30 = getelementptr [3 x i32], ptr %1, i32 0, i32 %20
  store i32 %29, ptr %30, align 4
  %31 = sub nsw i32 %27, %29
  %32 = getelementptr [3 x i32], ptr %2, i32 0, i32 %20
  store i32 %31, ptr %32, align 4
  %33 = add nuw nsw i32 %20, 1
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %19

35:                                               ; preds = %19
  %36 = load i32, ptr %1, align 4
  store i32 %36, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1), align 4
  %37 = getelementptr inbounds [3 x i32], ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 8
  %40 = load i32, ptr %2, align 4
  %41 = sub i32 %39, %40
  store i32 %41, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1, i32 1), align 4
  %42 = getelementptr inbounds [3 x i32], ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %43, 16
  %47 = add i32 %40, %45
  %48 = sub i32 %46, %47
  store i32 %48, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 1, i32 2), align 4
  store i32 %9, ptr @mpidr_hash, align 4
  %49 = getelementptr inbounds [3 x i32], ptr %2, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %47, %50
  store i32 %51, ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 0, i32 2), align 4
  %52 = load i32, ptr @__cpu_possible_mask, align 4
  %53 = and i32 %52, 65535
  %54 = tail call i32 @__sw_hweight32(i32 noundef %53) #19
  %55 = shl i32 %54, 2
  %56 = lshr i32 %55, %51
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %35
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #20
  br label %60

60:                                               ; preds = %58, %35
  %61 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %61(ptr noundef nonnull @mpidr_hash, i32 noundef 20) #19
  %62 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mpidr_hash to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  %63 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (%struct.mpidr_hash, ptr @mpidr_hash, i32 1, i32 0) to i32), i32 -2130706432, i32 8454144) #21, !srcloc !15
  %64 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void %64(i32 noundef %62, i32 noundef %63) #19
  br label %67

67:                                               ; preds = %66, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @reserve_crashkernel() unnamed_addr #1 section ".init.text" {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  store i64 0, ptr %1, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 0, ptr %2, align 8, !annotation !10
  %3 = load i32, ptr @max_low_pfn, align 4
  %4 = load i32, ptr @min_low_pfn, align 4
  %5 = sub i32 %3, %4
  %6 = shl i32 %5, 12
  %7 = zext i32 %6 to i64
  %8 = call i32 @parse_crashkernel(ptr noundef nonnull @boot_command_line, i64 noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %0
  %11 = load i64, ptr %2, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %15 = icmp eq i64 %14, 0
  %16 = trunc i64 %14 to i32
  %17 = xor i32 %16, -1
  %18 = select i1 %15, i32 -1, i32 %17
  %19 = load ptr, ptr @high_memory, align 4
  %20 = getelementptr i8, ptr %19, i32 -1
  %21 = ptrtoint ptr %20 to i32
  %22 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %21, i32 -2130706432, i32 8454144) #21, !srcloc !15
  %23 = add i32 %22, 1
  %24 = call i32 @llvm.umin.i32(i32 %18, i32 %23)
  %25 = load i64, ptr %1, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memblock_phys_alloc_range(i32 noundef %26, i32 noundef 134217728, i32 noundef 134217728, i32 noundef %24) #19
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %2, align 8
  %29 = icmp eq i32 %27, 0
  %30 = lshr i32 %27, 20
  br i1 %29, label %31, label %47

31:                                               ; preds = %13
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #20
  br label %73

33:                                               ; preds = %10
  %34 = load i64, ptr %1, align 8
  %35 = add i64 %34, %11
  %36 = trunc i64 %34 to i32
  %37 = trunc i64 %11 to i32
  %38 = trunc i64 %35 to i32
  %39 = call i32 @memblock_phys_alloc_range(i32 noundef %36, i32 noundef 1048576, i32 noundef %37, i32 noundef %38) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load i64, ptr %2, align 8
  %43 = lshr i64 %42, 20
  %44 = trunc i64 %43 to i32
  br label %47

45:                                               ; preds = %33
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #20
  br label %73

47:                                               ; preds = %41, %13
  %48 = phi i32 [ %44, %41 ], [ %30, %13 ]
  %49 = load i64, ptr %1, align 8
  %50 = lshr i64 %49, 20
  %51 = trunc i64 %50 to i32
  %52 = lshr i32 %6, 20
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %51, i32 noundef %48, i32 noundef %52) #20
  %54 = load i64, ptr %2, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr @crashk_res, align 4
  %56 = load i64, ptr %1, align 8
  %57 = add i64 %56, %54
  %58 = trunc i64 %57 to i32
  %59 = add i32 %58, -1
  store i32 %59, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %60 = call i32 @insert_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @crashk_res) #19
  %61 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %47
  %64 = load i64, ptr %2, align 8
  %65 = trunc i64 %64 to i32
  %66 = trunc i64 %61 to i32
  %67 = add i32 %65, %66
  store i32 %67, ptr @reserve_crashkernel.crashk_boot_res, align 4
  %68 = load i64, ptr %1, align 8
  %69 = trunc i64 %68 to i32
  %70 = add i32 %67, -1
  %71 = add i32 %70, %69
  store i32 %71, ptr getelementptr inbounds (%struct.resource, ptr @reserve_crashkernel.crashk_boot_res, i32 0, i32 1), align 4
  %72 = call i32 @insert_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @reserve_crashkernel.crashk_boot_res) #19
  br label %73

73:                                               ; preds = %63, %47, %45, %31, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @topology_init() #1 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %16

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %13, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpu_data to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @platform_can_hotplug_cpu(i32 noundef %5) #19
  %11 = getelementptr inbounds %struct.cpu, ptr %9, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @register_cpu(ptr noundef %9, i32 noundef %5) #19
  %13 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #24
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %4, label %16

16:                                               ; preds = %4, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_cpu_init() #1 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.62, ptr noundef null) #19
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @c_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp slt i64 %3, 1
  %5 = select i1 %4, ptr inttoptr (i32 1 to ptr), ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @c_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #12 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal noalias ptr @c_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @c_show(ptr noundef %0, ptr nocapture noundef readnone %1) #7 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #24
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %101

6:                                                ; preds = %97, %2
  %7 = phi i32 [ %98, %97 ], [ %3, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %7) #19
  %8 = load i32, ptr @smp_on_up, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @cpu_data to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.cpuinfo_arm, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  br label %19

17:                                               ; preds = %6
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #21, !srcloc !16
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %16, %10 ], [ %18, %17 ]
  %21 = load ptr, ptr @cpu_name, align 4
  %22 = and i32 %20, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef %21, i32 noundef %22, ptr noundef nonnull @elf_platform) #19
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @cpu_data to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.cpuinfo_arm, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %28, 5000
  %30 = udiv i32 %28, 50
  %31 = urem i32 %30, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %29, i32 noundef %31) #19
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.66) #19
  %32 = load i32, ptr @elf_hwcap, align 4
  br label %33

33:                                               ; preds = %42, %19
  %34 = phi i32 [ %32, %19 ], [ %43, %42 ]
  %35 = phi ptr [ @.str.78, %19 ], [ %46, %42 ]
  %36 = phi i32 [ 0, %19 ], [ %44, %42 ]
  %37 = shl nuw i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %35) #19
  %41 = load i32, ptr @elf_hwcap, align 4
  br label %42

42:                                               ; preds = %40, %33
  %43 = phi i32 [ %34, %33 ], [ %41, %40 ]
  %44 = add nuw nsw i32 %36, 1
  %45 = getelementptr [23 x ptr], ptr @hwcap_str, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq i32 %44, 22
  br i1 %47, label %48, label %33

48:                                               ; preds = %42
  %49 = load i32, ptr @elf_hwcap2, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.100) #19
  %53 = load i32, ptr @elf_hwcap2, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %49, %48 ], [ %53, %52 ]
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.101) #19
  %59 = load i32, ptr @elf_hwcap2, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %59, %58 ], [ %55, %54 ]
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.102) #19
  %65 = load i32, ptr @elf_hwcap2, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %65, %64 ], [ %61, %60 ]
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.103) #19
  %71 = load i32, ptr @elf_hwcap2, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %71, %70 ], [ %67, %66 ]
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.104) #19
  br label %77

77:                                               ; preds = %76, %72
  %78 = lshr i32 %20, 24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %78) #19
  %79 = load i32, ptr @__cpu_architecture, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82, !prof !8

81:                                               ; preds = %77
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #19, !srcloc !9
  unreachable

82:                                               ; preds = %77
  %83 = getelementptr [17 x ptr], ptr @proc_arch, i32 0, i32 %79
  %84 = load ptr, ptr %83, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef %84) #19
  %85 = and i32 %20, 585728
  switch i32 %85, label %88 [
    i32 0, label %86
    i32 28672, label %89
  ]

86:                                               ; preds = %82
  %87 = lshr i32 %20, 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %87) #19
  br label %97

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %82
  %90 = phi i32 [ 20, %88 ], [ 16, %82 ]
  %91 = phi i32 [ 15, %88 ], [ 127, %82 ]
  %92 = phi ptr [ @.str.72, %88 ], [ @.str.71, %82 ]
  %93 = lshr i32 %20, %90
  %94 = and i32 %93, %91
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %92, i32 noundef %94) #19
  %95 = lshr i32 %20, 4
  %96 = and i32 %95, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %96) #19
  br label %97

97:                                               ; preds = %89, %86
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %22) #19
  %98 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_online_mask) #24
  %99 = load i32, ptr @nr_cpu_ids, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %6, label %101

101:                                              ; preds = %97, %2
  %102 = load ptr, ptr @machine_name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %102) #19
  %103 = load i32, ptr @system_rev, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %103) #19
  %104 = load ptr, ptr @system_serial, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %104) #19
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_remove(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #15

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cpuid_init_hwcaps() unnamed_addr #1 section ".init.text" {
  %1 = load i32, ptr @__cpu_architecture, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #19, !srcloc !9
  unreachable

4:                                                ; preds = %0
  %5 = icmp slt i32 %1, 9
  br i1 %5, label %82, label %6

6:                                                ; preds = %4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 0", "=r,~{memory}"() #19, !srcloc !20
  %8 = lshr i32 %7, 24
  %9 = and i32 %8, 15
  %10 = icmp ugt i32 %9, 7
  %11 = select i1 %10, i32 -16, i32 0
  %12 = or i32 %11, %9
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i32, ptr @elf_hwcap, align 4
  %16 = or i32 %15, 131072
  br label %21

17:                                               ; preds = %6
  %18 = icmp eq i32 %12, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = load i32, ptr @elf_hwcap, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %16, %14 ]
  %23 = or i32 %22, 262144
  store i32 %23, ptr @elf_hwcap, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{memory}"() #19, !srcloc !21
  %26 = and i32 %25, 15
  %27 = icmp ugt i32 %26, 7
  %28 = select i1 %27, i32 -16, i32 0
  %29 = or i32 %28, %26
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, ptr @elf_hwcap, align 4
  %33 = or i32 %32, 1048576
  store i32 %33, ptr @elf_hwcap, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 5", "=r,~{memory}"() #19, !srcloc !22
  %36 = lshr i32 %35, 4
  %37 = and i32 %36, 15
  %38 = icmp ugt i32 %37, 7
  %39 = select i1 %38, i32 -16, i32 0
  %40 = or i32 %39, %37
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, ptr @elf_hwcap2, align 4
  %44 = or i32 %43, 2
  br label %49

45:                                               ; preds = %34
  %46 = icmp eq i32 %40, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i32, ptr @elf_hwcap2, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i32 [ %48, %47 ], [ %44, %42 ]
  %51 = or i32 %50, 1
  store i32 %51, ptr @elf_hwcap2, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = lshr i32 %35, 8
  %54 = and i32 %53, 15
  %55 = icmp ugt i32 %54, 7
  %56 = select i1 %55, i32 -16, i32 0
  %57 = or i32 %56, %54
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, ptr @elf_hwcap2, align 4
  %61 = or i32 %60, 4
  store i32 %61, ptr @elf_hwcap2, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = lshr i32 %35, 12
  %64 = and i32 %63, 15
  %65 = icmp ugt i32 %64, 7
  %66 = select i1 %65, i32 -16, i32 0
  %67 = or i32 %66, %64
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, ptr @elf_hwcap2, align 4
  %71 = or i32 %70, 8
  store i32 %71, ptr @elf_hwcap2, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = lshr i32 %35, 16
  %74 = and i32 %73, 15
  %75 = icmp ugt i32 %74, 7
  %76 = select i1 %75, i32 -16, i32 0
  %77 = or i32 %76, %74
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, ptr @elf_hwcap2, align 4
  %81 = or i32 %80, 16
  store i32 %81, ptr @elf_hwcap2, align 4
  br label %82

82:                                               ; preds = %79, %72, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @patch_aeabi_idiv() unnamed_addr #1 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  %2 = load i32, ptr @elf_hwcap, align 4
  %3 = and i32 %2, 131072
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #20
  store i32 and (i32 ptrtoint (ptr @__aeabi_uidiv to i32), i32 -2), ptr %1, align 4
  call void asm "", "=*imr,0"(ptr nonnull elementtype(i32) %1, i32 and (i32 ptrtoint (ptr @__aeabi_uidiv to i32), i32 -2)) #19, !srcloc !23
  %7 = load i32, ptr %1, align 4
  %8 = inttoptr i32 %7 to ptr
  store i32 -416222960, ptr %8, align 4
  %9 = load i32, ptr %1, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr i32, ptr %10, i32 1
  store i32 -516948194, ptr %11, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %13 = load i32, ptr %1, align 4
  %14 = add i32 %13, 8
  call void %12(i32 noundef %13, i32 noundef %14) #19
  store i32 and (i32 ptrtoint (ptr @__aeabi_idiv to i32), i32 -2), ptr %1, align 4
  call void asm "", "=*imr,0"(ptr nonnull elementtype(i32) %1, i32 and (i32 ptrtoint (ptr @__aeabi_idiv to i32), i32 -2)) #19, !srcloc !24
  %15 = load i32, ptr %1, align 4
  %16 = inttoptr i32 %15 to ptr
  store i32 -418320112, ptr %16, align 4
  %17 = load i32, ptr %1, align 4
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr i32, ptr %18, i32 1
  store i32 -516948194, ptr %19, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %21 = load i32, ptr %1, align 4
  %22 = add i32 %21, 8
  call void %20(i32 noundef %21, i32 noundef %22) #19
  br label %23

23:                                               ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_default_cache_policy(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @erratum_a15_798181_init() local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @elf_hwcap_fixup() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #21, !srcloc !16
  %2 = and i32 %1, -13565968
  %3 = icmp eq i32 %2, 1090564960
  br i1 %3, label %31, label %4

4:                                                ; preds = %0
  %5 = and i32 %1, 983040
  %6 = icmp eq i32 %5, 983040
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 3", "=r,~{memory}"() #19, !srcloc !25
  %9 = lshr i32 %8, 12
  %10 = and i32 %9, 15
  %11 = icmp ugt i32 %10, 7
  %12 = select i1 %11, i32 -16, i32 0
  %13 = or i32 %12, %10
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %31, label %15

15:                                               ; preds = %7
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 3", "=r,~{memory}"() #19, !srcloc !26
  %17 = lshr i32 %16, 12
  %18 = and i32 %17, 15
  %19 = icmp ugt i32 %18, 7
  %20 = select i1 %19, i32 -16, i32 0
  %21 = or i32 %20, %18
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c0, c2, 4", "=r,~{memory}"() #19, !srcloc !27
  %25 = lshr i32 %24, 20
  %26 = and i32 %25, 15
  %27 = icmp ugt i32 %26, 7
  %28 = select i1 %27, i32 -16, i32 0
  %29 = or i32 %28, %26
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %23, %7, %0
  %32 = phi i32 [ -32769, %0 ], [ -2, %23 ], [ -2, %7 ]
  %33 = load i32, ptr @elf_hwcap, align 4
  %34 = and i32 %33, %32
  store i32 %34, ptr @elf_hwcap, align 4
  br label %35

35:                                               ; preds = %31, %23, %15, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cacheid_init() unnamed_addr #1 section ".init.text" {
  %1 = load i32, ptr @__cpu_architecture, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #19, !srcloc !9
  unreachable

4:                                                ; preds = %0
  %5 = icmp ugt i32 %1, 7
  br i1 %5, label %6, label %51

6:                                                ; preds = %4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 1", "=r,~{cc}"() #21, !srcloc !28
  %8 = icmp eq i32 %1, 10
  %9 = and i32 %7, 983055
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %51, label %12

12:                                               ; preds = %6
  %13 = and i32 %7, -536870912
  %14 = icmp eq i32 %13, -2147483648
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  store i32 2, ptr @cacheid, align 4
  %16 = trunc i32 %7 to i16
  %17 = and i16 %16, -16384
  switch i16 %17, label %25 [
    i16 16384, label %18
    i16 -16384, label %24
  ]

18:                                               ; preds = %15
  store i32 10, ptr @cacheid, align 4
  br label %25

19:                                               ; preds = %12
  %20 = and i32 %7, 8388608
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 4
  store i32 %22, ptr @cacheid, align 4
  %23 = and i32 %7, 2048
  br label %35

24:                                               ; preds = %15
  store i32 34, ptr @cacheid, align 4
  br label %58

25:                                               ; preds = %18, %15
  tail call void asm sideeffect "mcr p15, 2, $0, c0, c0, 0", "r"(i32 1) #19, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !30
  %26 = tail call i32 asm sideeffect "mrc p15, 1, $0, c0, c0, 0", "=r"() #19, !srcloc !31
  %27 = and i32 %26, 7
  %28 = shl nuw nsw i32 16, %27
  %29 = lshr i32 %26, 13
  %30 = and i32 %29, 32767
  %31 = add nuw nsw i32 %30, 1
  %32 = mul nuw nsw i32 %31, %28
  %33 = icmp ugt i32 %32, 4096
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %25, %19
  %36 = phi i32 [ %23, %19 ], [ %34, %25 ]
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr @cacheid, align 4
  br i1 %37, label %41, label %39

39:                                               ; preds = %35
  %40 = or i32 %38, 16
  store i32 %40, ptr @cacheid, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %40, %39 ], [ %38, %35 ]
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = and i32 %42, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = and i32 %42, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %58

51:                                               ; preds = %6, %4
  %52 = phi i32 [ 0, %6 ], [ 1, %4 ]
  store i32 %52, ptr @cacheid, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %42, %48 ], [ %52, %51 ]
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.46, ptr @.str.49
  br label %58

58:                                               ; preds = %53, %48, %45, %41, %24
  %59 = phi i32 [ %42, %41 ], [ %42, %45 ], [ %54, %53 ], [ %42, %48 ], [ 34, %24 ]
  %60 = phi ptr [ @.str.47, %41 ], [ @.str.44, %45 ], [ %57, %53 ], [ @.str.48, %48 ], [ @.str.48, %24 ]
  %61 = and i32 %59, 2
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, ptr @.str.46, ptr @.str.45
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %63, ptr noundef nonnull %60) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_uidiv() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_idiv() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_restart(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #7 {
  %4 = load ptr, ptr @__arm_pm_restart, align 4
  tail call void %4(i32 noundef %1, ptr noundef %2) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @parse_crashkernel(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_resource(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_can_hotplug_cpu(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cpu(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153785011, i64 2153785499, i64 2153785048, i64 2153785104, i64 2153785138, i64 2153785162, i64 2153785203, i64 2153785224, i64 2153785252, i64 2153785286}
!10 = !{!"auto-init"}
!11 = !{i64 2153797774, i64 2153798262, i64 2153797811, i64 2153797867, i64 2153797901, i64 2153797925, i64 2153797966, i64 2153797987, i64 2153798015, i64 2153798049}
!12 = !{i64 425156}
!13 = !{i64 12900, i64 12917, i64 12940, i64 12959, i64 12981, i64 13004, i64 13023, i64 13045, i64 13068, i64 13087, i64 13109, i64 13132, i64 13151}
!14 = !{i64 2153475638}
!15 = !{i64 2148886579, i64 2148886602, i64 2148886634, i64 2148886666, i64 2148886704, i64 2148886734}
!16 = !{i64 2153473024}
!17 = !{i64 2153784533}
!18 = !{i64 5977202}
!19 = !{i32 0, i32 33}
!20 = !{i64 2153795340}
!21 = !{i64 2153795611}
!22 = !{i64 2153795798}
!23 = !{i64 9976}
!24 = !{i64 10179}
!25 = !{i64 2153796316}
!26 = !{i64 2153796568}
!27 = !{i64 2153796820}
!28 = !{i64 2153473428}
!29 = !{i64 6019079}
!30 = !{i64 2153785827}
!31 = !{i64 6019218}
