; ModuleID = '/llk/IR/drivers/remoteproc/st_remoteproc.c_pt.bc'
source_filename = "../drivers/remoteproc/st_remoteproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st_rproc_config = type { i8, i8, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.st_rproc = type { ptr, ptr, ptr, ptr, i32, ptr, i32, [4 x ptr], %struct.mbox_client, %struct.mbox_client }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }

@st_rproc_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st40-rproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st40_rproc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st231-rproc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st231_rproc_cfg }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description226 = internal constant [47 x i8] c"description=ST Remote Processor Control Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [44 x i8] c"author=Ludovic Barre <ludovic.barre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@st40_rproc_cfg = internal constant %struct.st_rproc_config { i8 1, i8 1, i32 536870910 }, align 4
@st231_rproc_cfg = internal constant %struct.st_rproc_config { i8 1, i8 0, i32 -64 }, align 4
@st_rproc_driver = internal global %struct.platform_driver { ptr @st_rproc_probe, ptr @st_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_rproc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"st-rproc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No device match found\0A\00", align 1
@st_rproc_ops = internal constant %struct.rproc_ops { ptr null, ptr null, ptr @st_rproc_start, ptr @st_rproc_stop, ptr null, ptr null, ptr @st_rproc_kick, ptr null, ptr @st_rproc_parse_fw, ptr null, ptr @rproc_elf_find_loaded_rsc_table, ptr null, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"mbox-names\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vq0_rx\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to request mbox chan 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"vq0_tx\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"vq1_rx\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to request mbox chan 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vq1_tx\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to deassert S/W Reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to deassert Power Reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Started from 0x%llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Failed to assert S/W Reset\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to assert Power Reset\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"drivers/remoteproc/st_remoteproc.c\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"failed to send message via mbox: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"unable to acquire memory-region\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"vdev0buffer\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Unable to map memory region: %pa+%zx\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"sw_reset\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Failed to get S/W Reset\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"pwr_reset\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Failed to get Power Reset\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"failed to get clock frequency\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Boot base not found\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Boot offset not found\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_license228], section "llvm.metadata"

@__mod_of__st_rproc_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @st_rproc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_rproc_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_rproc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @st_rproc_match, ptr noundef %2) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %169

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 4
  %14 = tail call ptr @rproc_alloc(ptr noundef %2, ptr noundef %13, ptr noundef nonnull @st_rproc_ops, ptr noundef null, i32 noundef 100) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %169, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rproc, ptr %14, i32 0, i32 29
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rproc, ptr %14, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  store ptr %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %21, align 8
  %22 = load ptr, ptr %18, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = load ptr, ptr %22, align 4
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %29 = getelementptr inbounds %struct.st_rproc, ptr %22, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %65, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %22, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi ptr [ %32, %31 ], [ %24, %16 ]
  %35 = getelementptr inbounds %struct.st_rproc_config, ptr %34, i32 0, i32 1
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %40 = getelementptr inbounds %struct.st_rproc, ptr %22, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %65, label %42

42:                                               ; preds = %38, %33
  %43 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %44 = getelementptr inbounds %struct.st_rproc, ptr %22, i32 0, i32 3
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.st_rproc, ptr %22, i32 0, i32 4
  %48 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.26, ptr noundef %47, i32 noundef 1, i32 noundef 0) #7
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27) #8
  br label %167

51:                                               ; preds = %46
  %52 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %23, ptr noundef nonnull @.str.28) #7
  %53 = getelementptr inbounds %struct.st_rproc, ptr %22, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.st_rproc, ptr %22, i32 0, i32 6
  %57 = tail call i32 @of_property_read_u32_index(ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %56) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.30) #8
  br label %167

60:                                               ; preds = %55
  %61 = load ptr, ptr %44, align 4
  %62 = tail call i32 @clk_prepare(ptr noundef %61) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.31) #8
  br label %167

65:                                               ; preds = %51, %42, %38, %27
  %66 = phi ptr [ @.str.22, %27 ], [ @.str.24, %38 ], [ @.str.25, %42 ], [ @.str.29, %51 ]
  %67 = phi ptr [ %29, %27 ], [ %40, %38 ], [ %44, %42 ], [ %53, %51 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %66) #8
  %68 = load ptr, ptr %67, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %167

71:                                               ; preds = %65, %60
  %72 = load ptr, ptr %21, align 8
  %73 = getelementptr inbounds %struct.rproc, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = load i8, ptr %75, align 4, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.st_rproc, ptr %74, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @reset_control_status(ptr noundef %80) #7
  %82 = load ptr, ptr %74, align 4
  br label %83

83:                                               ; preds = %78, %71
  %84 = phi ptr [ %82, %78 ], [ %75, %71 ]
  %85 = phi i32 [ %81, %78 ], [ 0, %71 ]
  %86 = getelementptr inbounds %struct.st_rproc_config, ptr %84, i32 0, i32 1
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.st_rproc, ptr %74, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @reset_control_status(ptr noundef %91) #7
  br label %93

93:                                               ; preds = %89, %83
  %94 = phi i32 [ %92, %89 ], [ 0, %83 ]
  %95 = icmp slt i32 %85, 0
  %96 = icmp slt i32 %94, 0
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %163, label %98

98:                                               ; preds = %93
  %99 = icmp ne i32 %85, 0
  %100 = icmp ne i32 %94, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.rproc, ptr %14, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #7, !srcloc !9
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #7, !srcloc !10
  %105 = getelementptr inbounds %struct.rproc, ptr %14, i32 0, i32 8
  store i32 2, ptr %105, align 4
  br label %112

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = tail call i32 @clk_set_rate(ptr noundef %108, i32 noundef %110) #7
  br label %112

112:                                              ; preds = %106, %102
  %113 = tail call ptr @of_get_property(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %145, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 8
  store ptr %2, ptr %116, align 4
  %117 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 8, i32 6
  store ptr null, ptr %117, align 4
  %118 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 8, i32 1
  store i8 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 8, i32 3
  store i8 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 8, i32 4
  store ptr @st_rproc_mbox_callback_vq0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 9
  store ptr %2, ptr %121, align 4
  %122 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 9, i32 6
  store ptr null, ptr %122, align 4
  %123 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 9, i32 1
  store i8 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 9, i32 3
  store i8 0, ptr %124, align 4
  %125 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 9, i32 4
  store ptr @st_rproc_mbox_callback_vq1, ptr %125, align 4
  %126 = tail call ptr @mbox_request_channel_byname(ptr noundef %116, ptr noundef nonnull @.str.3) #7
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct.rproc, ptr %14, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.4) #8
  %130 = ptrtoint ptr %126 to i32
  br label %163

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 7
  store ptr %126, ptr %132, align 4
  %133 = tail call ptr @mbox_request_channel_byname(ptr noundef %116, ptr noundef nonnull @.str.5) #7
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %148, label %135

135:                                              ; preds = %131
  %136 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 1
  store ptr %133, ptr %136, align 4
  %137 = tail call ptr @mbox_request_channel_byname(ptr noundef %121, ptr noundef nonnull @.str.6) #7
  %138 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  %140 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 2
  store ptr %137, ptr %140, align 4
  %141 = tail call ptr @mbox_request_channel_byname(ptr noundef %121, ptr noundef nonnull @.str.8) #7
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 3
  store ptr %141, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %112
  %146 = tail call i32 @rproc_add(ptr noundef nonnull %14) #7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %169, label %153

148:                                              ; preds = %139, %135, %131
  %149 = phi ptr [ @.str.4, %131 ], [ @.str.7, %135 ], [ @.str.7, %139 ]
  %150 = phi ptr [ %133, %131 ], [ %137, %135 ], [ %141, %139 ]
  %151 = getelementptr inbounds %struct.rproc, ptr %14, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull %149) #8
  %152 = ptrtoint ptr %150 to i32
  br label %153

153:                                              ; preds = %148, %145
  %154 = phi i32 [ %146, %145 ], [ %152, %148 ]
  %155 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 0
  %156 = load ptr, ptr %155, align 4
  tail call void @mbox_free_channel(ptr noundef %156) #7
  %157 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 1
  %158 = load ptr, ptr %157, align 4
  tail call void @mbox_free_channel(ptr noundef %158) #7
  %159 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 2
  %160 = load ptr, ptr %159, align 4
  tail call void @mbox_free_channel(ptr noundef %160) #7
  %161 = getelementptr %struct.st_rproc, ptr %19, i32 0, i32 7, i32 3
  %162 = load ptr, ptr %161, align 4
  tail call void @mbox_free_channel(ptr noundef %162) #7
  br label %163

163:                                              ; preds = %153, %128, %93
  %164 = phi i32 [ %130, %128 ], [ -22, %93 ], [ %154, %153 ]
  %165 = getelementptr inbounds %struct.st_rproc, ptr %19, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  tail call void @clk_unprepare(ptr noundef %166) #7
  br label %167

167:                                              ; preds = %163, %65, %64, %59, %50
  %168 = phi i32 [ %69, %65 ], [ %164, %163 ], [ %62, %64 ], [ -22, %59 ], [ %48, %50 ]
  tail call void @rproc_free(ptr noundef nonnull %14) #7
  br label %169

169:                                              ; preds = %167, %145, %12, %11
  %170 = phi i32 [ %168, %167 ], [ -19, %11 ], [ -12, %12 ], [ 0, %145 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @rproc_del(ptr noundef %3) #7
  %7 = getelementptr inbounds %struct.st_rproc, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  %9 = getelementptr %struct.st_rproc, ptr %5, i32 0, i32 7, i32 0
  %10 = load ptr, ptr %9, align 4
  tail call void @mbox_free_channel(ptr noundef %10) #7
  %11 = getelementptr %struct.st_rproc, ptr %5, i32 0, i32 7, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @mbox_free_channel(ptr noundef %12) #7
  %13 = getelementptr %struct.st_rproc, ptr %5, i32 0, i32 7, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @mbox_free_channel(ptr noundef %14) #7
  %15 = getelementptr %struct.st_rproc, ptr %5, i32 0, i32 7, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void @mbox_free_channel(ptr noundef %16) #7
  tail call void @rproc_free(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_rproc_mbox_callback_vq0(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @rproc_vq_interrupt(ptr noundef %5, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_rproc_mbox_callback_vq1(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @rproc_vq_interrupt(ptr noundef %5, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.st_rproc_config, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 16
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %10, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9) #8
  br label %60

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 4
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @reset_control_deassert(ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 4
  br label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.10) #8
  br label %57

34:                                               ; preds = %30, %21
  %35 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %36 = getelementptr inbounds %struct.st_rproc_config, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @reset_control_deassert(ptr noundef %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #8
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.st_rproc_config, ptr %46, i32 0, i32 1
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %53

50:                                               ; preds = %39, %34
  %51 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %52 = load i64, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.12, i64 noundef %52) #8
  br label %60

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @reset_control_assert(ptr noundef %55) #7
  br label %57

57:                                               ; preds = %53, %44, %32
  %58 = phi i32 [ %28, %32 ], [ %42, %53 ], [ %42, %44 ]
  %59 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %59) #7
  br label %60

60:                                               ; preds = %57, %50, %19
  %61 = phi i32 [ %17, %19 ], [ %58, %57 ], [ 0, %50 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_stop(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13) #8
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = phi i32 [ %10, %12 ], [ 0, %7 ], [ 0, %1 ]
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.st_rproc_config, ptr %16, i32 0, i32 1
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.14) #8
  br label %27

27:                                               ; preds = %25, %20, %14
  %28 = phi i32 [ %23, %25 ], [ 0, %20 ], [ 0, %14 ]
  %29 = getelementptr inbounds %struct.st_rproc, ptr %3, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #7
  %31 = icmp eq i32 %15, 0
  %32 = select i1 %31, i32 %28, i32 %15
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_rproc_kick(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 83, i32 noundef 9, ptr noundef null) #7
  br label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %1, 1
  %12 = or i32 %11, 1
  %13 = getelementptr %struct.st_rproc, ptr %10, i32 0, i32 7, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @mbox_send_message(ptr noundef %14, ptr noundef nonnull %3) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %15) #8
  br label %18

18:                                               ; preds = %17, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_parse_fw(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.of_phandle_iterator, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !12
  %8 = call i32 @of_phandle_iterator_init(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0) #7
  %9 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.of_phandle_iterator, ptr %3, i32 0, i32 8
  br label %13

13:                                               ; preds = %39, %11
  %14 = phi i32 [ 0, %11 ], [ %40, %39 ]
  %15 = load ptr, ptr %12, align 4
  %16 = call ptr @of_reserved_mem_lookup(ptr noundef %15) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18) #8
  br label %45

19:                                               ; preds = %13
  %20 = load ptr, ptr %12, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(12) @.str.19)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.reserved_mem, ptr %16, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.reserved_mem, ptr %16, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr noundef %5, ptr noundef null, i32 noundef %26, i32 noundef %28, i32 noundef %26, ptr noundef nonnull @st_rproc_mem_alloc, ptr noundef nonnull @st_rproc_mem_release, ptr noundef %21) #7
  br label %36

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.reserved_mem, ptr %16, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.reserved_mem, ptr %16, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = call ptr (ptr, i32, i32, i32, ptr, ...) @rproc_of_resm_mem_entry_init(ptr noundef %5, i32 noundef %14, i32 noundef %32, i32 noundef %34, ptr noundef %21) #7
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi ptr [ %29, %24 ], [ %35, %30 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  call void @rproc_add_carveout(ptr noundef %0, ptr noundef nonnull %37) #7
  %40 = add i32 %14, 1
  %41 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %3) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %13, label %43

43:                                               ; preds = %39, %2
  %44 = call i32 @rproc_elf_load_rsc_table(ptr noundef %0, ptr noundef %1) #7
  br label %45

45:                                               ; preds = %43, %36, %18
  %46 = phi i32 [ -22, %18 ], [ %44, %43 ], [ -12, %36 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #7
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_mem_entry_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_mem_alloc(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @ioremap_wc(i32 noundef %6, i32 noundef %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef %5, i32 noundef %12) #8
  br label %14

13:                                               ; preds = %2
  store ptr %9, ptr %1, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ 0, %13 ], [ -12, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rproc_mem_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_of_resm_mem_entry_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_add_carveout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 450343, i64 2147940314, i64 2147940340, i64 2147940387, i64 2147940409, i64 2147940437, i64 2147940457}
!10 = !{i64 2147952526, i64 2147952552, i64 2147952581, i64 2147952615, i64 2147952646, i64 2147952669}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"auto-init"}
