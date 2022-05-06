; ModuleID = '/llk/IR/drivers/firmware/efi/efi.c_pt.bc'
source_filename = "../drivers/firmware/efi/efi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efi:\09\09\09\09\09"
module asm "\09.asciz \09\22efi\22\09\09\09\09\09"
module asm "__kstrtabns_efi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.0 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.efi_config_table_type_t = type { %struct.guid_t, ptr, [16 x i8] }
%struct.guid_t = type { [16 x i8] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.efivar_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.efivars = type { ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%union.efi_config_table_t = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.guid_t, ptr }
%struct.linux_efi_random_seed = type { i32, [0 x i8] }
%struct.linux_efi_memreserve = type { i32, %struct.atomic_t, i32, [0 x %struct.anon.70] }
%struct.anon.70 = type { i32, i32 }
%struct.efi_rt_properties_table_t = type { i16, i16, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }

@efi = dso_local global %struct.efi { ptr null, i32 0, i32 16383, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.efi_memory_map zeroinitializer, i32 0 }, section ".data..read_mostly", align 4
@__kstrtab_efi = external dso_local constant [0 x i8], align 1
@__kstrtabns_efi = external dso_local constant [0 x i8], align 1
@__ksymtab_efi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efi to i32), ptr @__kstrtab_efi, ptr @__kstrtabns_efi }, section "___ksymtab+efi", align 4
@efi_rng_seed = dso_local global i32 -1, section ".data..ro_after_init", align 4
@efi_mm = dso_local global { %struct.anon.0, [2 x i32] } { %struct.anon.0 { ptr null, %struct.rb_root zeroinitializer, i64 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, %struct.atomic_t zeroinitializer, %struct.atomic_t { i32 2 }, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 0, %struct.spinlock zeroinitializer, %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @efi_mm, i64 80), ptr getelementptr (i8, ptr @efi_mm, i64 80) } }, %struct.list_head { ptr getelementptr (i8, ptr @efi_mm, i64 88), ptr getelementptr (i8, ptr @efi_mm, i64 88) }, i32 0, i32 0, i32 0, i32 0, %struct.atomic64_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.seqcount zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [42 x i32] zeroinitializer, %struct.mm_rss_stat zeroinitializer, ptr null, %struct.mm_context_t zeroinitializer, i32 0, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.uprobes_state zeroinitializer, %struct.work_struct zeroinitializer, i32 0 }, [2 x i32] zeroinitializer }, align 8
@__setup_str_setup_noefi = internal constant [6 x i8] c"noefi\00", section ".init.rodata", align 1
@__setup_setup_noefi = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_noefi, ptr @setup_noefi, i32 1 }, section ".init.setup", align 4
@disable_runtime = internal unnamed_addr global i1 false, align 1
@__setup_str_parse_efi_cmdline = internal constant [4 x i8] c"efi\00", section ".init.rodata", align 1
@__setup_parse_efi_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_efi_cmdline, ptr @parse_efi_cmdline, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_efi__230_439_efisubsys_init4 = internal global ptr @efisubsys_init, section ".initcall4.init", align 4
@efi_mem_desc_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [35 x i8] c"\013efi: EFI_MEMMAP is not enabled.\0A\00", align 1
@efi_mem_desc_lookup.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\013efi: out_md is null.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\016efi: \00", align 1
@common_tables = internal constant [12 x %struct.efi_config_table_type_t] [%struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"q\E8h\88\F1\E4\D3\11\BC\22\00\80\C7<\88\81" }, ptr getelementptr (i8, ptr @efi, i64 16), [16 x i8] c"ACPI 2.0\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"0-\9D\EB\88-\D3\11\9A\16\00\90'?\C1M" }, ptr getelementptr (i8, ptr @efi, i64 12), [16 x i8] c"ACPI\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"1-\9D\EB\88-\D3\11\9A\16\00\90'?\C1M" }, ptr getelementptr (i8, ptr @efi, i64 20), [16 x i8] c"SMBIOS\00\00\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"D\15\FD\F2\94\97,J\99.\E5\BB\CF \E3\94" }, ptr getelementptr (i8, ptr @efi, i64 24), [16 x i8] c"SMBIOS 3.0\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"c\A2\22\B1a6hO\99)x\F8\B0\D6!\80" }, ptr getelementptr (i8, ptr @efi, i64 28), [16 x i8] c"ESRT\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\1D\91\FA\DC\EB&\9FF\A2 8\B7\DCF\12 " }, ptr @efi_mem_attr_table, [16 x i8] c"MEMATTR\00\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\BC\E5\E1\1C\EB|\F2B\81\E5\8A\AD\F1\80\F5{" }, ptr @efi_rng_seed, [16 x i8] c"RNG\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\B0\9Cy\B7\A2\ECCI\96g\1F\AE\07\B7G\FA" }, ptr getelementptr (i8, ptr @efi, i64 32), [16 x i8] c"TPMEventLog\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\96\D0.\1E\E20TB\BD\89\86;\BE\F8#%" }, ptr getelementptr (i8, ptr @efi, i64 36), [16 x i8] c"TPMFinalLog\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\C6\B0\8E\88\DE\8E\F5O\A8\F0\9A\EE\\\B9w\C2" }, ptr @mem_reserve, [16 x i8] c"MEMRESERVE\00\00\00\00\00\00" }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\8A\91f\EB\EF~*@\84.\93\1D!\C3\8A\E9" }, ptr @rt_prop, [16 x i8] c"RTPROP\00\00\00\00\00\00\00\00\00\00" }, %struct.efi_config_table_type_t zeroinitializer], section ".init.rodata", align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013efi: Could not map UEFI random seed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\015efi: seeding entropy pool\0A\00", align 1
@mem_reserve = internal global i32 -1, section ".init.data", align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"\013efi: Could not map UEFI memreserve entry!\0A\00", align 1
@rt_prop = internal global i32 -1, section ".init.data", align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"\013efi: System table signature incorrect!\0A\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"\013efi: Warning: System table version %d.%02d, expected %d.00 or greater!\0A\00", align 1
@__const.efi_systab_report_header.vendor = private unnamed_addr constant [100 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\016efi: EFI v%u.%.02u by %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"[type=%u\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"[%-*s\00", align 1
@memory_type_name = internal global [15 x [13 x i8]] [[13 x i8] c"Reserved\00\00\00\00\00", [13 x i8] c"Loader Code\00\00", [13 x i8] c"Loader Data\00\00", [13 x i8] c"Boot Code\00\00\00\00", [13 x i8] c"Boot Data\00\00\00\00", [13 x i8] c"Runtime Code\00", [13 x i8] c"Runtime Data\00", [13 x i8] c"Conventional\00", [13 x i8] c"Unusable\00\00\00\00\00", [13 x i8] c"ACPI Reclaim\00", [13 x i8] c"ACPI Mem NVS\00", [13 x i8] c"MMIO\00\00\00\00\00\00\00\00\00", [13 x i8] c"MMIO Port\00\00\00\00", [13 x i8] c"PAL Code\00\00\00\00\00", [13 x i8] c"Persistent\00\00\00"], section ".init.data", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"|attr=0x%016llx]\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"|%3s|%2s|%2s|%2s|%2s|%2s|%2s|%2s|%2s|%3s|%2s|%2s|%2s|%2s]\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"XP\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"RP\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"WP\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"UCE\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"WB\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"WC\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@efi_memreserve_root = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@efi_mem_reserve_persistent_lock = internal global %struct.spinlock zeroinitializer, align 4
@__initcall__kmod_efi__232_1003_efi_memreserve_root_initearly = internal global ptr @efi_memreserve_root_init, section ".initcallearly.init", align 4
@__initcall__kmod_efi__235_1046_register_update_efi_random_seed7 = internal global ptr @register_update_efi_random_seed, section ".initcall7.init", align 4
@efi_rts_wq = dso_local local_unnamed_addr global ptr null, align 4
@efi_kobj = dso_local local_unnamed_addr global ptr null, align 4
@.str.31 = private unnamed_addr constant [33 x i8] c"\014efi: need at least one option\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"noruntime\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"nosoftreserve\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"efi_rts_wq\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"\013efi: Creating efi_rts_wq failed, EFI runtime services disabled.\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"rtc-efi\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"efi\00", align 1
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = private unnamed_addr constant [43 x i8] c"\013efi: efi: Firmware registration failed.\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"efivars\00", align 1
@efi_subsys_attr_group = internal constant %struct.attribute_group { ptr null, ptr @efi_attr_is_visible, ptr null, ptr @efi_subsys_attrs, ptr null }, align 4
@.str.42 = private unnamed_addr constant [58 x i8] c"\013efi: efi: Sysfs attribute export failed with error %d.\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"\013efi: efivars: Subsystem registration failed.\0A\00", align 1
@generic_ops = internal global %struct.efivar_operations zeroinitializer, align 4
@generic_efivars = internal global %struct.efivars zeroinitializer, align 4
@efi_subsys_attrs = internal global [6 x ptr] [ptr @efi_attr_systab, ptr @efi_attr_fw_platform_size, ptr @efi_attr_fw_vendor, ptr @efi_attr_runtime, ptr @efi_attr_config_table, ptr null], align 4
@efi_attr_systab = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.44, i16 256 }, ptr @systab_show, ptr null }, align 4
@efi_attr_fw_platform_size = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @fw_platform_size_show, ptr null }, align 4
@efi_attr_fw_vendor = extern_weak dso_local global %struct.kobj_attribute, align 4
@efi_attr_runtime = extern_weak dso_local global %struct.kobj_attribute, align 4
@efi_attr_config_table = extern_weak dso_local global %struct.kobj_attribute, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"systab\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"ACPI20=0x%lx\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"ACPI=0x%lx\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"SMBIOS3=0x%lx\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"SMBIOS=0x%lx\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"fw_platform_size\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"boot_services_code%d\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"boot_services_data%d\00", align 1
@.str.53 = private unnamed_addr constant [81 x i8] c"\014efi: More then %d EFI boot service segments, only showing first %d in debugfs\0A\00", align 1
@debugfs_blob = internal global [32 x %struct.debugfs_blob_wrapper] zeroinitializer, align 4
@.str.54 = private unnamed_addr constant [12 x i8] c"\01c%s=0x%lx \00", align 1
@efi_mem_attr_table = external dso_local global i32, align 4
@.str.55 = private unnamed_addr constant [43 x i8] c"\013efi: Could not map the firmware vendor!\0A\00", align 1
@efi_memreserve_map_root.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"drivers/firmware/efi/efi.c\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@efi_random_seed_nb = internal global %struct.notifier_block { ptr @update_efi_random_seed, ptr null, i32 0 }, align 4
@kexec_in_progress = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_efi__230_439_efisubsys_init4, ptr @__initcall__kmod_efi__232_1003_efi_memreserve_root_initearly, ptr @__initcall__kmod_efi__235_1046_register_update_efi_random_seed7, ptr @__ksymtab_efi, ptr @__setup_parse_efi_cmdline, ptr @__setup_setup_noefi], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @setup_noefi(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i1 true, ptr @disable_runtime, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efi_runtime_disabled() local_unnamed_addr #1 {
  %1 = load i1, ptr @disable_runtime, align 1
  ret i1 %1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__efi_soft_reserve_enabled() local_unnamed_addr #2 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %2 = and i32 %1, 2048
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @parse_efi_cmdline(ptr noundef %0) #3 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #21
  br label %17

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #22
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_set_bit(i32 noundef 8, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #22
  br label %8

8:                                                ; preds = %7, %5
  %9 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.33) #22
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store i1 true, ptr @disable_runtime, align 1
  br label %11

11:                                               ; preds = %10, %8
  %12 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #22
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i1 false, ptr @disable_runtime, align 1
  br label %14

14:                                               ; preds = %13, %11
  %15 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.35) #22
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @_set_bit(i32 noundef 11, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #22
  br label %17

17:                                               ; preds = %16, %14, %3
  %18 = phi i32 [ -22, %3 ], [ 0, %16 ], [ 0, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i16 @efi_attr_is_visible(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  ret i16 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efisubsys_init() #3 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = alloca %struct.platform_device_info, align 8
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %87, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.36, i32 noundef 655362, i32 noundef 1) #22
  store ptr %15, ptr @efi_rts_wq, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #21
  tail call void @_clear_bit(i32 noundef 3, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #22
  store i32 0, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  br label %87

19:                                               ; preds = %14
  %20 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %21 = and i32 %20, 15
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #22
  %24 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #22
  store ptr @.str.38, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %25, i8 0, i64 20, i1 false) #22
  %26 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #22
  br label %27

27:                                               ; preds = %23, %19, %11
  %28 = load ptr, ptr @firmware_kobj, align 4
  %29 = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.39, ptr noundef %28) #22
  store ptr %29, ptr @efi_kobj, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #21
  %33 = load ptr, ptr @efi_rts_wq, align 4
  call void @destroy_workqueue(ptr noundef %33) #22
  br label %87

34:                                               ; preds = %27
  %35 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %36 = and i32 %35, 48
  %37 = icmp eq i32 %36, 48
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 15), align 4
  store ptr %39, ptr @generic_ops, align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 16), align 4
  store ptr %40, ptr getelementptr inbounds (%struct.efivar_operations, ptr @generic_ops, i32 0, i32 1), align 4
  store ptr @efi_query_variable_store, ptr getelementptr inbounds (%struct.efivar_operations, ptr @generic_ops, i32 0, i32 4), align 4
  %41 = and i32 %35, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 17), align 4
  store ptr %44, ptr getelementptr inbounds (%struct.efivar_operations, ptr @generic_ops, i32 0, i32 2), align 4
  %45 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 18), align 4
  store ptr %45, ptr getelementptr inbounds (%struct.efivar_operations, ptr @generic_ops, i32 0, i32 3), align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = call i32 @efivars_register(ptr noundef nonnull @generic_efivars, ptr noundef nonnull @generic_ops, ptr noundef nonnull %29) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #22
  %50 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #22
  store ptr @.str.41, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %51, i8 0, i64 20, i1 false) #22
  %52 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #22
  %53 = load ptr, ptr @efi_kobj, align 4
  br label %54

54:                                               ; preds = %49, %34
  %55 = phi ptr [ %53, %49 ], [ %29, %34 ]
  %56 = call i32 @sysfs_create_group(ptr noundef %55, ptr noundef nonnull @efi_subsys_attr_group) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %56) #21
  br label %76

60:                                               ; preds = %54
  %61 = load ptr, ptr @efi_kobj, align 4
  %62 = call i32 @sysfs_create_mount_point(ptr noundef %61, ptr noundef nonnull @.str.41) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #21
  %66 = load ptr, ptr @efi_kobj, align 4
  call void @sysfs_remove_group(ptr noundef %66, ptr noundef nonnull @efi_subsys_attr_group) #22
  br label %76

67:                                               ; preds = %60
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %69 = and i32 %68, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %73 = and i32 %72, 4096
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  call fastcc void @efi_debugfs_init() #23
  br label %87

76:                                               ; preds = %64, %58
  %77 = phi i32 [ %56, %58 ], [ %62, %64 ]
  %78 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %79 = and i32 %78, 48
  %80 = icmp eq i32 %79, 48
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @efivars_unregister(ptr noundef nonnull @generic_efivars) #22
  br label %83

83:                                               ; preds = %81, %76, %46
  %84 = phi i32 [ %47, %46 ], [ %77, %81 ], [ %77, %76 ]
  %85 = load ptr, ptr @efi_kobj, align 4
  call void @kobject_put(ptr noundef %85) #22
  %86 = load ptr, ptr @efi_rts_wq, align 4
  call void @destroy_workqueue(ptr noundef %86) #22
  br label %87

87:                                               ; preds = %83, %75, %71, %67, %31, %17, %7
  %88 = phi i32 [ %84, %83 ], [ -12, %31 ], [ 0, %17 ], [ 0, %7 ], [ 0, %75 ], [ 0, %71 ], [ 0, %67 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_mem_desc_lookup(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #4 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i1, ptr @efi_mem_desc_lookup.__already_done, align 1
  br i1 %7, label %42, label %8, !prof !8

8:                                                ; preds = %6
  store i1 true, ptr @efi_mem_desc_lookup.__already_done, align 1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21
  br label %42

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = load i1, ptr @efi_mem_desc_lookup.__already_done.2, align 1
  br i1 %13, label %42, label %14, !prof !8

14:                                               ; preds = %12
  store i1 true, ptr @efi_mem_desc_lookup.__already_done.2, align 1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #21
  br label %42

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %20 = icmp ne ptr %17, null
  %21 = getelementptr i8, ptr %17, i32 %18
  %22 = icmp ule ptr %21, %19
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %42

24:                                               ; preds = %37, %16
  %25 = phi ptr [ %39, %37 ], [ %21, %16 ]
  %26 = phi ptr [ %25, %37 ], [ %17, %16 ]
  %27 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %26, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = icmp ugt i64 %28, %0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %26, i32 0, i32 4
  %32 = load i64, ptr %31, align 8
  %33 = shl i64 %32, 12
  %34 = add i64 %33, %28
  %35 = icmp ugt i64 %34, %0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %26, i32 40, i1 false)
  br label %42

37:                                               ; preds = %30, %24
  %38 = icmp ne ptr %25, null
  %39 = getelementptr i8, ptr %25, i32 %18
  %40 = icmp ule ptr %39, %19
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %24, label %42

42:                                               ; preds = %37, %36, %16, %14, %12, %8, %6
  %43 = phi i32 [ -22, %8 ], [ -22, %6 ], [ -22, %14 ], [ -22, %12 ], [ 0, %36 ], [ -2, %16 ], [ -2, %37 ]
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @efi_mem_desc_end(ptr nocapture noundef readonly %0) local_unnamed_addr #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %0, i32 0, i32 4
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 12
  %5 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %0, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %4
  ret i64 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @efi_arch_mem_reserve(i32 noundef %0, i64 noundef %1) local_unnamed_addr #3 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @efi_mem_reserve(i32 noundef %0, i64 noundef %1) local_unnamed_addr #3 section ".init.text" {
  %3 = trunc i64 %1 to i32
  %4 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %0, i32 noundef %3) #22
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @memblock_reserve(i32 noundef %0, i32 noundef %3) #22
  br label %7

7:                                                ; preds = %5, %2
  tail call void @efi_arch_mem_reserve(i32 noundef %0, i64 noundef %1) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_config_parse_tables(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 section ".init.text" {
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = icmp ne ptr %2, null
  br label %8

8:                                                ; preds = %19, %6
  %9 = phi i32 [ 0, %6 ], [ %20, %19 ]
  %10 = getelementptr %union.efi_config_table_t, ptr %0, i32 %9
  %11 = getelementptr inbounds %struct.anon.69, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call fastcc i32 @match_config_table(ptr noundef %10, i32 noundef %13, ptr noundef nonnull @common_tables) #23
  %15 = icmp eq i32 %14, 0
  %16 = and i1 %7, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = tail call fastcc i32 @match_config_table(ptr noundef %10, i32 noundef %13, ptr noundef nonnull %2) #23
  br label %19

19:                                               ; preds = %17, %8
  %20 = add nuw nsw i32 %9, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %8

22:                                               ; preds = %19, %3
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #21
  tail call void @_set_bit(i32 noundef 2, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #22
  %24 = load i32, ptr @efi_rng_seed, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @early_memremap(i32 noundef %24, i32 noundef 4) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  br label %44

31:                                               ; preds = %26
  %32 = load volatile i32, ptr %27, align 4
  tail call void @early_memunmap(ptr noundef nonnull %27, i32 noundef 4) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @efi_rng_seed, align 4
  %36 = add i32 %32, 4
  %37 = tail call ptr @early_memremap(i32 noundef %35, i32 noundef %36) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #21
  %41 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %37, i32 0, i32 1
  tail call void @add_bootloader_randomness(ptr noundef %41, i32 noundef %32) #22
  tail call void @early_memunmap(ptr noundef nonnull %37, i32 noundef %36) #22
  br label %44

42:                                               ; preds = %34
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  br label %44

44:                                               ; preds = %42, %39, %31, %29, %22
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @efi_memattr_init() #22
  br label %50

50:                                               ; preds = %48, %44
  %51 = tail call i32 @efi_tpm_eventlog_init() #22
  %52 = load i32, ptr @mem_reserve, align 4
  switch i32 %52, label %53 [
    i32 -1, label %89
    i32 0, label %89
  ]

53:                                               ; preds = %85, %50
  %54 = phi i32 [ %87, %85 ], [ %52, %50 ]
  %55 = and i32 %54, -4096
  %56 = tail call ptr @early_memremap(i32 noundef %55, i32 noundef 4096) #22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #21
  br label %100

60:                                               ; preds = %53
  %61 = and i32 %54, 4095
  %62 = getelementptr i8, ptr %56, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 8) #22
  %65 = extractvalue { i32, i1 } %64, 1
  %66 = extractvalue { i32, i1 } %64, 0
  %67 = tail call i32 @llvm.uadd.sat.i32(i32 %66, i32 12) #22
  %68 = select i1 %65, i32 -1, i32 %67
  %69 = tail call i32 @memblock_reserve(i32 noundef %54, i32 noundef %68) #22
  %70 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %62, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %62, i32 0, i32 3
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %82, %75 ]
  %77 = getelementptr [0 x %struct.anon.70], ptr %74, i32 0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr [0 x %struct.anon.70], ptr %74, i32 0, i32 %76, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @memblock_reserve(i32 noundef %78, i32 noundef %80) #22
  %82 = add nuw nsw i32 %76, 1
  %83 = load volatile i32, ptr %70, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %75, label %85

85:                                               ; preds = %75, %60
  %86 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %62, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  tail call void @early_memunmap(ptr noundef nonnull %56, i32 noundef 4096) #22
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %53

89:                                               ; preds = %85, %50, %50
  %90 = load i32, ptr @rt_prop, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = tail call ptr @early_memremap(i32 noundef %90, i32 noundef 8) #22
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.efi_rt_properties_table_t, ptr %93, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %99 = and i32 %98, %97
  store i32 %99, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  tail call void @early_memunmap(ptr noundef nonnull %93, i32 noundef 8) #22
  br label %100

100:                                              ; preds = %95, %92, %89, %58
  %101 = phi i32 [ 0, %92 ], [ 0, %95 ], [ 0, %89 ], [ -12, %58 ]
  ret i32 %101
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @match_config_table(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 section ".init.text" {
  %4 = alloca %struct.guid_t, align 4
  %5 = alloca %struct.guid_t, align 4
  %6 = alloca %struct.guid_t, align 4
  %7 = alloca %struct.guid_t, align 4
  %8 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %11 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %17 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  store i32 %20, ptr %6, align 4
  store i32 %22, ptr %8, align 4
  store i32 %24, ptr %9, align 4
  store i32 %26, ptr %10, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %27 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %6, ptr noundef nonnull dereferenceable(16) %7, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %3
  %30 = load i32, ptr %0, align 4
  %31 = load i32, ptr %11, align 4
  %32 = load i32, ptr %12, align 4
  %33 = load i32, ptr %13, align 4
  br label %34

34:                                               ; preds = %50, %29
  %35 = phi i32 [ %59, %50 ], [ %26, %29 ]
  %36 = phi i32 [ %57, %50 ], [ %24, %29 ]
  %37 = phi i32 [ %55, %50 ], [ %22, %29 ]
  %38 = phi i32 [ %53, %50 ], [ %20, %29 ]
  %39 = phi i32 [ %51, %50 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store i32 %30, ptr %4, align 4
  store i32 %31, ptr %14, align 4
  store i32 %32, ptr %15, align 4
  store i32 %33, ptr %16, align 4
  store i32 %38, ptr %5, align 4
  store i32 %37, ptr %17, align 4
  store i32 %36, ptr %18, align 4
  store i32 %35, ptr %19, align 4
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef nonnull dereferenceable(16) %5, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = getelementptr %struct.efi_config_table_type_t, ptr %2, i32 %39, i32 1
  %44 = load ptr, ptr %43, align 4
  store i32 %1, ptr %44, align 4
  %45 = getelementptr %struct.efi_config_table_type_t, ptr %2, i32 %39, i32 2
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %42
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %45, i32 noundef %1) #21
  br label %62

50:                                               ; preds = %34
  %51 = add i32 %39, 1
  %52 = getelementptr %struct.efi_config_table_type_t, ptr %2, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds [4 x i32], ptr %52, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds [4 x i32], ptr %52, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds [4 x i32], ptr %52, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  store i32 %53, ptr %6, align 4
  store i32 %55, ptr %8, align 4
  store i32 %57, ptr %9, align 4
  store i32 %59, ptr %10, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %6, ptr noundef nonnull dereferenceable(16) %7, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %34

62:                                               ; preds = %50, %48, %42, %3
  %63 = phi i32 [ 1, %48 ], [ 1, %42 ], [ 0, %3 ], [ 0, %50 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_bootloader_randomness(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_memattr_init() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_tpm_eventlog_init() local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_systab_check_header(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 section ".init.text" {
  %3 = load i64, ptr %0, align 8
  %4 = icmp eq i64 %3, 6076298535811760713
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.efi_table_hdr_t, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = and i32 %9, 65535
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %10, i32 noundef %13, i32 noundef %1) #21
  br label %15

15:                                               ; preds = %12, %7, %5
  %16 = phi i32 [ -22, %5 ], [ 0, %12 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @efi_systab_report_header(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 section ".init.text" {
  %3 = alloca [100 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %3, ptr noundef nonnull align 1 dereferenceable(100) @__const.efi_systab_report_header.vendor, i32 100, i1 false)
  %4 = tail call fastcc ptr @map_fw_vendor(i32 noundef %1) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %8 = getelementptr i16, ptr %4, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = trunc i16 %9 to i8
  %13 = getelementptr [100 x i8], ptr %3, i32 0, i32 %7
  store i8 %12, ptr %13, align 1
  %14 = add nuw nsw i32 %7, 1
  %15 = icmp eq i32 %14, 99
  br i1 %15, label %16, label %6

16:                                               ; preds = %11, %6
  %17 = phi i32 [ 99, %11 ], [ %7, %6 ]
  %18 = getelementptr [100 x i8], ptr %3, i32 0, i32 %17
  store i8 0, ptr %18, align 1
  tail call void @early_memunmap(ptr noundef nonnull %4, i32 noundef 200) #22
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.efi_table_hdr_t, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %21, 65535
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %22, i32 noundef %23, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @map_fw_vendor(i32 noundef %0) unnamed_addr #3 section ".init.text" {
  %2 = tail call ptr @early_memremap_ro(i32 noundef %0, i32 noundef 200) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #21
  br label %6

6:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @efi_md_typeattr_format(ptr noundef returned writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 section ".init.text" {
  %4 = load i32, ptr %2, align 8
  %5 = icmp ugt i32 %4, 14
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.12, i32 noundef %4)
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr [15 x [13 x i8]], ptr @memory_type_name, i32 0, i32 %4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef %9)
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  %13 = icmp ult i32 %12, %1
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 %12
  %16 = sub i32 %1, %12
  %17 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %2, i32 0, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 9223372036853731296
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.14, i64 noundef %18)
  br label %66

23:                                               ; preds = %14
  %24 = icmp sgt i64 %18, -1
  %25 = select i1 %24, ptr @.str.17, ptr @.str.16
  %26 = and i64 %18, 65536
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, ptr @.str.17, ptr @.str.18
  %29 = and i64 %18, 524288
  %30 = icmp eq i64 %29, 0
  %31 = select i1 %30, ptr @.str.17, ptr @.str.19
  %32 = and i64 %18, 262144
  %33 = icmp eq i64 %32, 0
  %34 = select i1 %33, ptr @.str.17, ptr @.str.20
  %35 = and i64 %18, 32768
  %36 = icmp eq i64 %35, 0
  %37 = select i1 %36, ptr @.str.17, ptr @.str.21
  %38 = and i64 %18, 16384
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %39, ptr @.str.17, ptr @.str.22
  %41 = and i64 %18, 8192
  %42 = icmp eq i64 %41, 0
  %43 = select i1 %42, ptr @.str.17, ptr @.str.23
  %44 = and i64 %18, 4096
  %45 = icmp eq i64 %44, 0
  %46 = select i1 %45, ptr @.str.17, ptr @.str.24
  %47 = and i64 %18, 131072
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, ptr @.str.17, ptr @.str.25
  %50 = and i64 %18, 16
  %51 = icmp eq i64 %50, 0
  %52 = select i1 %51, ptr @.str.17, ptr @.str.26
  %53 = and i64 %18, 8
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, ptr @.str.17, ptr @.str.27
  %56 = and i64 %18, 4
  %57 = icmp eq i64 %56, 0
  %58 = select i1 %57, ptr @.str.17, ptr @.str.28
  %59 = and i64 %18, 2
  %60 = icmp eq i64 %59, 0
  %61 = select i1 %60, ptr @.str.17, ptr @.str.29
  %62 = and i64 %18, 1
  %63 = icmp eq i64 %62, 0
  %64 = select i1 %63, ptr @.str.17, ptr @.str.30
  %65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.15, ptr noundef nonnull %25, ptr noundef nonnull %28, ptr noundef nonnull %31, ptr noundef nonnull %34, ptr noundef nonnull %37, ptr noundef nonnull %40, ptr noundef nonnull %43, ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %52, ptr noundef nonnull %55, ptr noundef nonnull %58, ptr noundef nonnull %61, ptr noundef nonnull %64)
  br label %66

66:                                               ; preds = %23, %21, %11
  ret ptr %0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @efi_mem_attributes(i32 noundef %0) local_unnamed_addr #12 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %3 = and i32 %2, 16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %9 = icmp ne ptr %6, null
  %10 = getelementptr i8, ptr %6, i32 %7
  %11 = icmp ule ptr %10, %8
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %35

13:                                               ; preds = %5
  %14 = zext i32 %0 to i64
  br label %15

15:                                               ; preds = %30, %13
  %16 = phi ptr [ %10, %13 ], [ %32, %30 ]
  %17 = phi ptr [ %6, %13 ], [ %16, %30 ]
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = icmp ugt i64 %19, %14
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 4
  %23 = load i64, ptr %22, align 8
  %24 = shl i64 %23, 12
  %25 = add i64 %24, %19
  %26 = icmp ugt i64 %25, %14
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 5
  %29 = load i64, ptr %28, align 8
  br label %35

30:                                               ; preds = %21, %15
  %31 = icmp ne ptr %16, null
  %32 = getelementptr i8, ptr %16, i32 %7
  %33 = icmp ule ptr %32, %8
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %15, label %35

35:                                               ; preds = %30, %27, %5, %1
  %36 = phi i64 [ %29, %27 ], [ 0, %1 ], [ 0, %5 ], [ 0, %30 ]
  ret i64 %36
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_mem_type(i32 noundef %0) local_unnamed_addr #12 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %3 = and i32 %2, 16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %9 = icmp ne ptr %6, null
  %10 = getelementptr i8, ptr %6, i32 %7
  %11 = icmp ule ptr %10, %8
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %34

13:                                               ; preds = %5
  %14 = zext i32 %0 to i64
  br label %15

15:                                               ; preds = %29, %13
  %16 = phi ptr [ %10, %13 ], [ %31, %29 ]
  %17 = phi ptr [ %6, %13 ], [ %16, %29 ]
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = icmp ugt i64 %19, %14
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 4
  %23 = load i64, ptr %22, align 8
  %24 = shl i64 %23, 12
  %25 = add i64 %24, %19
  %26 = icmp ugt i64 %25, %14
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, ptr %17, align 8
  br label %34

29:                                               ; preds = %21, %15
  %30 = icmp ne ptr %16, null
  %31 = getelementptr i8, ptr %16, i32 %7
  %32 = icmp ule ptr %31, %8
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %15, label %34

34:                                               ; preds = %29, %27, %5, %1
  %35 = phi i32 [ %28, %27 ], [ -524, %1 ], [ -22, %5 ], [ -22, %29 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @efi_status_to_err(i32 noundef %0) local_unnamed_addr #13 {
  switch i32 %0, label %9 [
    i32 0, label %10
    i32 -2147483646, label %2
    i32 -2147483639, label %3
    i32 -2147483641, label %4
    i32 -2147483640, label %5
    i32 -2147483622, label %6
    i32 -2147483634, label %7
    i32 -2147483627, label %8
  ]

2:                                                ; preds = %1
  br label %10

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %3, %2, %1
  %11 = phi i32 [ -22, %9 ], [ -4, %8 ], [ -2, %7 ], [ -13, %6 ], [ -30, %5 ], [ -5, %4 ], [ -28, %3 ], [ -22, %2 ], [ %0, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_mem_reserve_persistent(i32 noundef %0, i64 noundef %1) local_unnamed_addr #14 section ".ref.text" {
  %3 = load ptr, ptr @efi_memreserve_root, align 4
  %4 = ptrtoint ptr %3 to i32
  switch i32 %4, label %10 [
    i32 -1, label %101
    i32 0, label %5
  ]

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @efi_memreserve_map_root() #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %101

8:                                                ; preds = %5
  %9 = load ptr, ptr @efi_memreserve_root, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %48, %10
  %16 = phi i32 [ %50, %48 ], [ %13, %10 ]
  %17 = tail call ptr @memremap(i32 noundef %16, i32 noundef 12, i32 noundef 1) #22
  %18 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #22, !srcloc !10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %19, i32 1, ptr elementtype(i32) %18) #22, !srcloc !11
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !12
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, ptr %17, align 4
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = extractvalue { i32, i32, i32 } %20, 0
  %29 = getelementptr %struct.linux_efi_memreserve, ptr %17, i32 0, i32 3, i32 %28
  store i32 %0, ptr %29, align 4
  %30 = trunc i64 %1 to i32
  %31 = getelementptr %struct.linux_efi_memreserve, ptr %17, i32 0, i32 3, i32 %28, i32 1
  store i32 %30, ptr %31, align 4
  tail call void @memunmap(ptr noundef %17) #22
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 2848, i32 noundef 32) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %101, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 2
  store ptr @.str.57, ptr %36, align 8
  %37 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 3
  store i32 512, ptr %37, align 4
  store i32 %0, ptr %33, align 8
  %38 = add i32 %0, -1
  %39 = add i32 %38, %30
  %40 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = tail call ptr @request_resource_conflict(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %33) #22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = tail call i32 @request_resource(ptr noundef nonnull %41, ptr noundef nonnull %33) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %43, %35
  %47 = tail call i32 @memblock_reserve(i32 noundef %0, i32 noundef %30) #22
  br label %101

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %17, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  tail call void @memunmap(ptr noundef %17) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %15

52:                                               ; preds = %48, %10
  %53 = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef 0) #22
  %54 = inttoptr i32 %53 to ptr
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %101, label %56

56:                                               ; preds = %52
  %57 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %53, i32 -2130706432, i32 8454144) #25, !srcloc !13
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 2848, i32 noundef 32) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 2
  store ptr @.str.57, ptr %62, align 8
  %63 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 3
  store i32 512, ptr %63, align 4
  store i32 %57, ptr %59, align 8
  %64 = add i32 %57, 4095
  %65 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 1
  store i32 %64, ptr %65, align 4
  %66 = tail call ptr @request_resource_conflict(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %59) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @request_resource(ptr noundef nonnull %66, ptr noundef nonnull %59) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68, %56
  %72 = phi i32 [ %69, %68 ], [ -12, %56 ]
  tail call void @free_pages(i32 noundef %53, i32 noundef 0) #22
  br label %101

73:                                               ; preds = %68, %61
  %74 = tail call i32 @memblock_reserve(i32 noundef %57, i32 noundef 4096) #22
  store i32 510, ptr %54, align 4
  %75 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %54, i32 0, i32 1
  store volatile i32 1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %54, i32 0, i32 3
  store i32 %0, ptr %76, align 4
  %77 = trunc i64 %1 to i32
  %78 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %54, i32 1, i32 1
  store i32 %77, ptr %78, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @efi_mem_reserve_persistent_lock) #22
  %79 = load ptr, ptr @efi_memreserve_root, align 4
  %80 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.linux_efi_memreserve, ptr %54, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  store i32 %57, ptr %80, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %83 = load i16, ptr @efi_mem_reserve_persistent_lock, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr @efi_mem_reserve_persistent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 2848, i32 noundef 32) #24
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.resource, ptr %86, i32 0, i32 2
  store ptr @.str.57, ptr %89, align 8
  %90 = getelementptr inbounds %struct.resource, ptr %86, i32 0, i32 3
  store i32 512, ptr %90, align 4
  store i32 %0, ptr %86, align 8
  %91 = add i32 %0, -1
  %92 = add i32 %91, %77
  %93 = getelementptr inbounds %struct.resource, ptr %86, i32 0, i32 1
  store i32 %92, ptr %93, align 4
  %94 = tail call ptr @request_resource_conflict(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %86) #22
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = tail call i32 @request_resource(ptr noundef nonnull %94, ptr noundef nonnull %86) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %88
  %100 = tail call i32 @memblock_reserve(i32 noundef %0, i32 noundef %77) #22
  br label %101

101:                                              ; preds = %99, %96, %73, %71, %52, %46, %43, %27, %5, %2
  %102 = phi i32 [ %72, %71 ], [ -19, %2 ], [ %6, %5 ], [ -12, %52 ], [ -12, %27 ], [ 0, %46 ], [ %44, %43 ], [ -12, %73 ], [ 0, %99 ], [ %97, %96 ]
  ret i32 %102
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @efi_memreserve_map_root() unnamed_addr #3 section ".init.text" {
  %1 = load i32, ptr @mem_reserve, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @memremap(i32 noundef %1, i32 noundef 12, i32 noundef 1) #22
  store ptr %4, ptr @efi_memreserve_root, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @efi_memreserve_map_root.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !18

9:                                                ; preds = %3
  store i1 true, ptr @efi_memreserve_map_root.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 901, i32 noundef 9, ptr noundef null) #22
  br label %10

10:                                               ; preds = %9, %3
  %11 = select i1 %5, i32 -12, i32 0
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ -19, %0 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efi_memreserve_root_init() #3 section ".init.text" {
  %1 = load ptr, ptr @efi_memreserve_root, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @efi_memreserve_map_root() #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store ptr inttoptr (i32 -1 to ptr), ptr @efi_memreserve_root, align 4
  br label %7

7:                                                ; preds = %6, %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @register_update_efi_random_seed() #3 section ".init.text" {
  %1 = load i32, ptr @efi_rng_seed, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @efi_random_seed_nb) #22
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parse_option_str(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @efi_debugfs_init() unnamed_addr #3 section ".init.text" {
  %1 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !19
  %2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.39, ptr noundef null) #22
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %58, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %8 = icmp ne ptr %7, null
  %9 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %12 = icmp ule ptr %10, %11
  %13 = select i1 %8, i1 %12, i1 false
  br i1 %13, label %14, label %58

14:                                               ; preds = %47, %6
  %15 = phi i32 [ %50, %47 ], [ 0, %6 ]
  %16 = phi ptr [ %52, %47 ], [ %7, %6 ]
  %17 = phi i32 [ %49, %47 ], [ 0, %6 ]
  %18 = phi i32 [ %48, %47 ], [ 0, %6 ]
  %19 = load i32, ptr %16, align 8
  switch i32 %19, label %47 [
    i32 3, label %20
    i32 4, label %23
  ]

20:                                               ; preds = %14
  %21 = add i32 %18, 1
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.51, i32 noundef %18)
  br label %26

23:                                               ; preds = %14
  %24 = add i32 %17, 1
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.52, i32 noundef %17)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %18, %23 ], [ %21, %20 ]
  %28 = phi i32 [ %24, %23 ], [ %17, %20 ]
  %29 = icmp sgt i32 %15, 31
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 32, i32 noundef 32) #21
  br label %58

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %16, i32 0, i32 4
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 12
  %37 = getelementptr [32 x %struct.debugfs_blob_wrapper], ptr @debugfs_blob, i32 0, i32 %15
  %38 = getelementptr [32 x %struct.debugfs_blob_wrapper], ptr @debugfs_blob, i32 0, i32 %15, i32 1
  store i32 %36, ptr %38, align 4
  %39 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %16, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call ptr @memremap(i32 noundef %41, i32 noundef %36, i32 noundef 1) #22
  store ptr %42, ptr %37, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = call ptr @debugfs_create_blob(ptr noundef nonnull %1, i16 noundef zeroext 256, ptr noundef %2, ptr noundef %37) #22
  %46 = add nsw i32 %15, 1
  br label %47

47:                                               ; preds = %44, %32, %14
  %48 = phi i32 [ %18, %14 ], [ %27, %32 ], [ %27, %44 ]
  %49 = phi i32 [ %17, %14 ], [ %28, %32 ], [ %28, %44 ]
  %50 = phi i32 [ %15, %14 ], [ %15, %32 ], [ %46, %44 ]
  %51 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %52 = getelementptr i8, ptr %16, i32 %51
  %53 = icmp ne ptr %52, null
  %54 = getelementptr i8, ptr %52, i32 %51
  %55 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %56 = icmp ule ptr %54, %55
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %14, label %58

58:                                               ; preds = %47, %30, %6, %0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @efi_query_variable_store(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #16 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivars_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @systab_show(ptr noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #17 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 4), align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.45, i32 noundef %8)
  %12 = getelementptr i8, ptr %2, i32 %11
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %12, %10 ], [ %2, %7 ]
  %15 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 3), align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef nonnull @.str.46, i32 noundef %15)
  %19 = getelementptr i8, ptr %14, i32 %18
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %19, %17 ], [ %14, %13 ]
  %22 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 6), align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.47, i32 noundef %22)
  %26 = getelementptr i8, ptr %21, i32 %25
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %26, %24 ], [ %21, %20 ]
  %29 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 5), align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.48, i32 noundef %29)
  %33 = getelementptr i8, ptr %28, i32 %32
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %28, %27 ]
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %2 to i32
  %38 = sub i32 %36, %37
  br label %39

39:                                               ; preds = %34, %3
  %40 = phi i32 [ %38, %34 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_platform_size_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #17 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 32, i32 64
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivars_unregister(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap_ro(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #9 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @update_efi_random_seed(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = load i8, ptr @kexec_in_progress, align 1, !range !20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @efi_rng_seed, align 4
  %8 = tail call ptr @memremap(i32 noundef %7, i32 noundef 4, i32 noundef 1) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  br label %25

12:                                               ; preds = %6
  %13 = load i32, ptr %8, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 64)
  tail call void @memunmap(ptr noundef nonnull %8) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr @efi_rng_seed, align 4
  %18 = add nuw nsw i32 %14, 4
  %19 = tail call ptr @memremap(i32 noundef %17, i32 noundef %18, i32 noundef 1) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  store i32 %14, ptr %19, align 4
  %22 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %19, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %22, i32 noundef %14) #22
  tail call void @memunmap(ptr noundef nonnull %19) #22
  br label %25

23:                                               ; preds = %16
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #21
  br label %25

25:                                               ; preds = %23, %21, %12, %10, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #18

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148155074}
!10 = !{i64 653384, i64 2148143355, i64 2148143381, i64 2148143428, i64 2148143450, i64 2148143478, i64 2148143498}
!11 = !{i64 639953, i64 639978, i64 640000, i64 640016, i64 640028, i64 640048, i64 640072, i64 640088, i64 640100}
!12 = !{i64 2148155200}
!13 = !{i64 2148839214, i64 2148839237, i64 2148839269, i64 2148839301, i64 2148839339, i64 2148839369}
!14 = !{i64 2149006747}
!15 = !{i64 2149002571}
!16 = !{i64 2149002646, i64 2149002673, i64 2149002720, i64 2149002742, i64 2149002770, i64 2149002790}
!17 = !{i64 2149029750}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"auto-init"}
!20 = !{i8 0, i8 2}
