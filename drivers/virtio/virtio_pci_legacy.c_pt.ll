; ModuleID = '/llk/IR/drivers/virtio/virtio_pci_legacy.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_legacy.c"
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
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@virtio_pci_config_ops = internal constant %struct.virtio_config_ops { ptr @vp_enable_cbs, ptr @vp_get, ptr @vp_set, ptr null, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_find_vqs, ptr @vp_del_vqs, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @virtio_pci_legacy_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 4
  %5 = tail call i32 @vp_legacy_probe(ptr noundef %2) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 5
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 7
  %12 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, i32 3
  %13 = load i64, ptr %12, align 4
  store i64 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  store ptr @virtio_pci_config_ops, ptr %14, align 8
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 19
  store ptr @vp_config_vector, ptr %15, align 4
  %16 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 17
  store ptr @setup_vq, ptr %16, align 4
  %17 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 18
  store ptr @del_vq, ptr %17, align 8
  br label %18

18:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_legacy_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @vp_config_vector(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  %4 = tail call zeroext i16 @vp_legacy_config_vector(ptr noundef %3, i16 noundef zeroext %1) #2
  ret i16 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @setup_vq(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i16 noundef zeroext %6) #0 {
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  %9 = trunc i32 %2 to i16
  %10 = tail call zeroext i16 @vp_legacy_get_queue_size(ptr noundef %8, i16 noundef zeroext %9) #2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @vp_legacy_get_queue_enable(ptr noundef %8, i16 noundef zeroext %9) #2
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = zext i16 %6 to i32
  %16 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = zext i16 %10 to i32
  %18 = tail call ptr @vring_create_virtqueue(i32 noundef %2, i32 noundef %17, i32 noundef 4096, ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext %5, ptr noundef nonnull @vp_notify, ptr noundef %3, ptr noundef %4) #2
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %18) #2
  %22 = lshr i32 %21, 12
  tail call void @vp_legacy_set_queue_address(ptr noundef %8, i16 noundef zeroext %9, i32 noundef %22) #2
  %23 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = getelementptr inbounds %struct.virtqueue, ptr %18, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = icmp eq i16 %6, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = tail call zeroext i16 @vp_legacy_queue_vector(ptr noundef %8, i16 noundef zeroext %9, i16 noundef zeroext %6) #2
  %30 = icmp eq i16 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @vp_legacy_set_queue_address(ptr noundef %8, i16 noundef zeroext %9, i32 noundef 0) #2
  tail call void @vring_del_virtqueue(ptr noundef nonnull %18) #2
  br label %32

32:                                               ; preds = %31, %28, %20, %14, %12, %7
  %33 = phi ptr [ inttoptr (i32 -16 to ptr), %31 ], [ %18, %28 ], [ %18, %20 ], [ inttoptr (i32 -2 to ptr), %12 ], [ inttoptr (i32 -2 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %14 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @del_vq(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i16
  %13 = tail call zeroext i16 @vp_legacy_queue_vector(ptr noundef %9, i16 noundef zeroext %12, i16 noundef zeroext -1) #2
  %14 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 19
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %18

18:                                               ; preds = %8, %1
  %19 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.virtqueue, ptr %2, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i16
  tail call void @vp_legacy_set_queue_address(ptr noundef %19, i16 noundef zeroext %22, i32 noundef 0) #2
  tail call void @vring_del_virtqueue(ptr noundef %2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @virtio_pci_legacy_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  tail call void @vp_legacy_remove(ptr noundef %2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_enable_cbs(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 20, i32 24
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %14, %4
  %15 = phi i32 [ %19, %14 ], [ 0, %4 ]
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %18 = getelementptr i8, ptr %2, i32 %15
  store i8 %17, ptr %18, align 1
  %19 = add nuw i32 %15, 1
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 20, i32 24
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %14, %4
  %15 = phi i32 [ %19, %14 ], [ 0, %4 ]
  %16 = getelementptr i8, ptr %2, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %17) #2, !srcloc !11
  %19 = add nuw i32 %15, 1
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @vp_get_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  %3 = tail call zeroext i8 @vp_legacy_get_status(ptr noundef %2) #2
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_set_status(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %5, !prof !12

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #2, !srcloc !13
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  tail call void @vp_legacy_set_status(ptr noundef %6, i8 noundef zeroext %1) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vp_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  tail call void @vp_legacy_set_status(ptr noundef %2, i8 noundef zeroext 0) #2
  %3 = tail call zeroext i8 @vp_legacy_get_status(ptr noundef %2) #2
  tail call void @vp_disable_cbs(ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_find_vqs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_del_vqs(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @vp_get_features(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  %3 = tail call i64 @vp_legacy_get_features(ptr noundef %2) #2
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_finalize_features(ptr noundef %0) #0 {
  tail call void @vring_transport_features(ptr noundef %0) #2
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %3 = load i64, ptr %2, align 8
  %4 = icmp ult i64 %3, 4294967296
  br i1 %4, label %6, label %5, !prof !14

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #2, !srcloc !15
  unreachable

6:                                                ; preds = %1
  %7 = trunc i64 %3 to i32
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 2
  tail call void @vp_legacy_set_features(ptr noundef %8, i32 noundef %7) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_bus_name(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_set_vq_affinity(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_get_vq_affinity(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vp_legacy_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_disable_cbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vp_legacy_get_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_set_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_legacy_config_vector(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_legacy_get_queue_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_legacy_get_queue_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_notify(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_set_queue_address(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_legacy_queue_vector(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 3821233}
!9 = !{i64 2151359960}
!10 = !{i64 2151361258}
!11 = !{i64 3820838}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153322188, i64 2153322686, i64 2153322225, i64 2153322281, i64 2153322315, i64 2153322339, i64 2153322380, i64 2153322401, i64 2153322429, i64 2153322463}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153321019, i64 2153321517, i64 2153321056, i64 2153321112, i64 2153321146, i64 2153321170, i64 2153321211, i64 2153321232, i64 2153321260, i64 2153321294}
