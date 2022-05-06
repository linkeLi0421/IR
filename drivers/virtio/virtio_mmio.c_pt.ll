; ModuleID = '/llk/IR/drivers/virtio/virtio_mmio.c_pt.bc'
source_filename = "../drivers/virtio/virtio_mmio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_mmio_device = type { %struct.virtio_device, ptr, ptr, i32, %struct.spinlock, %struct.list_head }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_mmio_vq_info = type { ptr, %struct.list_head }
%struct.virtio_shm_region = type { i64, i64 }

@virtio_mmio_driver = internal global %struct.platform_driver { ptr @virtio_mmio_probe, ptr @virtio_mmio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @virtio_mmio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_virtio_mmio__241_802_virtio_mmio_init6 = internal global ptr @virtio_mmio_init, section ".initcall6.init", align 4
@__exitcall_virtio_mmio_exit = internal global ptr @virtio_mmio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [51 x i8] c"virtio_mmio.author=Pawel Moll <pawel.moll@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [77 x i8] c"virtio_mmio.description=Platform bus driver for memory mapped virtio devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"virtio_mmio.file=drivers/virtio/virtio_mmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"virtio_mmio.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"virtio-mmio\00", align 1
@virtio_mmio_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"virtio,mmio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@virtio_mmio_config_ops = internal constant %struct.virtio_config_ops { ptr null, ptr @vm_get, ptr @vm_set, ptr @vm_generation, ptr @vm_get_status, ptr @vm_set_status, ptr @vm_reset, ptr @vm_find_vqs, ptr @vm_del_vqs, ptr @vm_get_features, ptr @vm_finalize_features, ptr @vm_bus_name, ptr null, ptr null, ptr @vm_get_shm_region }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Wrong magic value 0x%08lx!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Version %ld not supported!\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"drivers/virtio/virtio_mmio.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [78 x i8] c"New virtio-mmio devices (version 2) must provide VIRTIO_F_VERSION_1 feature!\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_virtio_mmio_exit, ptr @__initcall__kmod_virtio_mmio__241_802_virtio_mmio_init6, ptr @virtio_mmio_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @virtio_mmio_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @virtio_mmio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @virtio_mmio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @virtio_mmio_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_mmio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 552, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6
  %7 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 1
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, i32 33
  store ptr @virtio_mmio_release_dev, ptr %8, align 4
  %9 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 8
  store ptr @virtio_mmio_config_ops, ptr %9, align 8
  %10 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 5
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 5, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 4
  store i32 0, ptr %13, align 4
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %15 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = ptrtoint ptr %14 to i32
  br label %67

19:                                               ; preds = %5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %21 = icmp eq i32 %20, 1953655158
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %20) #7
  br label %67

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %27 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 3
  store i32 %26, ptr %27, align 8
  %28 = add i32 %26, -3
  %29 = icmp ult i32 %28, -2
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %26) #7
  br label %67

31:                                               ; preds = %23
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %35 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 7
  store i32 %34, ptr %35, align 8
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %15, align 4
  %39 = getelementptr i8, ptr %38, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %41 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 7, i32 1
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %27, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 4096) #6, !srcloc !14
  %47 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef -1) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 17592186044415) #6
  br label %62

51:                                               ; preds = %37
  %52 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef -1) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef -1) #6
  br label %62

56:                                               ; preds = %51, %44
  %57 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #6
  br label %62

61:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %62

62:                                               ; preds = %61, %59, %54, %49
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %63, align 8
  %64 = tail call i32 @register_virtio_device(ptr noundef nonnull %3) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @put_device(ptr noundef %6) #6
  br label %67

67:                                               ; preds = %66, %62, %31, %30, %22, %17, %1
  %68 = phi i32 [ %18, %17 ], [ -19, %22 ], [ -6, %30 ], [ -12, %1 ], [ -19, %31 ], [ %64, %66 ], [ 0, %62 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_mmio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @unregister_virtio_device(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_mmio_release_dev(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 512
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @devm_kfree(ptr noundef %5, ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vm_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 256
  %8 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %7, i32 %1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %20, %15 ]
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %19 = getelementptr i8, ptr %2, i32 %16
  store i8 %18, ptr %19, align 1
  %20 = add nuw i32 %16, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %39, label %15

22:                                               ; preds = %4
  switch i32 %3, label %38 [
    i32 1, label %23
    i32 2, label %26
    i32 4, label %29
    i32 8, label %32
  ]

23:                                               ; preds = %22
  %24 = getelementptr i8, ptr %7, i32 %1
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #6, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  store i8 %25, ptr %2, align 1
  br label %39

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %7, i32 %1
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #6, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  store i16 %28, ptr %2, align 1
  br label %39

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %7, i32 %1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  store i32 %31, ptr %2, align 1
  br label %39

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %7, i32 %1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  store i32 %34, ptr %2, align 1
  %35 = getelementptr i8, ptr %33, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %37 = getelementptr i8, ptr %2, i32 4
  store i32 %36, ptr %37, align 1
  br label %39

38:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_mmio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #6, !srcloc !23
  unreachable

39:                                               ; preds = %32, %29, %26, %23, %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vm_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 256
  %8 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %7, i32 %1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %20, %15 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %17 = getelementptr i8, ptr %2, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %18) #6, !srcloc !25
  %20 = add nuw i32 %16, 1
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %39, label %15

22:                                               ; preds = %4
  switch i32 %3, label %38 [
    i32 1, label %23
    i32 2, label %26
    i32 4, label %29
    i32 8, label %32
  ]

23:                                               ; preds = %22
  %24 = load i8, ptr %2, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %25 = getelementptr i8, ptr %7, i32 %1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %24) #6, !srcloc !25
  br label %39

26:                                               ; preds = %22
  %27 = load i16, ptr %2, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %28 = getelementptr i8, ptr %7, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %27) #6, !srcloc !28
  br label %39

29:                                               ; preds = %22
  %30 = load i32, ptr %2, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %31 = getelementptr i8, ptr %7, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #6, !srcloc !14
  br label %39

32:                                               ; preds = %22
  %33 = load i32, ptr %2, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %34 = getelementptr i8, ptr %7, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #6, !srcloc !14
  %35 = getelementptr i8, ptr %2, i32 4
  %36 = load i32, ptr %35, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %37 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #6, !srcloc !14
  br label %39

38:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_mmio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

39:                                               ; preds = %32, %29, %26, %23, %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vm_generation(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @vm_get_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 112
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vm_set_status(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %5, !prof !35

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_mmio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %7 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #6, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vm_reset(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #6, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vm_find_vqs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef readnone %6) #2 {
  %8 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @platform_get_irq(ptr noundef %9, i32 noundef 0) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %138, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %21 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @vm_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %20, ptr noundef %0) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %138

23:                                               ; preds = %19
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %138, label %25

25:                                               ; preds = %23
  %26 = icmp eq ptr %5, null
  %27 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %28 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 5
  br label %31

31:                                               ; preds = %134, %25
  %32 = phi i32 [ 0, %25 ], [ %135, %134 ]
  %33 = phi i32 [ 0, %25 ], [ %136, %134 ]
  %34 = getelementptr ptr, ptr %4, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr ptr, ptr %2, i32 %33
  store ptr null, ptr %38, align 4
  br label %134

39:                                               ; preds = %31
  %40 = add i32 %32, 1
  %41 = getelementptr ptr, ptr %3, i32 %33
  %42 = load ptr, ptr %41, align 4
  br i1 %26, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %5, i32 %33
  %45 = load i8, ptr %44, align 1, !range !39
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %46, %43 ], [ 0, %39 ]
  %49 = icmp ne i32 %48, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %50 = load ptr, ptr %27, align 4
  %51 = getelementptr i8, ptr %50, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %32) #6, !srcloc !14
  %52 = load ptr, ptr %27, align 4
  %53 = load i32, ptr %28, align 8
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 64, i32 68
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %123

59:                                               ; preds = %47
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 12) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %123, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %27, align 4
  %65 = getelementptr i8, ptr %64, i32 52
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !42
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @vring_create_virtqueue(i32 noundef %32, i32 noundef %66, i32 noundef 4096, ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %49, ptr noundef nonnull @vm_notify, ptr noundef %42, ptr noundef nonnull %35) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %108, label %71

71:                                               ; preds = %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %72 = tail call i32 @virtqueue_get_vring_size(ptr noundef nonnull %69) #6
  %73 = load ptr, ptr %27, align 4
  %74 = getelementptr i8, ptr %73, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #6, !srcloc !14
  %75 = load i32, ptr %28, align 8
  %76 = icmp eq i32 %75, 1
  %77 = tail call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %69) #6
  br i1 %76, label %78, label %84

78:                                               ; preds = %71
  %79 = lshr i32 %77, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %80 = load ptr, ptr %27, align 4
  %81 = getelementptr i8, ptr %80, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 4096) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %82 = load ptr, ptr %27, align 4
  %83 = getelementptr i8, ptr %82, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %79) #6, !srcloc !14
  br label %101

84:                                               ; preds = %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %85 = load ptr, ptr %27, align 4
  %86 = getelementptr i8, ptr %85, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %77) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %87 = load ptr, ptr %27, align 4
  %88 = getelementptr i8, ptr %87, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #6, !srcloc !14
  %89 = tail call i32 @virtqueue_get_avail_addr(ptr noundef nonnull %69) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %90 = load ptr, ptr %27, align 4
  %91 = getelementptr i8, ptr %90, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %92 = load ptr, ptr %27, align 4
  %93 = getelementptr i8, ptr %92, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 0) #6, !srcloc !14
  %94 = tail call i32 @virtqueue_get_used_addr(ptr noundef nonnull %69) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %95 = load ptr, ptr %27, align 4
  %96 = getelementptr i8, ptr %95, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %97 = load ptr, ptr %27, align 4
  %98 = getelementptr i8, ptr %97, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %99 = load ptr, ptr %27, align 4
  %100 = getelementptr i8, ptr %99, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 1) #6, !srcloc !14
  br label %101

101:                                              ; preds = %84, %78
  %102 = getelementptr inbounds %struct.virtqueue, ptr %69, i32 0, i32 6
  store ptr %61, ptr %102, align 4
  store ptr %69, ptr %61, align 8
  %103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #6
  %104 = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %61, i32 0, i32 1
  %105 = load ptr, ptr %30, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %104, ptr %106, align 4
  store ptr %105, ptr %104, align 4
  %107 = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %61, i32 0, i32 1, i32 1
  store ptr %30, ptr %107, align 8
  store volatile ptr %104, ptr %30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %103) #6
  br label %126

108:                                              ; preds = %68, %63
  %109 = phi i32 [ -2, %63 ], [ -12, %68 ]
  %110 = load i32, ptr %28, align 8
  %111 = icmp eq i32 %110, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %112 = load ptr, ptr %27, align 4
  br i1 %111, label %113, label %115

113:                                              ; preds = %108
  %114 = getelementptr i8, ptr %112, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 0) #6, !srcloc !14
  br label %122

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %112, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #6, !srcloc !14
  %117 = load ptr, ptr %27, align 4
  %118 = getelementptr i8, ptr %117, i32 68
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !53
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121, !prof !54

121:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 450, i32 noundef 9, ptr noundef null) #6
  br label %122

122:                                              ; preds = %121, %115, %113
  tail call void @kfree(ptr noundef nonnull %61) #6
  br label %123

123:                                              ; preds = %122, %59, %47
  %124 = phi i32 [ %109, %122 ], [ -2, %47 ], [ -12, %59 ]
  %125 = inttoptr i32 %124 to ptr
  br label %126

126:                                              ; preds = %123, %101
  %127 = phi ptr [ %125, %123 ], [ %69, %101 ]
  %128 = getelementptr ptr, ptr %2, i32 %33
  store ptr %127, ptr %128, align 4
  %129 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = getelementptr ptr, ptr %2, i32 %33
  tail call void @vm_del_vqs(ptr noundef %0)
  %132 = load ptr, ptr %131, align 4
  %133 = ptrtoint ptr %132 to i32
  br label %138

134:                                              ; preds = %126, %37
  %135 = phi i32 [ %40, %126 ], [ %32, %37 ]
  %136 = add nuw i32 %33, 1
  %137 = icmp eq i32 %136, %1
  br i1 %137, label %138, label %31

138:                                              ; preds = %134, %130, %23, %19, %7
  %139 = phi i32 [ %133, %130 ], [ %10, %7 ], [ %21, %19 ], [ 0, %23 ], [ 0, %134 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vm_del_vqs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %39, label %5

5:                                                ; preds = %37, %1
  %6 = phi ptr [ %7, %37 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.virtqueue, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.virtqueue, ptr %6, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.virtqueue, ptr %6, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.virtio_mmio_device, ptr %9, i32 0, i32 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %11, i32 0, i32 1
  %17 = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %11, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %21 = getelementptr inbounds %struct.virtio_mmio_device, ptr %9, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %13) #6, !srcloc !14
  %24 = getelementptr inbounds %struct.virtio_mmio_device, ptr %9, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %21, align 4
  br i1 %26, label %28, label %30

28:                                               ; preds = %5
  %29 = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #6, !srcloc !14
  br label %37

30:                                               ; preds = %5
  %31 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #6, !srcloc !14
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 68
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !56
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !54

36:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 329, i32 noundef 9, ptr noundef null) #6
  br label %37

37:                                               ; preds = %36, %30, %28
  tail call void @vring_del_virtqueue(ptr noundef %6) #6
  tail call void @kfree(ptr noundef %11) #6
  %38 = icmp eq ptr %7, %2
  br i1 %38, label %39, label %5

39:                                               ; preds = %37, %1
  %40 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @platform_get_irq(ptr noundef %41, i32 noundef 0) #6
  %43 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @vm_get_features(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #6, !srcloc !14
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !14
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !60
  %15 = zext i32 %14 to i64
  %16 = or i64 %9, %15
  ret i64 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vm_finalize_features(ptr noundef %0) #2 {
  tail call void @vring_transport_features(ptr noundef %0) #6
  %2 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 4294967296
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #7
  br label %28

12:                                               ; preds = %5, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %13 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %16 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %17 = load i64, ptr %16, align 8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %13, align 4
  %23 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #6, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %24 = load i64, ptr %16, align 8
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !14
  br label %28

28:                                               ; preds = %12, %10
  %29 = phi i32 [ 0, %12 ], [ -22, %10 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @vm_bus_name(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vm_get_shm_region(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %4 = zext i8 %2 to i32
  %5 = getelementptr inbounds %struct.virtio_mmio_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %4) #6, !srcloc !14
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 176
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !66
  %11 = zext i32 %10 to i64
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 180
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !67
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = getelementptr inbounds %struct.virtio_shm_region, ptr %1, i32 0, i32 1
  store i64 %17, ptr %18, align 8
  %19 = icmp eq i64 %17, -1
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 184
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !68
  %24 = zext i32 %23 to i64
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 188
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !69
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or i64 %29, %24
  store i64 %30, ptr %1, align 8
  br label %31

31:                                               ; preds = %20, %3
  %32 = xor i1 %19, true
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vm_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.virtio_mmio_device, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 96
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !70
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !14
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !54

11:                                               ; preds = %2
  tail call void @virtio_config_changed(ptr noundef %1) #6
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i32 [ 1, %11 ], [ 0, %2 ]
  %14 = and i32 %6, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16, !prof !35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.virtio_mmio_device, ptr %1, i32 0, i32 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #6
  %19 = getelementptr inbounds %struct.virtio_mmio_device, ptr %1, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %31, label %22

22:                                               ; preds = %22, %16
  %23 = phi ptr [ %29, %22 ], [ %20, %16 ]
  %24 = phi i32 [ %28, %22 ], [ %13, %16 ]
  %25 = getelementptr i8, ptr %23, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @vring_interrupt(i32 noundef %0, ptr noundef %26) #6
  %28 = or i32 %27, %24
  %29 = load ptr, ptr %23, align 4
  %30 = icmp eq ptr %29, %19
  br i1 %30, label %31, label %22

31:                                               ; preds = %22, %16
  %32 = phi i32 [ %13, %16 ], [ %28, %22 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #6
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i32 [ %32, %31 ], [ %13, %12 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_config_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vm_notify(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_mmio_device, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #6, !srcloc !14
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_avail_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_used_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 5630159}
!9 = !{i64 2153661550}
!10 = !{i64 2153662492}
!11 = !{i64 2153663447}
!12 = !{i64 2153663799}
!13 = !{i64 2153664067}
!14 = !{i64 5629741}
!15 = !{i64 5629939}
!16 = !{i64 2153608619}
!17 = !{i64 2153608814}
!18 = !{i64 5629321}
!19 = !{i64 2153609349}
!20 = !{i64 2153609886}
!21 = !{i64 2153610423}
!22 = !{i64 2153162122}
!23 = !{i64 2153610736, i64 2153611229, i64 2153610773, i64 2153610829, i64 2153610863, i64 2153610887, i64 2153610928, i64 2153610949, i64 2153610977, i64 2153611011}
!24 = !{i64 2153612939}
!25 = !{i64 5629544}
!26 = !{i64 2153613176}
!27 = !{i64 2153613478}
!28 = !{i64 5629121}
!29 = !{i64 2153613910}
!30 = !{i64 2153614342}
!31 = !{i64 2153614785}
!32 = !{i64 2153615198, i64 2153615691, i64 2153615235, i64 2153615291, i64 2153615325, i64 2153615349, i64 2153615390, i64 2153615411, i64 2153615439, i64 2153615473}
!33 = !{i64 2153617556}
!34 = !{i64 2153619196}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2153620810, i64 2153621303, i64 2153620847, i64 2153620903, i64 2153620937, i64 2153620961, i64 2153621002, i64 2153621023, i64 2153621051, i64 2153621085}
!37 = !{i64 2153621725}
!38 = !{i64 2153623346}
!39 = !{i8 0, i8 2}
!40 = !{i64 2153644777}
!41 = !{i64 2153645370}
!42 = !{i64 2153645905}
!43 = !{i64 2153646199}
!44 = !{i64 2153647577}
!45 = !{i64 2153647933}
!46 = !{i64 2153648269}
!47 = !{i64 2153648621}
!48 = !{i64 2153648981}
!49 = !{i64 2153649333}
!50 = !{i64 2153649693}
!51 = !{i64 2153650045}
!52 = !{i64 2153650397}
!53 = !{i64 2153652190}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2153631542}
!56 = !{i64 2153632985}
!57 = !{i64 2153602392}
!58 = !{i64 2153602869}
!59 = !{i64 2153603061}
!60 = !{i64 2153603538}
!61 = !{i64 2153605899}
!62 = !{i64 2153606245}
!63 = !{i64 2153606617}
!64 = !{i64 2153606955}
!65 = !{i64 2153656631}
!66 = !{i64 2153657110}
!67 = !{i64 2153657459}
!68 = !{i64 2153657808}
!69 = !{i64 2153658157}
!70 = !{i64 2153625506}
!71 = !{i64 2153625703}
!72 = !{i64 2153625013}
