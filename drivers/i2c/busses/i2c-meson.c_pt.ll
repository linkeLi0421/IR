; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-meson.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-meson.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_i2c_data = type { i8 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.meson_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.spinlock, %struct.completion, [2 x i32], i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_meson__272_523_meson_i2c_driver_init6 = internal global ptr @meson_i2c_driver_init, section ".initcall6.init", align 4
@meson_i2c_driver = internal global %struct.platform_driver { ptr @meson_i2c_probe, ptr @meson_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson_i2c_driver_exit = internal global ptr @meson_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description273 = internal constant [51 x i8] c"i2c_meson.description=Amlogic Meson I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [57 x i8] c"i2c_meson.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [44 x i8] c"i2c_meson.file=drivers/i2c/busses/i2c-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [25 x i8] c"i2c_meson.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"meson-i2c\00", align 1
@meson_i2c_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2c_meson6_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2c_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @i2c_axg_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't get device clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"can't request IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"can't prepare clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Meson I2C adapter\00", align 1
@meson_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @meson_i2c_xfer, ptr @meson_i2c_xfer_atomic, ptr null, ptr null, ptr @meson_i2c_func, ptr null, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"requested bus frequency too low\0A\00", align 1
@i2c_meson6_data = internal constant %struct.meson_i2c_data { i8 4 }, align 1
@i2c_gxbb_data = internal constant %struct.meson_i2c_data { i8 4 }, align 1
@i2c_axg_data = internal constant %struct.meson_i2c_data { i8 3 }, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_meson_i2c_driver_exit, ptr @__initcall__kmod_i2c_meson__272_523_meson_i2c_driver_init6, ptr @meson_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_i2c_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.i2c_timings, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 728, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %106, label %8

8:                                                ; preds = %1
  call void @i2c_parse_fw_timings(ptr noundef %3, ptr noundef nonnull %2, i1 noundef zeroext true) #9
  %9 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 10
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 11
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #9
  %14 = call ptr @of_device_get_match_data(ptr noundef %3) #9
  %15 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 14
  store ptr %14, ptr %15, align 4
  %16 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %17 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 3
  store ptr %16, ptr %17, align 8
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  %20 = load ptr, ptr %17, align 8
  %21 = ptrtoint ptr %20 to i32
  br label %106

22:                                               ; preds = %8
  %23 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %24 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  br label %106

28:                                               ; preds = %22
  %29 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %28
  %32 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %29, ptr noundef nonnull @meson_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %6) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  br label %106

35:                                               ; preds = %31
  %36 = load ptr, ptr %17, align 8
  %37 = call i32 @clk_prepare(ptr noundef %36) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 @clk_enable(ptr noundef %36) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  call void @clk_unprepare(ptr noundef %36) #9
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ %37, %35 ], [ %40, %42 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  br label %106

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 12
  %49 = call i32 @strlcpy(ptr noundef %48, ptr noundef nonnull @.str.4, i32 noundef 48) #9
  store ptr null, ptr %6, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  store ptr @meson_i2c_algorithm, ptr %50, align 8
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 1
  store ptr %3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 25
  store ptr %5, ptr %52, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 3
  store ptr %6, ptr %53, align 4
  %54 = load ptr, ptr %24, align 4
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %56 = and i32 %55, -2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %24, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #9, !srcloc !12
  %58 = call i32 @i2c_add_adapter(ptr noundef nonnull %6) #9
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load ptr, ptr %17, align 8
  call void @clk_disable(ptr noundef %61) #9
  call void @clk_unprepare(ptr noundef %61) #9
  br label %106

62:                                               ; preds = %47
  %63 = load ptr, ptr %24, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %66 = and i32 %65, -16129
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %67 = load ptr, ptr %24, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #9, !srcloc !12
  %69 = load i32, ptr %2, align 4
  %70 = load ptr, ptr %17, align 8
  %71 = call i32 @clk_get_rate(ptr noundef %70) #9
  %72 = add i32 %69, -1
  %73 = add i32 %72, %71
  %74 = udiv i32 %73, %69
  %75 = load ptr, ptr %15, align 4
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add i32 %74, -16
  %79 = add i32 %78, %77
  %80 = udiv i32 %79, %77
  %81 = icmp ugt i32 %80, 4095
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load ptr, ptr %9, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.6) #10
  br label %84

84:                                               ; preds = %82, %62
  %85 = phi i32 [ 4095, %82 ], [ %80, %62 ]
  %86 = shl nuw nsw i32 %85, 12
  %87 = and i32 %86, 4190208
  %88 = load ptr, ptr %24, align 4
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %90 = and i32 %89, -4190209
  %91 = or i32 %90, %87
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %24, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %91) #9, !srcloc !12
  %93 = shl nuw nsw i32 %85, 18
  %94 = and i32 %93, 805306368
  %95 = load ptr, ptr %24, align 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %97 = and i32 %96, -805306369
  %98 = or i32 %97, %94
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %24, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %98) #9, !srcloc !12
  %100 = load ptr, ptr %24, align 4
  %101 = getelementptr i8, ptr %100, i32 4
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %103 = and i32 %102, -268435457
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %104 = load ptr, ptr %24, align 4
  %105 = getelementptr i8, ptr %104, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !12
  br label %106

106:                                              ; preds = %84, %60, %46, %34, %28, %26, %19, %1
  %107 = phi i32 [ %21, %19 ], [ %27, %26 ], [ %32, %34 ], [ %44, %46 ], [ %58, %60 ], [ 0, %84 ], [ -12, %1 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_del_adapter(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.meson_i2c, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_i2c_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 12
  store i32 0, ptr %4, align 8
  %5 = getelementptr %struct.meson_i2c, ptr %1, i32 0, i32 12, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 13
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %10 = and i32 %9, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #9, !srcloc !12
  %12 = load ptr, ptr %7, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %14 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %105

20:                                               ; preds = %2
  %21 = and i32 %13, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 9
  store i32 -6, ptr %24, align 8
  br label %91

25:                                               ; preds = %20
  %26 = icmp eq i32 %15, 1
  br i1 %26, label %27, label %79

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 7
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %79, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i8, ptr %39, i32 24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 28
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %45 = icmp sgt i32 %29, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = tail call i32 @llvm.smin.i32(i32 %29, i32 4) #9
  %48 = trunc i32 %41 to i8
  %49 = getelementptr i8, ptr %38, i32 1
  store i8 %48, ptr %38, align 1
  %50 = icmp eq i32 %47, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %65, %60, %55, %46, %31
  %52 = phi ptr [ %38, %31 ], [ %49, %46 ], [ %58, %55 ], [ %63, %60 ], [ %68, %65 ]
  %53 = tail call i32 @llvm.smin.i32(i32 %29, i32 8) #9
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %69, label %79

55:                                               ; preds = %46
  %56 = lshr i32 %41, 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr i8, ptr %49, i32 1
  store i8 %57, ptr %49, align 1
  %59 = icmp eq i32 %47, 2
  br i1 %59, label %51, label %60

60:                                               ; preds = %55
  %61 = lshr i32 %41, 16
  %62 = trunc i32 %61 to i8
  %63 = getelementptr i8, ptr %58, i32 1
  store i8 %62, ptr %58, align 1
  %64 = icmp eq i32 %47, 3
  br i1 %64, label %51, label %65

65:                                               ; preds = %60
  %66 = lshr i32 %41, 24
  %67 = trunc i32 %66 to i8
  %68 = getelementptr i8, ptr %63, i32 1
  store i8 %67, ptr %63, align 1
  br label %51

69:                                               ; preds = %69, %51
  %70 = phi ptr [ %76, %69 ], [ %52, %51 ]
  %71 = phi i32 [ %77, %69 ], [ 4, %51 ]
  %72 = shl i32 %71, 3
  %73 = add nsw i32 %72, -32
  %74 = lshr i32 %44, %73
  %75 = trunc i32 %74 to i8
  %76 = getelementptr i8, ptr %70, i32 1
  store i8 %75, ptr %70, align 1
  %77 = add nuw nsw i32 %71, 1
  %78 = icmp eq i32 %77, %53
  br i1 %78, label %79, label %69

79:                                               ; preds = %69, %51, %27, %25
  %80 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 7
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 2
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %79, %23
  store i32 0, ptr %14, align 8
  br label %95

92:                                               ; preds = %79
  %93 = load i32, ptr %14, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %91
  %96 = getelementptr inbounds %struct.meson_i2c, ptr %1, i32 0, i32 11
  tail call void @complete(ptr noundef %96) #9
  br label %102

97:                                               ; preds = %92
  tail call fastcc void @meson_i2c_prepare_xfer(ptr noundef %1)
  %98 = load ptr, ptr %7, align 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %100 = or i32 %99, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #9, !srcloc !12
  br label %102

102:                                              ; preds = %97, %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %103 = load i16, ptr %3, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %105

105:                                              ; preds = %102, %17
  %106 = phi i32 [ 0, %17 ], [ 1, %102 ]
  ret i32 %106
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_i2c_prepare_xfer(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 8)
  %15 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 7
  store i32 %14, ptr %15, align 8
  %16 = add i32 %14, -1
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 13
  %20 = getelementptr %struct.meson_i2c, ptr %0, i32 0, i32 12, i32 1
  %21 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %19, align 8
  br label %23

23:                                               ; preds = %37, %18
  %24 = phi i32 [ %22, %18 ], [ %38, %37 ]
  %25 = phi i32 [ 0, %18 ], [ %39, %37 ]
  %26 = icmp slt i32 %24, 8
  %27 = shl i32 %24, 2
  br i1 %26, label %28, label %32

28:                                               ; preds = %23
  %29 = shl i32 4, %27
  %30 = load i32, ptr %21, align 8
  %31 = or i32 %30, %29
  store i32 %31, ptr %21, align 8
  br label %37

32:                                               ; preds = %23
  %33 = and i32 %27, 28
  %34 = shl nuw nsw i32 4, %33
  %35 = load i32, ptr %20, align 4
  %36 = or i32 %35, %34
  store i32 %36, ptr %20, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = add i32 %24, 1
  %39 = add nuw nsw i32 %25, 1
  %40 = icmp eq i32 %39, %16
  br i1 %40, label %41, label %23

41:                                               ; preds = %37
  store i32 %38, ptr %19, align 8
  br label %42

42:                                               ; preds = %41, %1
  %43 = icmp eq i32 %14, 0
  br i1 %43, label %86, label %44

44:                                               ; preds = %42
  br i1 %7, label %50, label %45

45:                                               ; preds = %44
  %46 = add i32 %14, %12
  %47 = load i16, ptr %8, align 4
  %48 = zext i16 %47 to i32
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45, %44
  %51 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 13
  %52 = load i32, ptr %51, align 8
  %53 = icmp slt i32 %52, 8
  %54 = shl i32 %52, 2
  br i1 %53, label %55, label %60

55:                                               ; preds = %50
  %56 = shl i32 4, %54
  %57 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 12
  %58 = load i32, ptr %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, ptr %57, align 8
  br label %84

60:                                               ; preds = %50
  %61 = and i32 %54, 28
  %62 = shl nuw nsw i32 4, %61
  %63 = getelementptr %struct.meson_i2c, ptr %0, i32 0, i32 12, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, ptr %63, align 4
  br label %84

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 13
  %68 = load i32, ptr %67, align 8
  %69 = icmp slt i32 %68, 8
  %70 = shl i32 %68, 2
  br i1 %69, label %71, label %76

71:                                               ; preds = %66
  %72 = shl i32 5, %70
  %73 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 12
  %74 = load i32, ptr %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, ptr %73, align 8
  br label %82

76:                                               ; preds = %66
  %77 = and i32 %70, 28
  %78 = shl nuw nsw i32 5, %77
  %79 = getelementptr %struct.meson_i2c, ptr %0, i32 0, i32 12, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = add i32 %68, 1
  store i32 %83, ptr %67, align 8
  br label %131

84:                                               ; preds = %60, %55
  %85 = add i32 %52, 1
  store i32 %85, ptr %51, align 8
  br i1 %7, label %87, label %131

86:                                               ; preds = %42
  br i1 %7, label %123, label %131

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %12
  %91 = icmp sgt i32 %13, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %87
  %93 = tail call i32 @llvm.smin.i32(i32 %13, i32 4)
  br label %98

94:                                               ; preds = %98
  %95 = icmp sgt i32 %14, 4
  br i1 %95, label %96, label %123

96:                                               ; preds = %94
  %97 = getelementptr i8, ptr %90, i32 %93
  br label %110

98:                                               ; preds = %98, %92
  %99 = phi ptr [ %102, %98 ], [ %90, %92 ]
  %100 = phi i32 [ %107, %98 ], [ 0, %92 ]
  %101 = phi i32 [ %108, %98 ], [ 0, %92 ]
  %102 = getelementptr i8, ptr %99, i32 1
  %103 = load i8, ptr %99, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %101, 3
  %106 = shl i32 %104, %105
  %107 = or i32 %106, %100
  %108 = add nuw nsw i32 %101, 1
  %109 = icmp eq i32 %108, %93
  br i1 %109, label %94, label %98

110:                                              ; preds = %110, %96
  %111 = phi ptr [ %114, %110 ], [ %97, %96 ]
  %112 = phi i32 [ %120, %110 ], [ 0, %96 ]
  %113 = phi i32 [ %121, %110 ], [ 4, %96 ]
  %114 = getelementptr i8, ptr %111, i32 1
  %115 = load i8, ptr %111, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %113, 3
  %118 = add nsw i32 %117, -32
  %119 = shl i32 %116, %118
  %120 = or i32 %119, %112
  %121 = add nuw nsw i32 %113, 1
  %122 = icmp eq i32 %121, %14
  br i1 %122, label %123, label %110

123:                                              ; preds = %110, %94, %87, %86
  %124 = phi i32 [ %107, %94 ], [ 0, %87 ], [ 0, %86 ], [ %107, %110 ]
  %125 = phi i32 [ 0, %94 ], [ 0, %87 ], [ 0, %86 ], [ %120, %110 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %126 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %124) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %129 = load ptr, ptr %126, align 4
  %130 = getelementptr i8, ptr %129, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %125) #9, !srcloc !12
  br label %131

131:                                              ; preds = %123, %86, %84, %82
  %132 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 6
  %133 = load i8, ptr %132, align 4, !range !22
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %162, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %11, align 4
  %137 = load i32, ptr %15, align 8
  %138 = add i32 %137, %136
  %139 = load ptr, ptr %2, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 0, i32 2
  %141 = load i16, ptr %140, align 4
  %142 = zext i16 %141 to i32
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %162, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 13
  %146 = load i32, ptr %145, align 8
  %147 = icmp slt i32 %146, 8
  %148 = shl i32 %146, 2
  br i1 %147, label %149, label %154

149:                                              ; preds = %144
  %150 = shl i32 6, %148
  %151 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 12
  %152 = load i32, ptr %151, align 8
  %153 = or i32 %152, %150
  store i32 %153, ptr %151, align 8
  br label %160

154:                                              ; preds = %144
  %155 = and i32 %148, 28
  %156 = shl nuw nsw i32 6, %155
  %157 = getelementptr %struct.meson_i2c, ptr %0, i32 0, i32 12, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %154, %149
  %161 = add i32 %146, 1
  store i32 %161, ptr %145, align 8
  br label %162

162:                                              ; preds = %160, %135, %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %163 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 12
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.meson_i2c, ptr %0, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr i8, ptr %166, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %164) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %168 = getelementptr %struct.meson_i2c, ptr %0, i32 0, i32 12, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr %165, align 4
  %171 = getelementptr i8, ptr %170, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @meson_i2c_xfer_messages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_i2c_xfer_atomic(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @meson_i2c_xfer_messages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @meson_i2c_func(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_i2c_xfer_messages(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %211

8:                                                ; preds = %4
  %9 = add nsw i32 %2, -1
  %10 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 4
  %11 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 6
  %12 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 8
  %13 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 7
  %14 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 9
  %15 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 12
  %16 = getelementptr %struct.meson_i2c, ptr %6, i32 0, i32 12, i32 1
  %17 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 13
  %18 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 2
  %19 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 5
  %20 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 11
  %21 = getelementptr inbounds %struct.meson_i2c, ptr %6, i32 0, i32 10
  br label %22

22:                                               ; preds = %208, %8
  %23 = phi i32 [ 0, %8 ], [ %209, %208 ]
  %24 = getelementptr %struct.i2c_msg, ptr %1, i32 %23
  %25 = icmp eq i32 %23, %9
  store ptr %24, ptr %10, align 4
  %26 = zext i1 %25 to i8
  store i8 %26, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i32 0, ptr %13, align 8
  store i32 0, ptr %14, align 8
  store i32 0, ptr %15, align 8
  store i32 0, ptr %16, align 4
  store i32 0, ptr %17, align 8
  %27 = getelementptr %struct.i2c_msg, ptr %1, i32 %23, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = lshr i16 %28, 11
  %30 = load ptr, ptr %18, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %32 = and i32 %31, -3
  %33 = and i16 %29, 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %32, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #9, !srcloc !12
  %37 = load i16, ptr %27, align 2
  %38 = and i16 %37, 16384
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %22
  %41 = load i16, ptr %24, align 4
  %42 = zext i16 %41 to i32
  %43 = shl nuw nsw i32 %42, 1
  %44 = and i16 %37, 1
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %45, i32 2, i32 3
  %47 = and i32 %43, 254
  %48 = load ptr, ptr %18, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %51 = and i32 %50, -256
  %52 = or i32 %51, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %53 = load ptr, ptr %18, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #9, !srcloc !12
  %55 = load i32, ptr %17, align 8
  %56 = icmp slt i32 %55, 8
  %57 = shl i32 %55, 2
  br i1 %56, label %58, label %62

58:                                               ; preds = %40
  %59 = shl nuw i32 1, %57
  %60 = load i32, ptr %15, align 8
  %61 = or i32 %60, %59
  store i32 %61, ptr %15, align 8
  br label %67

62:                                               ; preds = %40
  %63 = and i32 %57, 28
  %64 = shl nuw nsw i32 1, %63
  %65 = load i32, ptr %16, align 4
  %66 = or i32 %65, %64
  store i32 %66, ptr %16, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = add i32 %55, 1
  %69 = icmp slt i32 %68, 8
  %70 = shl i32 %68, 2
  br i1 %69, label %71, label %75

71:                                               ; preds = %67
  %72 = shl i32 %46, %70
  %73 = load i32, ptr %15, align 8
  %74 = or i32 %73, %72
  store i32 %74, ptr %15, align 8
  br label %80

75:                                               ; preds = %67
  %76 = and i32 %70, 28
  %77 = shl nuw nsw i32 %46, %76
  %78 = load i32, ptr %16, align 4
  %79 = or i32 %78, %77
  store i32 %79, ptr %16, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = add i32 %55, 2
  store i32 %81, ptr %17, align 8
  %82 = load i16, ptr %27, align 2
  br label %83

83:                                               ; preds = %80, %22
  %84 = phi i16 [ %82, %80 ], [ %37, %22 ]
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  %87 = select i1 %86, i32 2, i32 1
  store i32 %87, ptr %19, align 8
  tail call fastcc void @meson_i2c_prepare_xfer(ptr noundef %6) #9
  br i1 %3, label %96, label %88

88:                                               ; preds = %83
  store i32 0, ptr %20, align 4
  %89 = load ptr, ptr %18, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %91 = or i32 %90, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %91) #9, !srcloc !12
  %93 = tail call i32 @wait_for_completion_timeout(ptr noundef %20, i32 noundef 50) #9
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 -110, i32 0
  br label %121

96:                                               ; preds = %83
  %97 = load ptr, ptr %18, align 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %99 = or i32 %98, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %100 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %99) #9, !srcloc !12
  %101 = tail call i64 @ktime_get() #9
  %102 = add i64 %101, 500000000
  %103 = load ptr, ptr %18, align 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %110, %96
  %108 = tail call i64 @ktime_get() #9
  %109 = icmp sgt i64 %108, %102
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 2147480) #9
  %112 = load ptr, ptr %18, align 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %114 = and i32 %113, 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %125, label %107

116:                                              ; preds = %107
  %117 = load ptr, ptr %18, align 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116, %88
  %122 = phi i32 [ -110, %116 ], [ %95, %88 ]
  %123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #9
  %124 = icmp ne i32 %122, 0
  br label %194

125:                                              ; preds = %116, %110, %96
  %126 = phi i32 [ %118, %116 ], [ %104, %96 ], [ %113, %110 ]
  %127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #9
  br i1 %3, label %128, label %194

128:                                              ; preds = %125
  %129 = and i32 %126, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  store i32 -6, ptr %14, align 8
  br label %193

132:                                              ; preds = %128
  %133 = load i32, ptr %19, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %184

135:                                              ; preds = %132
  %136 = load i32, ptr %13, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %184, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %10, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %12, align 4
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = load ptr, ptr %18, align 4
  %145 = getelementptr i8, ptr %144, i32 24
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %147 = load ptr, ptr %18, align 4
  %148 = getelementptr i8, ptr %147, i32 28
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %150 = icmp sgt i32 %136, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %138
  %152 = tail call i32 @llvm.smin.i32(i32 %136, i32 4) #9
  %153 = trunc i32 %146 to i8
  %154 = getelementptr i8, ptr %143, i32 1
  store i8 %153, ptr %143, align 1
  %155 = icmp eq i32 %152, 1
  br i1 %155, label %156, label %160

156:                                              ; preds = %170, %165, %160, %151, %138
  %157 = phi ptr [ %143, %138 ], [ %154, %151 ], [ %163, %160 ], [ %168, %165 ], [ %173, %170 ]
  %158 = tail call i32 @llvm.smin.i32(i32 %136, i32 8) #9
  %159 = icmp sgt i32 %158, 4
  br i1 %159, label %174, label %184

160:                                              ; preds = %151
  %161 = lshr i32 %146, 8
  %162 = trunc i32 %161 to i8
  %163 = getelementptr i8, ptr %154, i32 1
  store i8 %162, ptr %154, align 1
  %164 = icmp eq i32 %152, 2
  br i1 %164, label %156, label %165

165:                                              ; preds = %160
  %166 = lshr i32 %146, 16
  %167 = trunc i32 %166 to i8
  %168 = getelementptr i8, ptr %163, i32 1
  store i8 %167, ptr %163, align 1
  %169 = icmp eq i32 %152, 3
  br i1 %169, label %156, label %170

170:                                              ; preds = %165
  %171 = lshr i32 %146, 24
  %172 = trunc i32 %171 to i8
  %173 = getelementptr i8, ptr %168, i32 1
  store i8 %172, ptr %168, align 1
  br label %156

174:                                              ; preds = %174, %156
  %175 = phi ptr [ %181, %174 ], [ %157, %156 ]
  %176 = phi i32 [ %182, %174 ], [ 4, %156 ]
  %177 = shl i32 %176, 3
  %178 = add nsw i32 %177, -32
  %179 = lshr i32 %149, %178
  %180 = trunc i32 %179 to i8
  %181 = getelementptr i8, ptr %175, i32 1
  store i8 %180, ptr %175, align 1
  %182 = add nuw nsw i32 %176, 1
  %183 = icmp eq i32 %182, %158
  br i1 %183, label %184, label %174

184:                                              ; preds = %174, %156, %135, %132
  %185 = load i32, ptr %13, align 8
  %186 = load i32, ptr %12, align 4
  %187 = add i32 %186, %185
  store i32 %187, ptr %12, align 4
  %188 = load ptr, ptr %10, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %188, i32 0, i32 2
  %190 = load i16, ptr %189, align 4
  %191 = zext i16 %190 to i32
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %184, %131
  store i32 0, ptr %19, align 8
  br label %194

194:                                              ; preds = %193, %184, %125, %121
  %195 = phi i1 [ %124, %121 ], [ false, %193 ], [ false, %184 ], [ false, %125 ]
  %196 = phi i32 [ %123, %121 ], [ %127, %193 ], [ %127, %184 ], [ %127, %125 ]
  %197 = phi i32 [ %122, %121 ], [ 0, %193 ], [ 0, %184 ], [ 0, %125 ]
  %198 = load ptr, ptr %18, align 4
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %200 = and i32 %199, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %201 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %200) #9, !srcloc !12
  br i1 %195, label %202, label %203

202:                                              ; preds = %194
  store i32 0, ptr %19, align 8
  br label %203

203:                                              ; preds = %202, %194
  %204 = load i32, ptr %14, align 8
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, i32 %197, i32 %204
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %196) #9
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = add nuw nsw i32 %23, 1
  %210 = icmp eq i32 %209, %2
  br i1 %210, label %211, label %22

211:                                              ; preds = %208, %203, %4
  %212 = phi i32 [ 0, %4 ], [ %2, %208 ], [ %206, %203 ]
  ret i32 %212
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 5420573}
!10 = !{i64 2154172047}
!11 = !{i64 2154172231}
!12 = !{i64 5420155}
!13 = !{i64 2154275963}
!14 = !{i64 2148917197}
!15 = !{i64 2148913021}
!16 = !{i64 2148913096, i64 2148913123, i64 2148913170, i64 2148913192, i64 2148913220, i64 2148913240}
!17 = !{i64 2148940200}
!18 = !{i64 2154265507}
!19 = !{i64 2154265843}
!20 = !{i64 2154271606}
!21 = !{i64 2154271932}
!22 = !{i8 0, i8 2}
!23 = !{i64 2154274433}
!24 = !{i64 2154274783}
!25 = !{i64 2154319598}
!26 = !{i64 2154319929}
