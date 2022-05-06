; ModuleID = '/llk/IR/arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_quirk = type { %struct.list_head, ptr, ptr, %struct.of_phandle_args, %struct.i2c_msg, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_regulator_quirk_rcar_gen2__247_234_rcar_gen2_regulator_quirk3 = internal global ptr @rcar_gen2_regulator_quirk, section ".initcall3.init", align 4
@.str = private unnamed_addr constant [16 x i8] c"renesas,koelsch\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"renesas,lager\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"renesas,porter\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"renesas,stout\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"renesas,gose\00", align 1
@rcar_gen2_quirk_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_msg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_msg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9210_msg }, %struct.of_device_id zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@quirk_list = internal global %struct.list_head { ptr @quirk_list, ptr @quirk_list }, align 4
@irqc = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"\016IRQ2 is asserted, installing regulator quirk\0A\00", align 1
@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@regulator_quirk_nb = internal global %struct.notifier_block { ptr @regulator_quirk_notify, ptr null, i32 0 }, align 4
@da9063_msg = internal global %struct.i2c_msg { i16 0, i16 0, i16 5, ptr @da9063_irq_clr }, align 4
@da9210_msg = internal global %struct.i2c_msg { i16 0, i16 0, i16 3, ptr @da9210_irq_clr }, align 4
@da9063_irq_clr = internal global [5 x i8] c"\0A\FF\FF\FF\FF", align 1
@da9210_irq_clr = internal global [3 x i8] c"T\FF\FF", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@regulator_quirk_notify.done = internal unnamed_addr global i1 false, align 1
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"clearing %s@0x%02x interrupts\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"i2c error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"IRQ2 is not asserted, removing quirk\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_regulator_quirk_rcar_gen2__247_234_rcar_gen2_regulator_quirk3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_gen2_regulator_quirk() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  store ptr null, ptr %1, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %98, label %17

17:                                               ; preds = %14, %11, %8, %5, %0
  %18 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_gen2_quirk_match, ptr noundef nonnull %1) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %74, label %20

20:                                               ; preds = %71, %17
  %21 = phi ptr [ %72, %71 ], [ %18, %17 ]
  %22 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %21) #8
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @of_node_put(ptr noundef nonnull %21) #8
  br label %74

24:                                               ; preds = %20
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %71

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 104) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @of_node_put(ptr noundef nonnull %21) #8
  br label %87

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 3
  %34 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 4
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.of_device_id, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %34, ptr noundef align 1 dereferenceable(12) %37, i32 12, i1 false)
  %38 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 1
  store ptr %35, ptr %38, align 8
  %39 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 2
  store ptr %21, ptr %39, align 4
  %40 = load i32, ptr %2, align 4
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %34, align 8
  %42 = call i32 @of_irq_parse_one(ptr noundef nonnull %21, i32 noundef 0, ptr noundef %33) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load ptr, ptr @quirk_list, align 4
  %46 = icmp eq ptr %45, @quirk_list
  br i1 %46, label %68, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 3, i32 1
  %49 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 3, i32 2
  %50 = getelementptr inbounds %struct.regulator_quirk, ptr %29, i32 0, i32 5
  br label %52

51:                                               ; preds = %32
  call void @kfree(ptr noundef nonnull %29) #8
  br label %71

52:                                               ; preds = %65, %47
  %53 = phi ptr [ %45, %47 ], [ %66, %65 ]
  %54 = load i32, ptr %48, align 4
  %55 = getelementptr inbounds %struct.regulator_quirk, ptr %53, i32 0, i32 3, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.regulator_quirk, ptr %53, i32 0, i32 3, i32 2
  %60 = shl i32 %54, 2
  %61 = call i32 @bcmp(ptr %49, ptr %59, i32 %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.regulator_quirk, ptr %53, i32 0, i32 5
  store i8 1, ptr %64, align 4
  store i8 1, ptr %50, align 4
  br label %65

65:                                               ; preds = %63, %58, %52
  %66 = load ptr, ptr %53, align 4
  %67 = icmp eq ptr %66, @quirk_list
  br i1 %67, label %68, label %52

68:                                               ; preds = %65, %44
  %69 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @quirk_list, i32 0, i32 1), align 4
  store ptr %29, ptr getelementptr inbounds (%struct.list_head, ptr @quirk_list, i32 0, i32 1), align 4
  store ptr @quirk_list, ptr %29, align 8
  %70 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %69, ptr %70, align 4
  store volatile ptr %29, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %51, %24
  %72 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %21, ptr noundef nonnull @rcar_gen2_quirk_match, ptr noundef nonnull %1) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %20

74:                                               ; preds = %71, %23, %17
  %75 = call ptr @ioremap(i32 noundef -434372608, i32 noundef 4096) #8
  store ptr %75, ptr @irqc, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = getelementptr i8, ptr %75, i32 260
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr @irqc, align 4
  call void @iounmap(ptr noundef %83) #8
  br label %87

84:                                               ; preds = %77
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %86 = call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @regulator_quirk_nb) #8
  br label %98

87:                                               ; preds = %82, %74, %31
  %88 = phi i32 [ -12, %31 ], [ 0, %82 ], [ -12, %74 ]
  %89 = load ptr, ptr @quirk_list, align 4
  %90 = icmp eq ptr %89, @quirk_list
  br i1 %90, label %98, label %91

91:                                               ; preds = %91, %87
  %92 = phi ptr [ %93, %91 ], [ %89, %87 ]
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %95, ptr %96, align 4
  store volatile ptr %93, ptr %95, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %92, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %94, align 4
  call void @kfree(ptr noundef %92) #8
  %97 = icmp eq ptr %93, @quirk_list
  br i1 %97, label %98, label %91

98:                                               ; preds = %91, %87, %84, %14
  %99 = phi i32 [ 0, %84 ], [ -19, %14 ], [ %88, %87 ], [ %88, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret i32 %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_quirk_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #6 {
  %4 = load i1, ptr @regulator_quirk_notify.done, align 1
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @irqc, align 4
  %7 = getelementptr i8, ptr %6, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 1
  br i1 %12, label %13, label %69

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, @i2c_adapter_type
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @quirk_list, align 4
  %19 = icmp eq ptr %18, @quirk_list
  br i1 %19, label %51, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 1
  %22 = getelementptr i8, ptr %2, i32 -8
  br label %23

23:                                               ; preds = %48, %20
  %24 = phi ptr [ %18, %20 ], [ %49, %48 ]
  %25 = getelementptr inbounds %struct.regulator_quirk, ptr %24, i32 0, i32 5
  %26 = load i8, ptr %25, align 4, !range !11
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.regulator_quirk, ptr %24, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.device_node, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.regulator_quirk, ptr %24, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.of_device_id, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.regulator_quirk, ptr %24, i32 0, i32 4
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %40, i32 noundef %43) #10
  %44 = load ptr, ptr %22, align 8
  %45 = tail call i32 @i2c_transfer(ptr noundef %44, ptr noundef %41, i32 noundef 1) #8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %45) #10
  br label %48

48:                                               ; preds = %47, %37, %28, %23
  %49 = load ptr, ptr %24, align 4
  %50 = icmp eq ptr %49, @quirk_list
  br i1 %50, label %51, label %23

51:                                               ; preds = %48, %17
  %52 = load ptr, ptr @irqc, align 4
  %53 = getelementptr i8, ptr %52, i32 260
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51, %5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.9) #10
  %58 = load ptr, ptr @quirk_list, align 4
  %59 = icmp eq ptr %58, @quirk_list
  br i1 %59, label %67, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %62, %60 ], [ %58, %57 ]
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %62, ptr %64, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %61, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %63, align 4
  tail call void @kfree(ptr noundef %61) #8
  %66 = icmp eq ptr %62, @quirk_list
  br i1 %66, label %67, label %60

67:                                               ; preds = %60, %57
  store i1 true, ptr @regulator_quirk_notify.done, align 1
  %68 = load ptr, ptr @irqc, align 4
  tail call void @iounmap(ptr noundef %68) #8
  br label %69

69:                                               ; preds = %67, %51, %13, %11, %3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!9 = !{i64 5351097}
!10 = !{i64 2152883060}
!11 = !{i8 0, i8 2}
