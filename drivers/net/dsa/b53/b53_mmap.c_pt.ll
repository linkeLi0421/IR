; ModuleID = '/llk/IR/drivers/net/dsa/b53/b53_mmap.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_mmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.b53_platform_data = type { %struct.dsa_chip_data, i32, i16, i8, ptr }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }

@b53_mmap_of_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm3384-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6368-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63xx-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author453 = internal constant [39 x i8] c"author=Jonas Gorski <jogo@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description454 = internal constant [35 x i8] c"description=B53 MMAP access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license455 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@b53_mmap_driver = internal global %struct.platform_driver { ptr @b53_mmap_probe, ptr @b53_mmap_remove, ptr @b53_mmap_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_mmap_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"b53-switch\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"OF probe error\0A\00", align 1
@b53_mmap_ops = internal constant %struct.b53_io_ops { ptr @b53_mmap_read8, ptr @b53_mmap_read16, ptr @b53_mmap_read32, ptr @b53_mmap_read48, ptr @b53_mmap_read64, ptr @b53_mmap_write8, ptr @b53_mmap_write16, ptr @b53_mmap_write32, ptr @b53_mmap_write48, ptr @b53_mmap_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"no ports child node found\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"drivers/net/dsa/b53/b53_mmap.c\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_description454, ptr @__UNIQUE_ID_license455], section "llvm.metadata"

@__mod_of__b53_mmap_of_table_device_table = dso_local alias [5 x %struct.of_device_id], ptr @b53_mmap_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @b53_mmap_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @b53_mmap_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp ne ptr %5, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %55

11:                                               ; preds = %1
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %51, label %14

14:                                               ; preds = %11
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 176, i32 noundef 3520) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.b53_platform_data, ptr %15, i32 0, i32 4
  store ptr %12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.b53_platform_data, ptr %15, i32 0, i32 1
  store i32 25344, ptr %19, align 4
  %20 = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %21 = icmp ne ptr %20, null
  %22 = getelementptr inbounds %struct.b53_platform_data, ptr %15, i32 0, i32 3
  %23 = zext i1 %21 to i8
  %24 = load i8, ptr %22, align 2
  %25 = and i8 %24, -2
  %26 = or i8 %25, %23
  store i8 %26, ptr %22, align 2
  %27 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.3) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %53

30:                                               ; preds = %17
  %31 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %27, ptr noundef null) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.b53_platform_data, ptr %15, i32 0, i32 2
  br label %35

35:                                               ; preds = %47, %33
  %36 = phi ptr [ %31, %33 ], [ %48, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %36, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 4
  %41 = icmp ult i32 %40, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = shl nuw nsw i32 1, %40
  %44 = load i16, ptr %34, align 4
  %45 = trunc i32 %43 to i16
  %46 = or i16 %44, %45
  store i16 %46, ptr %34, align 4
  br label %47

47:                                               ; preds = %42, %39, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %48 = call ptr @of_get_next_available_child(ptr noundef nonnull %27, ptr noundef nonnull %36) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %35

50:                                               ; preds = %47, %30
  call void @of_node_put(ptr noundef nonnull %27) #6
  br label %55

51:                                               ; preds = %11
  %52 = ptrtoint ptr %12 to i32
  br label %53

53:                                               ; preds = %51, %29, %14
  %54 = phi i32 [ %52, %51 ], [ -12, %14 ], [ -22, %29 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %70

55:                                               ; preds = %50, %1
  %56 = phi ptr [ %7, %1 ], [ %15, %50 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 4, i32 noundef 3520) #6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.b53_platform_data, ptr %56, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  store ptr %63, ptr %59, align 4
  %64 = call ptr @b53_switch_alloc(ptr noundef %3, ptr noundef nonnull @b53_mmap_ops, ptr noundef nonnull %59) #6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.b53_device, ptr %64, i32 0, i32 1
  store ptr %56, ptr %67, align 4
  %68 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %64, ptr %68, align 8
  %69 = call i32 @b53_switch_register(ptr noundef nonnull %64) #6
  br label %70

70:                                               ; preds = %66, %61, %58, %55, %53
  %71 = phi i32 [ %54, %53 ], [ %69, %66 ], [ -22, %55 ], [ -12, %58 ], [ -12, %61 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_unregister_switch(ptr noundef %6) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b53_mmap_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %6) #6
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_read8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = zext i8 %2 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  store i8 %13, ptr %3, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_read16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 47, i32 noundef 9, ptr noundef null) #6
  br label %36

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = zext i8 %1 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %8
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #6, !srcloc !12
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %34

28:                                               ; preds = %16, %12
  %29 = zext i8 %1 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr i8, ptr %7, i32 %30
  %32 = getelementptr i8, ptr %31, i32 %8
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i16 [ %33, %28 ], [ %27, %21 ]
  store i16 %35, ptr %3, align 2
  br label %36

36:                                               ; preds = %34, %11
  %37 = phi i32 [ -22, %11 ], [ 0, %34 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_read32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 63, i32 noundef 9, ptr noundef null) #6
  br label %36

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = zext i8 %1 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !15
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  br label %34

28:                                               ; preds = %16, %12
  %29 = zext i8 %1 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr i8, ptr %7, i32 %30
  %32 = getelementptr i8, ptr %31, i32 %8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i32 [ %33, %28 ], [ %27, %21 ]
  store i32 %35, ptr %3, align 4
  br label %36

36:                                               ; preds = %34, %11
  %37 = phi i32 [ -22, %11 ], [ 0, %34 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_read48(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 79, i32 noundef 9, ptr noundef null) #6
  br label %82

12:                                               ; preds = %4
  %13 = and i32 %8, 3
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %14, label %49, label %18

18:                                               ; preds = %12
  br i1 %17, label %34, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.b53_platform_data, ptr %16, i32 0, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = zext i8 %1 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr i8, ptr %7, i32 %26
  %28 = getelementptr i8, ptr %27, i32 %8
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #6, !srcloc !12
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %31 = getelementptr i8, ptr %28, i32 2
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !15
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  br label %42

34:                                               ; preds = %19, %18
  %35 = zext i8 %1 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr i8, ptr %7, i32 %36
  %38 = getelementptr i8, ptr %37, i32 %8
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %38) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %40 = getelementptr i8, ptr %38, i32 2
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  br label %42

42:                                               ; preds = %34, %24
  %43 = phi i32 [ %33, %24 ], [ %41, %34 ]
  %44 = phi i16 [ %30, %24 ], [ %39, %34 ]
  %45 = zext i32 %43 to i64
  %46 = shl nuw nsw i64 %45, 16
  %47 = zext i16 %44 to i64
  %48 = or i64 %46, %47
  br label %80

49:                                               ; preds = %12
  br i1 %17, label %65, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.b53_platform_data, ptr %16, i32 0, i32 3
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = zext i8 %1 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = getelementptr i8, ptr %7, i32 %57
  %59 = getelementptr i8, ptr %58, i32 %8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !15
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %62 = getelementptr i8, ptr %59, i32 4
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %62) #6, !srcloc !12
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  br label %73

65:                                               ; preds = %50, %49
  %66 = zext i8 %1 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = getelementptr i8, ptr %7, i32 %67
  %69 = getelementptr i8, ptr %68, i32 %8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %71 = getelementptr i8, ptr %69, i32 4
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  br label %73

73:                                               ; preds = %65, %55
  %74 = phi i16 [ %64, %55 ], [ %72, %65 ]
  %75 = phi i32 [ %61, %55 ], [ %70, %65 ]
  %76 = zext i16 %74 to i64
  %77 = shl nuw nsw i64 %76, 32
  %78 = zext i32 %75 to i64
  %79 = or i64 %77, %78
  br label %80

80:                                               ; preds = %73, %42
  %81 = phi i64 [ %79, %73 ], [ %48, %42 ]
  store i64 %81, ptr %3, align 8
  br label %82

82:                                               ; preds = %80, %11
  %83 = phi i32 [ -22, %11 ], [ 0, %80 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_read64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 119, i32 noundef 9, ptr noundef null) #6
  br label %46

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = zext i8 %1 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = getelementptr i8, ptr %24, i32 %8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !15
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %28 = getelementptr i8, ptr %25, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !15
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  br label %39

31:                                               ; preds = %16, %12
  %32 = zext i8 %1 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = getelementptr i8, ptr %7, i32 %33
  %35 = getelementptr i8, ptr %34, i32 %8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %37 = getelementptr i8, ptr %35, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  br label %39

39:                                               ; preds = %31, %21
  %40 = phi i32 [ %27, %21 ], [ %36, %31 ]
  %41 = phi i32 [ %30, %21 ], [ %38, %31 ]
  %42 = zext i32 %41 to i64
  %43 = shl nuw i64 %42, 32
  %44 = zext i32 %40 to i64
  %45 = or i64 %43, %44
  store i64 %45, ptr %3, align 8
  br label %46

46:                                               ; preds = %39, %11
  %47 = phi i32 [ -22, %11 ], [ 0, %39 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_write8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %8 = zext i8 %1 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = zext i8 %2 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %3) #6, !srcloc !31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_write16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %32

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %22 = tail call i16 @llvm.bswap.i16(i16 %3)
  %23 = zext i8 %1 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = getelementptr i8, ptr %7, i32 %24
  %26 = getelementptr i8, ptr %25, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %22) #6, !srcloc !33
  br label %32

27:                                               ; preds = %16, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %28 = zext i8 %1 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr i8, ptr %7, i32 %29
  %31 = getelementptr i8, ptr %30, i32 %8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %3) #6, !srcloc !33
  br label %32

32:                                               ; preds = %27, %21, %11
  %33 = phi i32 [ -22, %11 ], [ 0, %27 ], [ 0, %21 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_write32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %32

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %3)
  %23 = zext i8 %1 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = getelementptr i8, ptr %7, i32 %24
  %26 = getelementptr i8, ptr %25, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #6, !srcloc !36
  br label %32

27:                                               ; preds = %16, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %28 = zext i8 %1 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr i8, ptr %7, i32 %29
  %31 = getelementptr i8, ptr %30, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %3) #6, !srcloc !36
  br label %32

32:                                               ; preds = %27, %21, %11
  %33 = phi i32 [ -22, %11 ], [ 0, %27 ], [ 0, %21 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_write48(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = zext i8 %2 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 182, i32 noundef 9, ptr noundef null) #6
  br label %118

9:                                                ; preds = %4
  %10 = and i32 %5, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %9
  %13 = lshr i64 %3, 16
  %14 = trunc i64 %13 to i32
  %15 = trunc i64 %3 to i16
  %16 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.b53_platform_data, ptr %20, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %28 = tail call i16 @llvm.bswap.i16(i16 %15) #6
  %29 = zext i8 %1 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = getelementptr i8, ptr %18, i32 %30
  %32 = getelementptr i8, ptr %31, i32 %5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %28) #6, !srcloc !33
  br label %38

33:                                               ; preds = %22, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %34 = zext i8 %1 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = getelementptr i8, ptr %18, i32 %35
  %37 = getelementptr i8, ptr %36, i32 %5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %15) #6, !srcloc !33
  br label %38

38:                                               ; preds = %33, %27
  %39 = add i8 %2, 2
  %40 = load ptr, ptr %16, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = zext i8 %39 to i32
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !11

45:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %118

46:                                               ; preds = %38
  %47 = load ptr, ptr %19, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.b53_platform_data, ptr %47, i32 0, i32 3
  %51 = load i8, ptr %50, align 2
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %56 = zext i8 %1 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = getelementptr i8, ptr %41, i32 %57
  %59 = getelementptr i8, ptr %58, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %55) #6, !srcloc !36
  br label %118

60:                                               ; preds = %49, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %61 = zext i8 %1 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = getelementptr i8, ptr %41, i32 %62
  %64 = getelementptr i8, ptr %63, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %14) #6, !srcloc !36
  br label %118

65:                                               ; preds = %9
  %66 = lshr i64 %3, 32
  %67 = trunc i64 %66 to i16
  %68 = trunc i64 %3 to i32
  %69 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.b53_platform_data, ptr %73, i32 0, i32 3
  %77 = load i8, ptr %76, align 2
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %81 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  %82 = zext i8 %1 to i32
  %83 = shl nuw nsw i32 %82, 8
  %84 = getelementptr i8, ptr %71, i32 %83
  %85 = getelementptr i8, ptr %84, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %81) #6, !srcloc !36
  br label %91

86:                                               ; preds = %75, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %87 = zext i8 %1 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = getelementptr i8, ptr %71, i32 %88
  %90 = getelementptr i8, ptr %89, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %68) #6, !srcloc !36
  br label %91

91:                                               ; preds = %86, %80
  %92 = add i8 %2, 4
  %93 = load ptr, ptr %69, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = zext i8 %92 to i32
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !11

98:                                               ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %118

99:                                               ; preds = %91
  %100 = load ptr, ptr %72, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.b53_platform_data, ptr %100, i32 0, i32 3
  %104 = load i8, ptr %103, align 2
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %108 = tail call i16 @llvm.bswap.i16(i16 %67) #6
  %109 = zext i8 %1 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = getelementptr i8, ptr %94, i32 %110
  %112 = getelementptr i8, ptr %111, i32 %95
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %112, i16 %108) #6, !srcloc !33
  br label %118

113:                                              ; preds = %102, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %114 = zext i8 %1 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = getelementptr i8, ptr %94, i32 %115
  %117 = getelementptr i8, ptr %116, i32 %95
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %117, i16 %67) #6, !srcloc !33
  br label %118

118:                                              ; preds = %113, %107, %98, %60, %54, %45, %8
  %119 = phi i32 [ -22, %8 ], [ 0, %45 ], [ 0, %54 ], [ 0, %60 ], [ 0, %98 ], [ 0, %107 ], [ 0, %113 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_mmap_write64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %7 = trunc i64 %3 to i32
  %8 = and i8 %2, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 210, i32 noundef 9, ptr noundef null) #6
  br label %67

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %2 to i32
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %39

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.b53_platform_data, ptr %21, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %30 = zext i8 %1 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = getelementptr i8, ptr %14, i32 %31
  %33 = getelementptr i8, ptr %32, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %29) #6, !srcloc !36
  br label %39

34:                                               ; preds = %23, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %35 = zext i8 %1 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = getelementptr i8, ptr %14, i32 %36
  %38 = getelementptr i8, ptr %37, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %7) #6, !srcloc !36
  br label %39

39:                                               ; preds = %34, %28, %18
  %40 = add i8 %2, 4
  %41 = load ptr, ptr %12, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = zext i8 %40 to i32
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !11

46:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %67

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.b53_platform_data, ptr %49, i32 0, i32 3
  %53 = load i8, ptr %52, align 2
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %58 = zext i8 %1 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr i8, ptr %42, i32 %59
  %61 = getelementptr i8, ptr %60, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #6, !srcloc !36
  br label %67

62:                                               ; preds = %51, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %63 = zext i8 %1 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = getelementptr i8, ptr %42, i32 %64
  %66 = getelementptr i8, ptr %65, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %6) #6, !srcloc !36
  br label %67

67:                                               ; preds = %62, %56, %46, %10
  %68 = phi i32 [ -22, %10 ], [ 0, %46 ], [ 0, %56 ], [ 0, %62 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2881384}
!10 = !{i64 2156526770}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2880766}
!13 = !{i64 2156527688}
!14 = !{i64 2156528043}
!15 = !{i64 2881604}
!16 = !{i64 2156528961}
!17 = !{i64 2156529316}
!18 = !{i64 2156530234}
!19 = !{i64 2156530661}
!20 = !{i64 2156531016}
!21 = !{i64 2156531383}
!22 = !{i64 2156531798}
!23 = !{i64 2156532225}
!24 = !{i64 2156532580}
!25 = !{i64 2156532947}
!26 = !{i64 2156533866}
!27 = !{i64 2156534293}
!28 = !{i64 2156534648}
!29 = !{i64 2156535015}
!30 = !{i64 2156535209}
!31 = !{i64 2880989}
!32 = !{i64 2156535998}
!33 = !{i64 2880566}
!34 = !{i64 2156536306}
!35 = !{i64 2156537171}
!36 = !{i64 2881186}
!37 = !{i64 2156537479}
