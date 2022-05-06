; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/fuse-tegra20.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/fuse-tegra20.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_fuse_info = type { ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_fuse_soc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.tegra_fuse = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.64, ptr, ptr }
%struct.anon.64 = type { %struct.mutex, %struct.completion, ptr, %struct.dma_slave_config, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@tegra20_fuse_info = internal constant %struct.tegra_fuse_info { ptr @tegra20_fuse_read, i32 504, i32 256 }, align 4
@tegra_soc_attr_group = external dso_local constant %struct.attribute_group, align 4
@tegra20_fuse_soc = dso_local local_unnamed_addr constant %struct.tegra_fuse_soc { ptr @tegra20_fuse_init, ptr @tegra20_init_speedo_data, ptr @tegra20_fuse_probe, ptr @tegra20_fuse_info, ptr null, i32 0, ptr @tegra_soc_attr_group, i8 0 }, align 4
@tegra_sku_info = external dso_local global %struct.tegra_sku_info, align 4
@tegra20_fuse_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&fuse->apbdma.lock\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"nvidia,tegra20-apbdma\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"drivers/soc/tegra/fuse/fuse-tegra20.c\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"apb read dma timed out\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra20_fuse_init(ptr nocapture noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 5
  store ptr @tegra20_fuse_read_early, ptr %2, align 4
  tail call void @tegra_init_revision() #6
  %3 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef nonnull @tegra_sku_info) #6
  tail call fastcc void @tegra20_fuse_add_randomness() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_init_speedo_data(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_fuse_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %2) #6
  %3 = call ptr @__dma_request_channel(ptr noundef nonnull %2, ptr noundef nonnull @dma_filter, ptr noundef null, ptr noundef null) #6
  %4 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 2
  store ptr %3, ptr %5, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = call i32 @devm_add_action(ptr noundef %8, ptr noundef nonnull @tegra20_fuse_release_channel, ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  call void @dma_release_channel(ptr noundef %12) #6
  store ptr null, ptr %5, align 4
  br label %37

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 4
  %16 = call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 4, ptr noundef %15, i32 noundef 3264, i32 noundef 0) #6
  %17 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 5
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @devm_add_action(ptr noundef %20, ptr noundef nonnull @tegra20_fuse_free_coherent, ptr noundef %0) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = load i32, ptr %15, align 4
  call void @dma_free_attrs(ptr noundef %24, i32 noundef 4, ptr noundef %25, i32 noundef %26, i32 noundef 0) #6
  store ptr null, ptr %17, align 4
  store i32 0, ptr %15, align 4
  br label %37

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3
  %29 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3, i32 3
  store i32 4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3, i32 4
  store i32 4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3, i32 5
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3, i32 6
  store i32 1, ptr %32, align 4
  store i32 2, ptr %28, align 4
  %33 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3, i32 9
  store i8 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #6
  call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @tegra20_fuse_probe.__key) #6
  %36 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 6
  store ptr @tegra20_fuse_read, ptr %36, align 4
  br label %37

37:                                               ; preds = %27, %23, %13, %11, %1
  %38 = phi i32 [ 0, %27 ], [ -517, %1 ], [ %9, %11 ], [ -12, %13 ], [ %21, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_fuse_read_early(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 256
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_revision() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra20_fuse_add_randomness() unnamed_addr #0 section ".init.text" {
  %1 = alloca [7 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %1) #6
  %2 = load i32, ptr @tegra_sku_info, align 4
  store i32 %2, ptr %1, align 4
  %3 = tail call i32 @tegra_read_straps() #6
  %4 = getelementptr inbounds [7 x i32], ptr %1, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  %5 = tail call i32 @tegra_read_chipid() #6
  %6 = getelementptr inbounds [7 x i32], ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  %8 = shl i32 %7, 16
  %9 = getelementptr inbounds [7 x i32], ptr %1, i32 0, i32 3
  %10 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 5), align 4
  %11 = or i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds [7 x i32], ptr %1, i32 0, i32 4
  %15 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = tail call i32 @tegra_fuse_read_early(i32 noundef 8) #8
  %18 = getelementptr inbounds [7 x i32], ptr %1, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = tail call i32 @tegra_fuse_read_early(i32 noundef 12) #8
  %20 = getelementptr inbounds [7 x i32], ptr %1, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  call void @add_device_randomness(ptr noundef nonnull %1, i32 noundef 28) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_straps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dma_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.1) #6
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_fuse_release_channel(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @dma_release_channel(ptr noundef %3) #6
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_fuse_free_coherent(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void @dma_free_attrs(ptr noundef %2, i32 noundef 4, ptr noundef %4, i32 noundef %6, i32 noundef 0) #6
  store ptr null, ptr %3, align 4
  store i32 0, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_fuse_read(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.scatterlist, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #6, !srcloc !10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #6, !srcloc !11
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  br label %77

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %1, 256
  %18 = add i32 %17, %16
  %19 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 44
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 3
  %28 = tail call i32 %24(ptr noundef %21, ptr noundef %27) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 4
  %33 = load i32, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #6, !annotation !13
  call void @sg_init_table(ptr noundef nonnull %3, i32 noundef 1) #6
  %34 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 4
  store i32 4, ptr %35, align 4
  %36 = icmp eq ptr %31, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 39
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37, %30
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  br label %73

45:                                               ; preds = %40
  %46 = call ptr %42(ptr noundef nonnull %31, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 6
  store ptr @apb_dma_complete, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 8
  store ptr %0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef nonnull %46) #6
  %55 = load ptr, ptr %20, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 50
  %58 = load ptr, ptr %57, align 4
  call void %58(ptr noundef %55) #6
  %59 = call i32 @wait_for_completion_timeout(ptr noundef %51, i32 noundef 5) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69, !prof !14

61:                                               ; preds = %48
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  %62 = load ptr, ptr %20, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 47
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = call i32 %65(ptr noundef %62) #6
  br label %73

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %69, %67, %61, %45, %44, %26, %13
  %74 = phi i32 [ 0, %26 ], [ %72, %69 ], [ 0, %45 ], [ 0, %44 ], [ 0, %61 ], [ 0, %67 ], [ 0, %13 ]
  call void @mutex_unlock(ptr noundef %14) #6
  %75 = load ptr, ptr %0, align 4
  %76 = call i32 @__pm_runtime_idle(ptr noundef %75, i32 noundef 5) #6
  br label %77

77:                                               ; preds = %73, %12, %7
  %78 = phi i32 [ %74, %73 ], [ %5, %7 ], [ %5, %12 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @apb_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 8, i32 1
  tail call void @complete(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold }
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
!8 = !{i64 5038186}
!9 = !{i64 2148140174}
!10 = !{i64 575839, i64 2148077405, i64 2148077431, i64 2148077478, i64 2148077500, i64 2148077528, i64 2148077548}
!11 = !{i64 562408, i64 562433, i64 562455, i64 562471, i64 562483, i64 562503, i64 562527, i64 562543, i64 562555}
!12 = !{i64 2148140300}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 1, i32 2000}
