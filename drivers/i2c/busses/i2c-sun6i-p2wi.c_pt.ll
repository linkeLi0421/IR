; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-sun6i-p2wi.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-sun6i-p2wi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.p2wi = type { %struct.i2c_adapter, %struct.completion, i32, ptr, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_i2c_sun6i_p2wi__247_335_p2wi_driver_init6 = internal global ptr @p2wi_driver_init, section ".initcall6.init", align 4
@p2wi_driver = internal global %struct.platform_driver { ptr @p2wi_probe, ptr @p2wi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @p2wi_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_p2wi_driver_exit = internal global ptr @p2wi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [75 x i8] c"i2c_sun6i_p2wi.author=Boris BREZILLON <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [49 x i8] c"i2c_sun6i_p2wi.description=Allwinner P2WI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [54 x i8] c"i2c_sun6i_p2wi.file=drivers/i2c/busses/i2c-sun6i-p2wi\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [30 x i8] c"i2c_sun6i_p2wi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"i2c-sunxi-p2wi\00", align 1
@p2wi_of_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-p2wi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"required clock-frequency (%u Hz) is too high (max = 6MHz)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"P2WI only supports one slave device\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"invalid slave address on node %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to retrieve clk: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"failed to retrieve reset controller: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to deassert reset line: %d\0A\00", align 1
@p2wi_algo = internal constant %struct.i2c_algorithm { ptr null, ptr null, ptr @p2wi_smbus_xfer, ptr null, ptr @p2wi_functionality, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"can't register interrupt handler irq%d: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"clock-frequency is too high, setting it to %lu Hz\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"clock-frequency is too low, setting it to %lu Hz\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid P2WI address\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"P2WI bus busy\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"P2WI bus xfer error\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_p2wi_driver_exit, ptr @__initcall__kmod_i2c_sun6i_p2wi__247_335_p2wi_driver_init6, ptr @p2wi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @p2wi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @p2wi_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @p2wi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @p2wi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @p2wi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 100000, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %8 = load i32, ptr %2, align 4
  %9 = icmp ugt i32 %8, 6000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %8) #7
  br label %113

11:                                               ; preds = %1
  %12 = call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ %17, %14 ], [ 0, %11 ]
  %16 = phi ptr [ %18, %14 ], [ %12, %11 ]
  %17 = add i32 %15, 1
  %18 = call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %16) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14

20:                                               ; preds = %14
  %21 = icmp sgt i32 %17, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  br label %113

23:                                               ; preds = %20, %11
  %24 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 696, i32 noundef 3520) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %113, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.p2wi, ptr %24, i32 0, i32 6
  store i32 -1, ptr %27, align 8
  %28 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %28, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #7
  br label %113

34:                                               ; preds = %30
  %35 = load i32, ptr %3, align 4
  store i32 %35, ptr %27, align 8
  br label %36

36:                                               ; preds = %34, %26
  %37 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %38 = getelementptr inbounds %struct.p2wi, ptr %24, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  br label %113

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 12
  %44 = load ptr, ptr %0, align 8
  %45 = call i32 @strscpy(ptr noundef %43, ptr noundef %44, i32 noundef 48) #6
  %46 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %113, label %48

48:                                               ; preds = %42
  %49 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #6
  %50 = getelementptr inbounds %struct.p2wi, ptr %24, i32 0, i32 4
  store ptr %49, ptr %50, align 8
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = ptrtoint ptr %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %53) #7
  br label %113

54:                                               ; preds = %48
  %55 = call i32 @clk_prepare(ptr noundef %49) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = call i32 @clk_enable(ptr noundef %49) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  call void @clk_unprepare(ptr noundef %49) #6
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %58, %60 ], [ %55, %54 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %62) #7
  br label %113

63:                                               ; preds = %57
  %64 = load ptr, ptr %50, align 8
  %65 = call i32 @clk_get_rate(ptr noundef %64) #6
  %66 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %67 = getelementptr inbounds %struct.p2wi, ptr %24, i32 0, i32 5
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = ptrtoint ptr %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %70) #7
  br label %110

71:                                               ; preds = %63
  %72 = call i32 @reset_control_deassert(ptr noundef %66) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %72) #7
  br label %110

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.p2wi, ptr %24, i32 0, i32 1
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.p2wi, ptr %24, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %77, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #6
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9, i32 1
  store ptr %4, ptr %78, align 4
  %79 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 2
  store ptr @p2wi_algo, ptr %79, align 8
  store ptr null, ptr %24, align 8
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9, i32 25
  store ptr %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %82, align 8
  %83 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9, i32 8
  store ptr %24, ptr %83, align 8
  %84 = load ptr, ptr %0, align 8
  %85 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %46, ptr noundef nonnull @p2wi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %84, ptr noundef nonnull %24) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %46, i32 noundef %85) #7
  br label %106

88:                                               ; preds = %75
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  call void @arm_heavy_mb() #6
  %89 = load ptr, ptr %38, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 1) #6, !srcloc !10
  %90 = load i32, ptr %2, align 4
  %91 = icmp ugt i32 %90, %65
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %65) #7
  br label %98

93:                                               ; preds = %88
  %94 = udiv i32 %65, %90
  %95 = icmp sgt i32 %94, 255
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = udiv i32 %65, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %97) #7
  br label %98

98:                                               ; preds = %96, %93, %92
  %99 = phi i32 [ 255, %96 ], [ %94, %93 ], [ 1, %92 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  %100 = and i32 %99, 255
  %101 = or i32 %100, 256
  %102 = load ptr, ptr %38, align 4
  %103 = getelementptr i8, ptr %102, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #6, !srcloc !10
  %104 = call i32 @i2c_add_adapter(ptr noundef nonnull %24) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %98, %87
  %107 = phi i32 [ %85, %87 ], [ %104, %98 ]
  %108 = load ptr, ptr %67, align 4
  %109 = call i32 @reset_control_assert(ptr noundef %108) #6
  br label %110

110:                                              ; preds = %106, %74, %69
  %111 = phi i32 [ %70, %69 ], [ %72, %74 ], [ %107, %106 ]
  %112 = load ptr, ptr %50, align 8
  call void @clk_disable(ptr noundef %112) #6
  call void @clk_unprepare(ptr noundef %112) #6
  br label %113

113:                                              ; preds = %110, %98, %61, %52, %42, %40, %33, %23, %22, %10
  %114 = phi i32 [ -22, %10 ], [ -22, %22 ], [ -22, %33 ], [ %41, %40 ], [ %53, %52 ], [ %62, %61 ], [ %111, %110 ], [ -12, %23 ], [ %46, %42 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @p2wi_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.p2wi, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.p2wi, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  tail call void @i2c_del_adapter(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @p2wi_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %7 = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 8
  %8 = and i32 %6, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !10
  %11 = getelementptr inbounds %struct.p2wi, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %11) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @p2wi_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #2 {
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.p2wi, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp slt i32 %11, 0
  %13 = zext i16 %1 to i32
  %14 = icmp eq i32 %11, %13
  %15 = or i1 %12, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #7
  br label %63

18:                                               ; preds = %7
  %19 = icmp eq ptr %6, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %21 = zext i8 %4 to i32
  %22 = getelementptr inbounds %struct.p2wi, ptr %9, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #6, !srcloc !10
  %25 = icmp eq i8 %3, 1
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %27 = load i8, ptr %6, align 2
  %28 = zext i8 %27 to i32
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !10
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i32 [ 0, %26 ], [ 16, %20 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !10
  %35 = load ptr, ptr %22, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15) #7
  br label %63

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.p2wi, ptr %9, i32 0, i32 1
  store i32 0, ptr %42, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %43 = load ptr, ptr %22, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 7) #6, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 130) #6, !srcloc !10
  tail call void @wait_for_completion(ptr noundef %42) #6
  %46 = getelementptr inbounds %struct.p2wi, ptr %9, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.15) #7
  br label %63

52:                                               ; preds = %41
  %53 = and i32 %47, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.16) #7
  br label %63

57:                                               ; preds = %52
  br i1 %25, label %58, label %63

58:                                               ; preds = %57
  %59 = load ptr, ptr %22, align 4
  %60 = getelementptr i8, ptr %59, i32 28
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %6, align 2
  br label %63

63:                                               ; preds = %58, %57, %55, %50, %39, %18, %16
  %64 = phi i32 [ -22, %16 ], [ -16, %39 ], [ -16, %50 ], [ -6, %55 ], [ -22, %18 ], [ 0, %58 ], [ 0, %57 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @p2wi_functionality(ptr nocapture noundef readnone %0) #5 {
  ret i32 1572864
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2154133629}
!10 = !{i64 5384878}
!11 = !{i64 2154135620}
!12 = !{i64 5385296}
!13 = !{i64 2154121835}
!14 = !{i64 2154122272}
!15 = !{i64 2154123255}
!16 = !{i64 2154123673}
!17 = !{i64 2154124007}
!18 = !{i64 2154124473}
!19 = !{i64 2154125570}
!20 = !{i64 2154126272}
!21 = !{i64 2154128042}
