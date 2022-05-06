; ModuleID = '/llk/IR/drivers/irqchip/irq-st.c_pt.bc'
source_filename = "../drivers/irqchip/irq-st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.st_irq_syscfg = type { ptr, i32, i32, i8 }

@__initcall__kmod_irq_st__166_203_st_irq_syscfg_init1 = internal global ptr @st_irq_syscfg_init, section ".initcall1.init", align 4
@st_irq_syscfg_driver = internal global %struct.platform_driver { ptr @st_irq_syscfg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_irq_syscfg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_irq_syscfg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"st_irq_syscfg\00", align 1
@st_irq_syscfg_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih415-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 168 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2172 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 408 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stid127-irq-syscfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 136 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@st_irq_syscfg_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @st_irq_syscfg_resume, ptr null, ptr @st_irq_syscfg_resume, ptr null, ptr @st_irq_syscfg_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"syscfg phandle missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"st,irq-device\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"st,enable-irq-device must have 2 elems\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"st,fiq-device\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"st,enable-fiq-device must have 2 elems\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"st,invert-ext\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unrecognised device %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_irq_st__166_203_st_irq_syscfg_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_irq_syscfg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_irq_syscfg_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_irq_syscfg_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %120, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @st_irq_syscfg_match, ptr noundef %4) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %120, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr inbounds %struct.st_irq_syscfg, ptr %7, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %6, ptr noundef nonnull @.str.1) #5
  store ptr %17, ptr %7, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  %20 = load ptr, ptr %7, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %120

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %23, align 8
  %24 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %25 = tail call i32 @of_property_count_elems_of_size(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef 4) #5
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  br label %118

28:                                               ; preds = %22
  %29 = tail call i32 @of_property_count_elems_of_size(ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef 4) #5
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @of_property_read_u32_index(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull %2) #5
  %33 = load i32, ptr %2, align 4
  %34 = load ptr, ptr %23, align 8
  switch i32 %33, label %50 [
    i32 0, label %43
    i32 1, label %36
    i32 2, label %37
    i32 3, label %38
    i32 4, label %39
    i32 5, label %40
    i32 6, label %41
    i32 7, label %42
    i32 -1, label %52
  ]

35:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  br label %118

36:                                               ; preds = %31
  br label %43

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  br label %43

39:                                               ; preds = %31
  br label %43

40:                                               ; preds = %31
  br label %43

41:                                               ; preds = %31
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %31
  %44 = phi i32 [ 16, %42 ], [ 8, %41 ], [ 4, %40 ], [ 2, %39 ], [ 1, %38 ], [ 128, %37 ], [ 64, %36 ], [ 32, %31 ]
  %45 = getelementptr inbounds %struct.st_irq_syscfg, ptr %34, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = shl nuw nsw i32 %33, 14
  %48 = or i32 %44, %47
  %49 = or i32 %48, %46
  store i32 %49, ptr %45, align 4
  br label %52

50:                                               ; preds = %72, %31
  %51 = phi i32 [ %33, %31 ], [ %74, %72 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %51) #6
  br label %118

52:                                               ; preds = %43, %31
  %53 = call i32 @of_property_read_u32_index(ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull %2) #5
  %54 = load i32, ptr %2, align 4
  %55 = load ptr, ptr %23, align 8
  switch i32 %54, label %70 [
    i32 0, label %63
    i32 1, label %56
    i32 2, label %57
    i32 3, label %58
    i32 4, label %59
    i32 5, label %60
    i32 6, label %61
    i32 7, label %62
    i32 -1, label %72
  ]

56:                                               ; preds = %52
  br label %63

57:                                               ; preds = %52
  br label %63

58:                                               ; preds = %52
  br label %63

59:                                               ; preds = %52
  br label %63

60:                                               ; preds = %52
  br label %63

61:                                               ; preds = %52
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %57, %56, %52
  %64 = phi i32 [ 16, %62 ], [ 8, %61 ], [ 4, %60 ], [ 2, %59 ], [ 1, %58 ], [ 128, %57 ], [ 64, %56 ], [ 32, %52 ]
  %65 = getelementptr inbounds %struct.st_irq_syscfg, ptr %55, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = shl nuw nsw i32 %54, 8
  %68 = or i32 %64, %67
  %69 = or i32 %68, %66
  store i32 %69, ptr %65, align 4
  br label %72

70:                                               ; preds = %90, %52
  %71 = phi i32 [ %54, %52 ], [ %92, %90 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %71) #6
  br label %118

72:                                               ; preds = %63, %52
  %73 = call i32 @of_property_read_u32_index(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull %2) #5
  %74 = load i32, ptr %2, align 4
  %75 = load ptr, ptr %23, align 8
  switch i32 %74, label %50 [
    i32 0, label %83
    i32 1, label %82
    i32 2, label %81
    i32 3, label %80
    i32 4, label %79
    i32 5, label %78
    i32 6, label %77
    i32 7, label %76
    i32 -1, label %90
  ]

76:                                               ; preds = %72
  br label %83

77:                                               ; preds = %72
  br label %83

78:                                               ; preds = %72
  br label %83

79:                                               ; preds = %72
  br label %83

80:                                               ; preds = %72
  br label %83

81:                                               ; preds = %72
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %81, %80, %79, %78, %77, %76, %72
  %84 = phi i32 [ 16, %76 ], [ 8, %77 ], [ 4, %78 ], [ 2, %79 ], [ 1, %80 ], [ 128, %81 ], [ 64, %82 ], [ 32, %72 ]
  %85 = getelementptr inbounds %struct.st_irq_syscfg, ptr %75, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = shl nuw nsw i32 %74, 17
  %88 = or i32 %84, %87
  %89 = or i32 %88, %86
  store i32 %89, ptr %85, align 4
  br label %90

90:                                               ; preds = %83, %72
  %91 = call i32 @of_property_read_u32_index(ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef nonnull %2) #5
  %92 = load i32, ptr %2, align 4
  %93 = load ptr, ptr %23, align 8
  switch i32 %92, label %70 [
    i32 0, label %101
    i32 1, label %100
    i32 2, label %99
    i32 3, label %98
    i32 4, label %97
    i32 5, label %96
    i32 6, label %95
    i32 7, label %94
    i32 -1, label %108
  ]

94:                                               ; preds = %90
  br label %101

95:                                               ; preds = %90
  br label %101

96:                                               ; preds = %90
  br label %101

97:                                               ; preds = %90
  br label %101

98:                                               ; preds = %90
  br label %101

99:                                               ; preds = %90
  br label %101

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %99, %98, %97, %96, %95, %94, %90
  %102 = phi i32 [ 16, %94 ], [ 8, %95 ], [ 4, %96 ], [ 2, %97 ], [ 1, %98 ], [ 128, %99 ], [ 64, %100 ], [ 32, %90 ]
  %103 = getelementptr inbounds %struct.st_irq_syscfg, ptr %93, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = shl nuw nsw i32 %92, 11
  %106 = or i32 %102, %105
  %107 = or i32 %106, %104
  store i32 %107, ptr %103, align 4
  br label %108

108:                                              ; preds = %101, %90
  %109 = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %110 = load i32, ptr %3, align 4
  %111 = shl i32 %110, 20
  %112 = getelementptr inbounds %struct.st_irq_syscfg, ptr %7, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, %111
  store i32 %114, ptr %112, align 4
  %115 = load ptr, ptr %7, align 4
  %116 = load i32, ptr %16, align 4
  %117 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef %116, i32 noundef 2097151, i32 noundef %114, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %118

118:                                              ; preds = %108, %70, %50, %35, %27
  %119 = phi i32 [ -22, %27 ], [ -22, %35 ], [ %117, %108 ], [ -22, %50 ], [ -22, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %120

120:                                              ; preds = %118, %19, %9, %1
  %121 = phi i32 [ %21, %19 ], [ %119, %118 ], [ -12, %1 ], [ -19, %9 ]
  ret i32 %121
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_irq_syscfg_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.st_irq_syscfg, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.st_irq_syscfg, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef 2097151, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %9
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
