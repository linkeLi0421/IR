; ModuleID = '/llk/IR/drivers/mtd/maps/physmap-core.c_pt.bc'
source_filename = "../drivers/mtd/maps/physmap-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.physmap_flash_info = type { i32, ptr, ptr, ptr, %struct.spinlock, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.physmap_flash_data = type { i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@physmap_flash_driver = internal global %struct.platform_driver { ptr @physmap_flash_probe, ptr @physmap_flash_remove, ptr @physmap_flash_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_flash_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_physmap__169_677_physmap_init6 = internal global ptr @physmap_init, section ".initcall6.init", align 4
@__exitcall_physmap_exit = internal global ptr @physmap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file170 = internal constant [38 x i8] c"physmap.file=drivers/mtd/maps/physmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [20 x i8] c"physmap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [53 x i8] c"physmap.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [49 x i8] c"physmap.author=Vitaly Wool <vwool@ru.mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [50 x i8] c"physmap.author=Mike Frysinger <vapier@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [56 x i8] c"physmap.description=Generic configurable MTD map driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [37 x i8] c"physmap.alias=platform:physmap-flash\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"physmap-flash\00", align 1
@of_flash_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cfi-flash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.14 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jedec-flash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mtd-ram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.28 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mtd-rom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.18 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"rom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"direct-mapped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"addr-gpios only supported for nmaps == 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"physmap platform flash device: %pR\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"map_probe failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"linux,mtd-name\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"no-unaligned-direct-access\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"bank-width\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Can't get bank width from device tree\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Device tree uses obsolete \22direct-mapped\22 flash binding\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"probe-type\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"CFI\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"jedec_probe\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ROM\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"map_rom\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"obsolete_probe: don't know probe type '%s', mapping as rom\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"linux,part-probe\00", align 1
@of_default_part_probes = internal constant [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"cmdlinepart\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"RedBoot\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ofpart\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ofoldpart\00", align 1
@part_probe_types = internal constant [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr null], align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"afs\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"qinfo_probe\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"map_ram\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_physmap_exit, ptr @__initcall__kmod_physmap__169_677_physmap_init6, ptr @physmap_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @physmap_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @physmap_flash_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @physmap_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @physmap_flash_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @physmap_flash_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %356, label %13

13:                                               ; preds = %9, %1
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %356, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %17) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %16
  %21 = load i32, ptr %14, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %14, align 4
  %23 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %22) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %16
  %26 = load i32, ptr %14, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %356, label %28

28:                                               ; preds = %25
  %29 = mul i32 %26, 60
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %29, i32 noundef 3520) #7
  %31 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %356, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %14, align 4
  %35 = shl i32 %34, 2
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %35, i32 noundef 3520) #7
  %37 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %356, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %40, align 8
  %41 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 3) #7
  %42 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 10
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i32
  br label %356

46:                                               ; preds = %39
  %47 = icmp eq ptr %41, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %14, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  br label %356

52:                                               ; preds = %48, %46
  tail call void @pm_runtime_enable(ptr noundef %5) #7
  %53 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %54 = load ptr, ptr %6, align 8
  %55 = icmp eq ptr %54, null
  %56 = load ptr, ptr %40, align 8
  br i1 %55, label %136, label %57

57:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %58 = tail call ptr @of_match_device(ptr noundef nonnull @of_flash_match, ptr noundef %5) #7
  %59 = getelementptr inbounds %struct.of_device_id, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %2, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.11) #8
  %63 = call i32 @of_property_read_string(ptr noundef nonnull %54, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #7
  %64 = load ptr, ptr %2, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(4) @.str.13) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(6) @.str.15) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(4) @.str.17) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull %64) #8
  br label %76

76:                                               ; preds = %75, %72, %69, %66, %62, %57
  %77 = phi ptr [ %60, %57 ], [ null, %62 ], [ @.str.18, %75 ], [ @.str.14, %66 ], [ @.str.16, %69 ], [ @.str.18, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %78 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 6
  store ptr %77, ptr %78, align 4
  %79 = load ptr, ptr %6, align 8
  %80 = call i32 @of_property_read_string_helper(ptr noundef %79, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %76
  %83 = add nuw i32 %80, 1
  %84 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %83, i32 4) #7
  %85 = extractvalue { i32, i1 } %84, 1
  br i1 %85, label %93, label %86, !prof !9

86:                                               ; preds = %82
  %87 = extractvalue { i32, i1 } %84, 0
  %88 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %87, i32 noundef 3520) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = call i32 @of_property_read_string_helper(ptr noundef %79, ptr noundef nonnull @.str.20, ptr noundef nonnull %88, i32 noundef %80, i32 noundef 0) #7
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %86, %82
  %94 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 7
  store ptr null, ptr %94, align 4
  br label %181

95:                                               ; preds = %90, %76
  %96 = phi ptr [ @of_default_part_probes, %76 ], [ %88, %90 ]
  %97 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 7
  store ptr %96, ptr %97, align 4
  %98 = call i32 @of_property_read_string(ptr noundef nonnull %54, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #7
  %99 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %100 = icmp eq ptr %99, null
  %101 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #8
  br label %181

104:                                              ; preds = %95
  %105 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = call ptr @of_find_property(ptr noundef nonnull %54, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, i32 0, i32 2
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i32 [ 3, %104 ], [ %110, %107 ]
  %113 = load i32, ptr %56, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %180, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 3
  br label %117

117:                                              ; preds = %132, %115
  %118 = phi i32 [ 0, %115 ], [ %133, %132 ]
  %119 = load ptr, ptr %3, align 4
  %120 = load ptr, ptr %116, align 4
  %121 = getelementptr %struct.map_info, ptr %120, i32 %118
  store ptr %119, ptr %121, align 4
  %122 = load ptr, ptr %116, align 4
  %123 = getelementptr %struct.map_info, ptr %122, i32 %118, i32 5
  store i32 %112, ptr %123, align 4
  %124 = load i32, ptr %4, align 4
  %125 = load ptr, ptr %116, align 4
  %126 = getelementptr %struct.map_info, ptr %125, i32 %118, i32 6
  store i32 %124, ptr %126, align 4
  %127 = load ptr, ptr %116, align 4
  %128 = getelementptr %struct.map_info, ptr %127, i32 %118, i32 12
  store ptr %54, ptr %128, align 4
  br i1 %100, label %132, label %129

129:                                              ; preds = %117
  %130 = load ptr, ptr %116, align 4
  %131 = getelementptr %struct.map_info, ptr %130, i32 %118, i32 2
  store i32 -1, ptr %131, align 4
  br label %132

132:                                              ; preds = %129, %117
  %133 = add nuw i32 %118, 1
  %134 = load i32, ptr %56, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %117, label %180

136:                                              ; preds = %52
  %137 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %191, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.physmap_flash_data, ptr %138, i32 0, i32 6
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 6
  store ptr %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.physmap_flash_data, ptr %138, i32 0, i32 8
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  %147 = select i1 %146, ptr @part_probe_types, ptr %145
  %148 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 7
  store ptr %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.physmap_flash_data, ptr %138, i32 0, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 9
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.physmap_flash_data, ptr %138, i32 0, i32 4
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 8
  store i32 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.physmap_flash_data, ptr %138, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %140
  %159 = tail call i32 %156(ptr noundef %0) #7
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %158, %140
  %162 = load i32, ptr %56, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %183, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.physmap_flash_info, ptr %56, i32 0, i32 3
  %166 = getelementptr inbounds %struct.physmap_flash_data, ptr %138, i32 0, i32 5
  br label %167

167:                                              ; preds = %167, %164
  %168 = phi i32 [ 0, %164 ], [ %177, %167 ]
  %169 = load i32, ptr %138, align 4
  %170 = load ptr, ptr %165, align 4
  %171 = getelementptr %struct.map_info, ptr %170, i32 %168, i32 6
  store i32 %169, ptr %171, align 4
  %172 = load i32, ptr %166, align 4
  %173 = load ptr, ptr %165, align 4
  %174 = getelementptr %struct.map_info, ptr %173, i32 %168, i32 9
  store i32 %172, ptr %174, align 4
  %175 = load ptr, ptr %165, align 4
  %176 = getelementptr %struct.map_info, ptr %175, i32 %168, i32 8
  store ptr @physmap_set_vpp, ptr %176, align 4
  %177 = add nuw i32 %168, 1
  %178 = load i32, ptr %56, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %167, label %183

180:                                              ; preds = %132, %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %183

181:                                              ; preds = %103, %93
  %182 = phi i32 [ %101, %103 ], [ -12, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %191

183:                                              ; preds = %180, %167, %161
  %184 = load i32, ptr %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %319, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %188 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 12
  %189 = ptrtoint ptr %0 to i32
  %190 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 6
  br label %194

191:                                              ; preds = %181, %158, %136
  %192 = phi i32 [ %182, %181 ], [ %159, %158 ], [ -22, %136 ]
  %193 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #7
  call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  br label %356

194:                                              ; preds = %308, %186
  %195 = phi i32 [ 0, %186 ], [ %310, %308 ]
  %196 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %195) #7
  %197 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %196) #7
  %198 = load ptr, ptr %31, align 4
  %199 = getelementptr %struct.map_info, ptr %198, i32 %195, i32 3
  store ptr %197, ptr %199, align 4
  %200 = load ptr, ptr %31, align 4
  %201 = getelementptr %struct.map_info, ptr %200, i32 %195, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  br i1 %203, label %204, label %206

204:                                              ; preds = %194
  %205 = ptrtoint ptr %202 to i32
  br label %353

206:                                              ; preds = %194
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef %196) #8
  %207 = load ptr, ptr %31, align 4
  %208 = getelementptr %struct.map_info, ptr %207, i32 %195
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %206
  %212 = load ptr, ptr %187, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load ptr, ptr %5, align 4
  br label %216

216:                                              ; preds = %214, %211
  %217 = phi ptr [ %215, %214 ], [ %212, %211 ]
  store ptr %217, ptr %208, align 4
  %218 = load ptr, ptr %31, align 4
  br label %219

219:                                              ; preds = %216, %206
  %220 = phi ptr [ %218, %216 ], [ %207, %206 ]
  %221 = getelementptr %struct.map_info, ptr %220, i32 %195, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, ptr %196, align 4
  store i32 %225, ptr %221, align 4
  br label %226

226:                                              ; preds = %224, %219
  %227 = getelementptr inbounds %struct.resource, ptr %196, i32 0, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = load i32, ptr %196, align 4
  %230 = add i32 %228, 1
  %231 = sub i32 %230, %229
  %232 = icmp eq i32 %230, %229
  %233 = call i32 @llvm.ctlz.i32(i32 %231, i1 false) #7, !range !10
  %234 = sub nsw i32 31, %233
  %235 = select i1 %232, i32 -1, i32 %234
  store i32 %235, ptr %188, align 4
  %236 = load ptr, ptr %42, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %226
  %239 = getelementptr inbounds %struct.gpio_descs, ptr %236, i32 0, i32 1
  %240 = load i32, ptr %239, align 4
  br label %241

241:                                              ; preds = %238, %226
  %242 = phi i32 [ %240, %238 ], [ 0, %226 ]
  %243 = add i32 %242, %235
  %244 = shl nuw i32 1, %243
  %245 = load ptr, ptr %31, align 4
  %246 = getelementptr %struct.map_info, ptr %245, i32 %195, i32 1
  store i32 %244, ptr %246, align 4
  %247 = load ptr, ptr %31, align 4
  %248 = getelementptr %struct.map_info, ptr %247, i32 %195, i32 10
  store i32 %189, ptr %248, align 4
  %249 = load ptr, ptr %42, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %353

251:                                              ; preds = %241
  %252 = load ptr, ptr %31, align 4
  %253 = getelementptr %struct.map_info, ptr %252, i32 %195, i32 6
  %254 = load i32, ptr %253, align 4
  switch i32 %254, label %255 [
    i32 1, label %256
    i32 2, label %256
    i32 4, label %256
  ]

255:                                              ; preds = %251
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/maps/physmap-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 553, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

256:                                              ; preds = %251, %251, %251
  %257 = load ptr, ptr %190, align 4
  %258 = icmp eq ptr %257, null
  %259 = getelementptr %struct.map_info, ptr %252, i32 %195
  br i1 %258, label %260, label %268

260:                                              ; preds = %256
  %261 = call ptr @do_map_probe(ptr noundef nonnull @.str.14, ptr noundef %259) #7
  %262 = load ptr, ptr %37, align 4
  %263 = getelementptr ptr, ptr %262, i32 %195
  store ptr %261, ptr %263, align 4
  %264 = load ptr, ptr %37, align 4
  %265 = getelementptr ptr, ptr %264, i32 %195
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %275, label %304

268:                                              ; preds = %256
  %269 = call ptr @do_map_probe(ptr noundef nonnull %257, ptr noundef %259) #7
  %270 = load ptr, ptr %37, align 4
  %271 = getelementptr ptr, ptr %270, i32 %195
  store ptr %269, ptr %271, align 4
  %272 = load ptr, ptr %37, align 4
  %273 = getelementptr ptr, ptr %272, i32 %195
  %274 = load ptr, ptr %273, align 4
  br label %304

275:                                              ; preds = %260
  %276 = load ptr, ptr %31, align 4
  %277 = getelementptr %struct.map_info, ptr %276, i32 %195
  %278 = call ptr @do_map_probe(ptr noundef nonnull @.str.16, ptr noundef %277) #7
  %279 = load ptr, ptr %37, align 4
  %280 = getelementptr ptr, ptr %279, i32 %195
  store ptr %278, ptr %280, align 4
  %281 = load ptr, ptr %37, align 4
  %282 = getelementptr ptr, ptr %281, i32 %195
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %304

285:                                              ; preds = %275
  %286 = load ptr, ptr %31, align 4
  %287 = getelementptr %struct.map_info, ptr %286, i32 %195
  %288 = call ptr @do_map_probe(ptr noundef nonnull @.str.26, ptr noundef %287) #7
  %289 = load ptr, ptr %37, align 4
  %290 = getelementptr ptr, ptr %289, i32 %195
  store ptr %288, ptr %290, align 4
  %291 = load ptr, ptr %37, align 4
  %292 = getelementptr ptr, ptr %291, i32 %195
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %304

295:                                              ; preds = %285
  %296 = load ptr, ptr %31, align 4
  %297 = getelementptr %struct.map_info, ptr %296, i32 %195
  %298 = call ptr @do_map_probe(ptr noundef nonnull @.str.18, ptr noundef %297) #7
  %299 = load ptr, ptr %37, align 4
  %300 = getelementptr ptr, ptr %299, i32 %195
  store ptr %298, ptr %300, align 4
  %301 = load ptr, ptr %37, align 4
  %302 = getelementptr ptr, ptr %301, i32 %195
  %303 = load ptr, ptr %302, align 4
  br label %304

304:                                              ; preds = %295, %285, %275, %268, %260
  %305 = phi ptr [ %274, %268 ], [ %266, %260 ], [ %283, %275 ], [ %293, %285 ], [ %303, %295 ]
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  br label %353

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.mtd_info, ptr %305, i32 0, i32 56, i32 1
  store ptr %5, ptr %309, align 4
  %310 = add nuw i32 %195, 1
  %311 = load i32, ptr %14, align 4
  %312 = icmp ult i32 %310, %311
  br i1 %312, label %194, label %313

313:                                              ; preds = %308
  %314 = icmp eq i32 %311, 1
  br i1 %314, label %315, label %319

315:                                              ; preds = %313
  %316 = load ptr, ptr %37, align 4
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 2
  store ptr %317, ptr %318, align 4
  br label %332

319:                                              ; preds = %313, %183
  %320 = phi i32 [ %311, %313 ], [ 0, %183 ]
  %321 = load ptr, ptr %37, align 4
  %322 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %327

325:                                              ; preds = %319
  %326 = load ptr, ptr %5, align 4
  br label %327

327:                                              ; preds = %325, %319
  %328 = phi ptr [ %326, %325 ], [ %323, %319 ]
  %329 = call ptr @mtd_concat_create(ptr noundef %321, i32 noundef %320, ptr noundef %328) #7
  %330 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 2
  store ptr %329, ptr %330, align 4
  %331 = icmp eq ptr %329, null
  br i1 %331, label %353, label %332

332:                                              ; preds = %327, %315
  %333 = phi ptr [ %317, %315 ], [ %329, %327 ]
  %334 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 4
  store i32 0, ptr %334, align 4
  %335 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 2
  %336 = load ptr, ptr %6, align 8
  %337 = getelementptr inbounds %struct.mtd_info, ptr %333, i32 0, i32 56, i32 25
  store ptr %336, ptr %337, align 8
  %338 = getelementptr inbounds %struct.mtd_info, ptr %333, i32 0, i32 13
  %339 = load ptr, ptr %338, align 8
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %343

341:                                              ; preds = %332
  %342 = call i32 @of_property_read_string(ptr noundef %336, ptr noundef nonnull @.str.27, ptr noundef %338) #7
  br label %343

343:                                              ; preds = %341, %332
  %344 = load ptr, ptr %335, align 4
  %345 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 7
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 9
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.physmap_flash_info, ptr %14, i32 0, i32 8
  %350 = load i32, ptr %349, align 4
  %351 = call i32 @mtd_device_parse_register(ptr noundef %344, ptr noundef %346, ptr noundef null, ptr noundef %348, i32 noundef %350) #7
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %343, %327, %307, %241, %204
  %354 = phi i32 [ %351, %343 ], [ -6, %327 ], [ -6, %307 ], [ %205, %204 ], [ -524, %241 ]
  %355 = call i32 @physmap_flash_remove(ptr noundef %0)
  br label %356

356:                                              ; preds = %353, %343, %191, %51, %44, %33, %28, %25, %13, %9
  %357 = phi i32 [ %45, %44 ], [ -22, %51 ], [ %192, %191 ], [ %354, %353 ], [ -22, %9 ], [ -12, %13 ], [ -19, %25 ], [ -12, %28 ], [ -12, %33 ], [ 0, %343 ]
  ret i32 %357
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @physmap_flash_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.physmap_flash_info, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %7) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.physmap_flash_info, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @mtd_concat_destroy(ptr noundef %13) #7
  br label %19

19:                                               ; preds = %18, %12, %5
  %20 = load i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.physmap_flash_info, ptr %3, i32 0, i32 1
  br label %24

24:                                               ; preds = %33, %22
  %25 = phi i32 [ %20, %22 ], [ %34, %33 ]
  %26 = phi i32 [ 0, %22 ], [ %35, %33 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  tail call void @map_destroy(ptr noundef nonnull %29) #7
  %32 = load i32, ptr %3, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %31 ]
  %35 = add nuw i32 %26, 1
  %36 = icmp ult i32 %35, %34
  br i1 %36, label %24, label %37

37:                                               ; preds = %33, %19
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.physmap_flash_data, ptr %39, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void %43(ptr noundef %0) #7
  br label %46

46:                                               ; preds = %45, %41, %37, %9, %1
  %47 = phi i32 [ %10, %9 ], [ 0, %45 ], [ 0, %41 ], [ 0, %37 ], [ -22, %1 ]
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 5) #7
  tail call void @__pm_runtime_disable(ptr noundef %48, i1 noundef zeroext true) #7
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @physmap_flash_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.physmap_flash_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %59, %1
  %8 = phi i32 [ %60, %59 ], [ 0, %1 ]
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %16, %13 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 62
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 64, i32 1, i32 8
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 45
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef nonnull %14) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load i8, ptr %19, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i8 [ %31, %30 ], [ %20, %23 ]
  %34 = or i8 %33, 1
  store i8 %34, ptr %19, align 8
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr ptr, ptr %35, i32 %8
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %32, %18
  %39 = phi ptr [ %11, %18 ], [ %37, %32 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi ptr [ %43, %40 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 62
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 64, i32 1, i32 8
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.mtd_info, ptr %41, i32 0, i32 46
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  tail call void %52(ptr noundef %41) #7
  %55 = load i8, ptr %46, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i8 [ %55, %54 ], [ %47, %50 ]
  %58 = and i8 %57, -2
  store i8 %58, ptr %46, align 8
  br label %59

59:                                               ; preds = %56, %45, %27
  %60 = add nuw i32 %8, 1
  %61 = load i32, ptr %3, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %7, label %63

63:                                               ; preds = %59, %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_concat_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @physmap_set_vpp(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.map_info, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.physmap_flash_data, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.physmap_flash_info, ptr %13, i32 0, i32 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = icmp eq i32 %1, 0
  %17 = getelementptr inbounds %struct.physmap_flash_info, ptr %13, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  br i1 %16, label %22, label %19

19:                                               ; preds = %11
  %20 = add i32 %18, 1
  store i32 %20, ptr %17, align 4
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %25, label %28

22:                                               ; preds = %11
  %23 = add i32 %18, -1
  store i32 %23, ptr %17, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = phi i32 [ 1, %19 ], [ 0, %22 ]
  %27 = load ptr, ptr %8, align 4
  tail call void %27(ptr noundef %5, i32 noundef %26) #7
  br label %28

28:                                               ; preds = %25, %22, %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtd_concat_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i32 0, i32 33}
!11 = !{i64 2151643289, i64 2151643785, i64 2151643326, i64 2151643382, i64 2151643416, i64 2151643440, i64 2151643481, i64 2151643502, i64 2151643530, i64 2151643564}
