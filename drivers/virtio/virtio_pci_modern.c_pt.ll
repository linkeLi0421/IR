; ModuleID = '/llk/IR/drivers/virtio/virtio_pci_modern.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_modern.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_pci_device = type { %struct.virtio_device, ptr, %struct.virtio_pci_legacy_device, %struct.virtio_pci_modern_device, i8, ptr, %struct.spinlock, %struct.list_head, ptr, i32, i32, i8, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_pci_legacy_device = type { ptr, ptr, ptr, %struct.virtio_device_id }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.virtio_device_id }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_shm_region = type { i64, i64 }

@virtio_pci_config_ops = internal constant %struct.virtio_config_ops { ptr @vp_enable_cbs, ptr @vp_get, ptr @vp_set, ptr @vp_generation, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_modern_find_vqs, ptr @vp_del_vqs, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr @vp_get_shm_region }, align 4
@virtio_pci_config_nodev_ops = internal constant %struct.virtio_config_ops { ptr @vp_enable_cbs, ptr null, ptr null, ptr @vp_generation, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_modern_find_vqs, ptr @vp_del_vqs, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr @vp_get_shm_region }, align 4
@.str = private unnamed_addr constant [75 x i8] c"virtio: device uses modern interface but does not have VIRTIO_F_VERSION_1\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: cap offset+len overflow detected\0A\00", align 1
@__func__.vp_get_shm_region = private unnamed_addr constant [18 x i8] c"vp_get_shm_region\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: bar shorter than cap offset+len\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: shm cap with bad size offset: %d size: %d\0A\00", align 1
@__func__.virtio_pci_find_shm_cap = private unnamed_addr constant [24 x i8] c"virtio_pci_find_shm_cap\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad queue size %u\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtio_pci_modern_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 4
  %5 = tail call i32 @vp_modern_probe(ptr noundef %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @virtio_pci_config_nodev_ops, ptr @virtio_pci_config_ops
  %12 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 19
  store ptr @vp_config_vector, ptr %13, align 4
  %14 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 17
  store ptr @setup_vq, ptr %14, align 4
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 18
  store ptr @del_vq, ptr %15, align 8
  %16 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 5
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 7
  %20 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 11
  %21 = load i64, ptr %20, align 4
  store i64 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_modern_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @vp_config_vector(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  %4 = tail call zeroext i16 @vp_modern_config_vector(ptr noundef %3, i16 noundef zeroext %1) #4
  ret i16 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @setup_vq(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i16 noundef zeroext %6) #0 {
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  %9 = tail call zeroext i16 @vp_modern_get_num_queues(ptr noundef %8) #4
  %10 = zext i16 %9 to i32
  %11 = icmp ugt i32 %10, %2
  br i1 %11, label %12, label %58

12:                                               ; preds = %7
  %13 = trunc i32 %2 to i16
  %14 = tail call zeroext i16 @vp_modern_get_queue_size(ptr noundef %8, i16 noundef zeroext %13) #4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i1 @vp_modern_get_queue_enable(ptr noundef %8, i16 noundef zeroext %13) #4
  br i1 %17, label %58, label %18

18:                                               ; preds = %16
  %19 = zext i16 %14 to i32
  %20 = add nuw nsw i32 %19, 65535
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.4, i32 noundef %19) #5
  br label %58

27:                                               ; preds = %18
  %28 = zext i16 %6 to i32
  %29 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %1, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = tail call ptr @vring_create_virtqueue(i32 noundef %2, i32 noundef %19, i32 noundef 64, ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %5, ptr noundef nonnull @vp_notify, ptr noundef %3, ptr noundef %4) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @virtqueue_get_vring_size(ptr noundef nonnull %30) #4
  %34 = trunc i32 %33 to i16
  tail call void @vp_modern_set_queue_size(ptr noundef %8, i16 noundef zeroext %13, i16 noundef zeroext %34) #4
  %35 = tail call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %30) #4
  %36 = zext i32 %35 to i64
  %37 = tail call i32 @virtqueue_get_avail_addr(ptr noundef nonnull %30) #4
  %38 = zext i32 %37 to i64
  %39 = tail call i32 @virtqueue_get_used_addr(ptr noundef nonnull %30) #4
  %40 = zext i32 %39 to i64
  tail call void @vp_modern_queue_address(ptr noundef %8, i16 noundef zeroext %13, i64 noundef %36, i64 noundef %38, i64 noundef %40) #4
  %41 = tail call ptr @vp_modern_map_vq_notify(ptr noundef %8, i16 noundef zeroext %13, ptr noundef null) #4
  %42 = getelementptr inbounds %struct.virtqueue, ptr %30, i32 0, i32 6
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %32
  %45 = icmp eq i16 %6, -1
  br i1 %45, label %58, label %46

46:                                               ; preds = %44
  %47 = tail call zeroext i16 @vp_modern_queue_vector(ptr noundef %8, i16 noundef zeroext %13, i16 noundef zeroext %6) #4
  %48 = icmp eq i16 %47, -1
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr %8, align 4
  %55 = load ptr, ptr %42, align 4
  tail call void @pci_iounmap(ptr noundef %54, ptr noundef %55) #4
  br label %56

56:                                               ; preds = %53, %49, %32
  %57 = phi ptr [ inttoptr (i32 -16 to ptr), %49 ], [ inttoptr (i32 -16 to ptr), %53 ], [ inttoptr (i32 -12 to ptr), %32 ]
  tail call void @vring_del_virtqueue(ptr noundef nonnull %30) #4
  br label %58

58:                                               ; preds = %56, %46, %44, %27, %23, %16, %12, %7
  %59 = phi ptr [ inttoptr (i32 -22 to ptr), %23 ], [ %57, %56 ], [ %30, %46 ], [ %30, %44 ], [ inttoptr (i32 -2 to ptr), %7 ], [ inttoptr (i32 -2 to ptr), %16 ], [ inttoptr (i32 -2 to ptr), %12 ], [ inttoptr (i32 -12 to ptr), %27 ]
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @del_vq(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i16
  %13 = tail call zeroext i16 @vp_modern_queue_vector(ptr noundef %5, i16 noundef zeroext %12, i16 noundef zeroext -1) #4
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  tail call void @pci_iounmap(ptr noundef %19, ptr noundef %21) #4
  br label %22

22:                                               ; preds = %18, %14
  tail call void @vring_del_virtqueue(ptr noundef %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_pci_modern_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  tail call void @vp_modern_remove(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_enable_cbs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %3, %1
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 73, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

12:                                               ; preds = %4
  switch i32 %3, label %28 [
    i32 1, label %13
    i32 2, label %16
    i32 4, label %19
    i32 8, label %22
  ]

13:                                               ; preds = %12
  %14 = getelementptr i8, ptr %6, i32 %1
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  store i8 %15, ptr %2, align 1
  br label %29

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %6, i32 %1
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  store i16 %18, ptr %2, align 1
  br label %29

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %6, i32 %1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  store i32 %21, ptr %2, align 1
  br label %29

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %6, i32 %1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  store i32 %24, ptr %2, align 1
  %25 = getelementptr i8, ptr %23, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %27 = getelementptr i8, ptr %2, i32 4
  store i32 %26, ptr %27, align 1
  br label %29

28:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 95, 0\0A.popsection", ""() #4, !srcloc !16
  unreachable

29:                                               ; preds = %22, %19, %16, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %3, %1
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #4, !srcloc !17
  unreachable

12:                                               ; preds = %4
  switch i32 %3, label %28 [
    i32 1, label %13
    i32 2, label %16
    i32 4, label %19
    i32 8, label %22
  ]

13:                                               ; preds = %12
  %14 = load i8, ptr %2, align 1
  %15 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %14) #4, !srcloc !19
  br label %29

16:                                               ; preds = %12
  %17 = load i16, ptr %2, align 1
  %18 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %17) #4, !srcloc !21
  br label %29

19:                                               ; preds = %12
  %20 = load i32, ptr %2, align 1
  %21 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #4, !srcloc !23
  br label %29

22:                                               ; preds = %12
  %23 = load i32, ptr %2, align 1
  %24 = getelementptr i8, ptr %6, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #4, !srcloc !23
  %25 = getelementptr i8, ptr %2, i32 4
  %26 = load i32, ptr %25, align 1
  %27 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #4, !srcloc !23
  br label %29

28:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

29:                                               ; preds = %22, %19, %16, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_generation(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @vp_modern_generation(ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @vp_get_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  %3 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %2) #4
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_set_status(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  tail call void @vp_modern_set_status(ptr noundef %6, i8 noundef zeroext %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  tail call void @vp_modern_set_status(ptr noundef %2, i8 noundef zeroext 0) #4
  %3 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %2) #4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %5, %1
  tail call void @msleep(i32 noundef 1) #4
  %6 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %2) #4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %5

8:                                                ; preds = %5, %1
  tail call void @vp_disable_cbs(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_modern_find_vqs(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call i32 @vp_find_vqs(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %21, %16 ]
  %18 = getelementptr inbounds %struct.virtqueue, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  tail call void @vp_modern_set_queue_enable(ptr noundef %15, i16 noundef zeroext %20, i1 noundef zeroext true) #4
  %21 = load ptr, ptr %17, align 4
  %22 = icmp eq ptr %21, %11
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %10, %7
  %24 = phi i32 [ %8, %7 ], [ 0, %10 ], [ 0, %16 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_del_vqs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @vp_get_features(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  %3 = tail call i64 @vp_modern_get_features(ptr noundef %2) #4
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_finalize_features(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %3 = load i64, ptr %2, align 8
  tail call void @vring_transport_features(ptr noundef %0) #4
  %4 = and i64 %3, 137438953472
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %8, i32 noundef 16) #4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr %2, align 8
  %13 = or i64 %12, 137438953472
  store i64 %13, ptr %2, align 8
  br label %14

14:                                               ; preds = %11, %6, %1
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 4294967296
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str) #5
  br label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 3
  tail call void @vp_modern_set_features(ptr noundef %21, i64 noundef %15) #4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ 0, %20 ], [ -22, %18 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_bus_name(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_set_vq_affinity(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_get_vq_affinity(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vp_get_shm_region(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !26
  %11 = tail call zeroext i8 @pci_find_capability(ptr noundef %10, i32 noundef 9) #4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  br label %15

15:                                               ; preds = %34, %13
  %16 = phi i8 [ %11, %13 ], [ %35, %34 ]
  %17 = zext i8 %16 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 0, ptr %7, align 4, !annotation !26
  %18 = add nuw nsw i32 %17, 3
  %19 = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef %18, ptr noundef nonnull %4) #4
  %20 = load i8, ptr %4, align 1
  %21 = icmp eq i8 %20, 8
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = add nuw nsw i32 %17, 2
  %24 = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef %23, ptr noundef nonnull %5) #4
  %25 = load i8, ptr %5, align 1
  %26 = icmp eq i8 %25, 24
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.virtio_pci_find_shm_cap, i32 noundef %17, i32 noundef %28) #5
  br label %34

29:                                               ; preds = %22
  %30 = add nuw nsw i32 %17, 5
  %31 = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef %30, ptr noundef nonnull %6) #4
  %32 = load i8, ptr %6, align 1
  %33 = icmp eq i8 %32, %2
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %27, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %35 = call zeroext i8 @pci_find_next_capability(ptr noundef %10, i8 noundef zeroext %16, i32 noundef 9) #4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %81, label %15

37:                                               ; preds = %29
  %38 = add nuw nsw i32 %17, 4
  %39 = call i32 @pci_read_config_byte(ptr noundef %10, i32 noundef %38, ptr noundef nonnull %8) #4
  %40 = add nuw nsw i32 %17, 8
  %41 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef %40, ptr noundef nonnull %7) #4
  %42 = load i32, ptr %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i32 %17, 12
  %45 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef %44, ptr noundef nonnull %7) #4
  %46 = load i32, ptr %7, align 4
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i32 %17, 16
  %49 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef %48, ptr noundef nonnull %7) #4
  %50 = load i32, ptr %7, align 4
  %51 = zext i32 %50 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or i64 %52, %43
  %54 = add nuw nsw i32 %17, 20
  %55 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef %54, ptr noundef nonnull %7) #4
  %56 = load i32, ptr %7, align 4
  %57 = zext i32 %56 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or i64 %58, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %60 = load i8, ptr %8, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %61
  %63 = load i32, ptr %62, align 8
  %64 = add i64 %59, %53
  %65 = icmp ult i64 %64, %53
  br i1 %65, label %66, label %67

66:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vp_get_shm_region) #5
  br label %81

67:                                               ; preds = %37
  %68 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %61, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = sub i32 1, %63
  %72 = add i32 %71, %69
  %73 = select i1 %70, i32 0, i32 %72
  %74 = zext i32 %73 to i64
  %75 = icmp ugt i64 %64, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vp_get_shm_region) #5
  br label %81

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.virtio_shm_region, ptr %1, i32 0, i32 1
  store i64 %59, ptr %78, align 8
  %79 = zext i32 %63 to i64
  %80 = add i64 %53, %79
  store i64 %80, ptr %1, align 8
  br label %81

81:                                               ; preds = %77, %76, %66, %34, %3
  %82 = phi i1 [ false, %66 ], [ false, %76 ], [ true, %77 ], [ false, %3 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  ret i1 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_modern_generation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vp_modern_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_disable_cbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_find_vqs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_queue_enable(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vp_modern_get_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_features(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_next_capability(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_config_vector(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_get_num_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_get_queue_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_modern_get_queue_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_notify(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_queue_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_queue_address(ptr noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_avail_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_used_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_modern_map_vq_notify(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_queue_vector(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!9 = !{i64 2153335064, i64 2153335562, i64 2153335101, i64 2153335157, i64 2153335191, i64 2153335215, i64 2153335256, i64 2153335277, i64 2153335305, i64 2153335339}
!10 = !{i64 3837428}
!11 = !{i64 2151376155}
!12 = !{i64 3836810}
!13 = !{i64 2151376628}
!14 = !{i64 3837648}
!15 = !{i64 2151377101}
!16 = !{i64 2153336355, i64 2153336853, i64 2153336392, i64 2153336448, i64 2153336482, i64 2153336506, i64 2153336547, i64 2153336568, i64 2153336596, i64 2153336630}
!17 = !{i64 2153337453, i64 2153337952, i64 2153337490, i64 2153337546, i64 2153337580, i64 2153337604, i64 2153337645, i64 2153337666, i64 2153337694, i64 2153337728}
!18 = !{i64 2151377453}
!19 = !{i64 3837033}
!20 = !{i64 2151377850}
!21 = !{i64 3836610}
!22 = !{i64 2151378323}
!23 = !{i64 3837230}
!24 = !{i64 2153338641, i64 2153339140, i64 2153338678, i64 2153338734, i64 2153338768, i64 2153338792, i64 2153338833, i64 2153338854, i64 2153338882, i64 2153338916}
!25 = !{i64 2153339700, i64 2153340199, i64 2153339737, i64 2153339793, i64 2153339827, i64 2153339851, i64 2153339892, i64 2153339913, i64 2153339941, i64 2153339975}
!26 = !{!"auto-init"}
