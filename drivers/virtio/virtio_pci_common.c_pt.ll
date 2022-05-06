; ModuleID = '/llk/IR/drivers/virtio/virtio_pci_common.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_pci_device = type { %struct.virtio_device, ptr, %struct.virtio_pci_legacy_device, %struct.virtio_pci_modern_device, i8, ptr, %struct.spinlock, %struct.list_head, ptr, i32, i32, i8, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_legacy = internal constant [24 x i8] c"virtio_pci.force_legacy\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_legacy = internal global i8 0, align 1
@__param_force_legacy = internal constant %struct.kernel_param { ptr @__param_str_force_legacy, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @force_legacy } }, section "__param", align 4
@__UNIQUE_ID_force_legacytype243 = internal constant [38 x i8] c"virtio_pci.parmtype=force_legacy:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_legacy244 = internal constant [81 x i8] c"virtio_pci.parm=force_legacy:Force legacy mode for transitional virtio 1 devices\00", section ".modinfo", align 1
@__initcall__kmod_virtio_pci__248_673_virtio_pci_driver_init6 = internal global ptr @virtio_pci_driver_init, section ".initcall6.init", align 4
@virtio_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @virtio_pci_id_table, ptr @virtio_pci_probe, ptr @virtio_pci_remove, ptr null, ptr null, ptr null, ptr @virtio_pci_sriov_configure, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, align 4
@__exitcall_virtio_pci_driver_exit = internal global ptr @virtio_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [56 x i8] c"virtio_pci.author=Anthony Liguori <aliguori@us.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [34 x i8] c"virtio_pci.description=virtio-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [42 x i8] c"virtio_pci.file=drivers/virtio/virtio_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [23 x i8] c"virtio_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version253 = internal constant [21 x i8] c"virtio_pci.version=1\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"virtio_pci\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s-config\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s-virtqueues\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"virtio-pci\00", align 1
@virtio_pci_id_table = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6900, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@virtio_pci_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_force_legacy244, ptr @__UNIQUE_ID_force_legacytype243, ptr @__UNIQUE_ID_license252, ptr @__UNIQUE_ID_version253, ptr @__exitcall_virtio_pci_driver_exit, ptr @__initcall__kmod_virtio_pci__248_673_virtio_pci_driver_init6, ptr @__modver_attr, ptr @__param_force_legacy, ptr @virtio_pci_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_disable_cbs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 11
  store volatile i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %10 = load i32, ptr %9, align 4
  tail call void @synchronize_irq(i32 noundef %10) #8
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ 0, %15 ], [ %21, %17 ]
  %19 = load ptr, ptr %16, align 8
  %20 = tail call i32 @pci_irq_vector(ptr noundef %19, i32 noundef %18) #8
  tail call void @disable_irq(i32 noundef %20) #8
  %21 = add nuw i32 %18, 1
  %22 = load i32, ptr %12, align 8
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %17, label %24

24:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_enable_cbs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  br label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %15 = load i32, ptr %14, align 4
  tail call void @disable_irq(i32 noundef %15) #8
  %16 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 11
  store volatile i8 1, ptr %16, align 4
  %17 = load ptr, ptr %12, align 8
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %19 = load i32, ptr %18, align 4
  tail call void @enable_irq(i32 noundef %19) #8
  br label %27

20:                                               ; preds = %20, %9
  %21 = phi i32 [ 0, %9 ], [ %24, %20 ]
  %22 = load ptr, ptr %10, align 8
  %23 = tail call i32 @pci_irq_vector(ptr noundef %22, i32 noundef %21) #8
  tail call void @enable_irq(i32 noundef %23) #8
  %24 = add nuw i32 %21, 1
  %25 = load i32, ptr %6, align 8
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %20, label %27

27:                                               ; preds = %20, %11, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @vp_notify(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %4) #8, !srcloc !9
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_del_vqs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  %8 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %28, %5
  %10 = phi ptr [ %3, %5 ], [ %11, %28 ]
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %6, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.virtqueue, ptr %10, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr ptr, ptr %15, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 65535
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %8, align 8
  %25 = tail call i32 @pci_irq_vector(ptr noundef %24, i32 noundef %21) #8
  %26 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %25, ptr noundef null, i1 noundef zeroext true) #8
  %27 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %10) #8
  br label %28

28:                                               ; preds = %23, %14, %9
  %29 = getelementptr inbounds %struct.virtqueue, ptr %10, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.virtio_pci_device, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.virtqueue, ptr %10, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr ptr, ptr %32, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.virtio_pci_device, ptr %30, i32 0, i32 6
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #8
  %39 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %36, i32 0, i32 1
  %40 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %36, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #8
  %44 = getelementptr inbounds %struct.virtio_pci_device, ptr %30, i32 0, i32 18
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef %36) #8
  tail call void @kfree(ptr noundef %36) #8
  %46 = icmp eq ptr %11, %2
  br i1 %46, label %47, label %9

47:                                               ; preds = %28, %1
  %48 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 16
  store i8 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 10
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 46
  %56 = load i32, ptr %55, align 4
  %57 = tail call ptr @free_irq(i32 noundef %56, ptr noundef %0) #8
  store i32 0, ptr %49, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 15
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i32 [ 0, %62 ], [ %69, %64 ]
  %66 = load ptr, ptr %63, align 8
  %67 = tail call i32 @pci_irq_vector(ptr noundef %66, i32 noundef %65) #8
  %68 = tail call ptr @free_irq(i32 noundef %67, ptr noundef %0) #8
  %69 = add nuw i32 %65, 1
  %70 = load i32, ptr %59, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %64, label %72

72:                                               ; preds = %64, %58
  %73 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 19
  %78 = load ptr, ptr %77, align 4
  %79 = tail call zeroext i16 %78(ptr noundef %0, i16 noundef zeroext -1) #8
  %80 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %81) #8
  store i32 0, ptr %73, align 4
  br label %82

82:                                               ; preds = %76, %72
  %83 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 12
  %84 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 14
  store i32 0, ptr %84, align 8
  store i32 0, ptr %59, align 4
  %85 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 13
  %86 = load ptr, ptr %85, align 4
  tail call void @kfree(ptr noundef %86) #8
  store ptr null, ptr %85, align 4
  %87 = load ptr, ptr %83, align 8
  tail call void @kfree(ptr noundef %87) #8
  store ptr null, ptr %83, align 8
  %88 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  %89 = load ptr, ptr %88, align 8
  tail call void @kfree(ptr noundef %89) #8
  store ptr null, ptr %88, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vp_find_vqs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i32 @vp_find_vqs_msix(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true, ptr noundef %5, ptr noundef %6)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @vp_find_vqs_msix(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef %5, ptr noundef %6)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %10
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #8
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  store ptr null, ptr %17, align 8
  br label %74

18:                                               ; preds = %13
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #9
  %21 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 46
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi ptr [ %33, %31 ], [ %29, %23 ]
  %36 = tail call i32 @request_threaded_irq(i32 noundef %27, ptr noundef nonnull @vp_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %35, ptr noundef %0) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 10
  store i32 1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 16
  store i8 0, ptr %40, align 8
  %41 = icmp eq i32 %1, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %38
  %43 = icmp eq ptr %5, null
  br label %44

44:                                               ; preds = %68, %42
  %45 = phi i32 [ 0, %42 ], [ %69, %68 ]
  %46 = phi i32 [ 0, %42 ], [ %70, %68 ]
  %47 = getelementptr ptr, ptr %4, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = getelementptr ptr, ptr %2, i32 %46
  store ptr null, ptr %51, align 4
  br label %68

52:                                               ; preds = %44
  %53 = add i32 %45, 1
  %54 = getelementptr ptr, ptr %3, i32 %46
  %55 = load ptr, ptr %54, align 4
  br i1 %43, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %5, i32 %46
  %58 = load i8, ptr %57, align 1, !range !10
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i32 [ %59, %56 ], [ 0, %52 ]
  %62 = icmp ne i32 %61, 0
  %63 = tail call fastcc ptr @vp_setup_vq(ptr noundef %0, i32 noundef %45, ptr noundef %55, ptr noundef nonnull %48, i1 noundef zeroext %62, i16 noundef zeroext -1) #8
  %64 = getelementptr ptr, ptr %2, i32 %46
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = ptrtoint ptr %63 to i32
  br label %72

68:                                               ; preds = %60, %50
  %69 = phi i32 [ %53, %60 ], [ %45, %50 ]
  %70 = add nuw i32 %46, 1
  %71 = icmp eq i32 %70, %1
  br i1 %71, label %74, label %44

72:                                               ; preds = %66, %34
  %73 = phi i32 [ %36, %34 ], [ %67, %66 ]
  tail call void @vp_del_vqs(ptr noundef %0) #8
  br label %74

74:                                               ; preds = %72, %68, %38, %18, %16, %10, %7
  %75 = phi i32 [ 0, %7 ], [ 0, %10 ], [ %73, %72 ], [ -12, %18 ], [ -12, %16 ], [ 0, %38 ], [ 0, %68 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vp_find_vqs_msix(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i1 noundef zeroext %5, ptr noundef readonly %6, ptr noundef %7) unnamed_addr #0 {
  %9 = zext i1 %5 to i8
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  store ptr null, ptr %13, align 8
  br label %186

14:                                               ; preds = %8
  %15 = extractvalue { i32, i1 } %10, 0
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #9
  %17 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %186, label %19

19:                                               ; preds = %14
  br i1 %5, label %20, label %38

20:                                               ; preds = %19
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %34, %20
  %23 = phi i32 [ %35, %34 ], [ 1, %20 ]
  %24 = phi i32 [ %36, %34 ], [ 0, %20 ]
  %25 = getelementptr ptr, ptr %4, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr ptr, ptr %3, i32 %24
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ne ptr %30, null
  %32 = zext i1 %31 to i32
  %33 = add i32 %23, %32
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %23, %22 ], [ %33, %28 ]
  %36 = add nuw i32 %24, 1
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %22

38:                                               ; preds = %34, %20, %19
  %39 = phi ptr [ null, %19 ], [ %7, %20 ], [ %7, %34 ]
  %40 = phi i32 [ 2, %19 ], [ 1, %20 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi ptr [ %46, %44 ], [ %42, %38 ]
  %49 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 14
  store i32 %40, ptr %49, align 8
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 256) #8
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %52, label %54, !prof !11

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 13
  store ptr null, ptr %53, align 4
  br label %184

54:                                               ; preds = %47
  %55 = extractvalue { i32, i1 } %50, 0
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3264) #9
  %57 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 13
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %184, label %59

59:                                               ; preds = %54
  %60 = shl nuw nsw i32 %40, 2
  %61 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #9
  %62 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 12
  store ptr %61, ptr %62, align 8
  %63 = icmp eq ptr %61, null
  br i1 %63, label %184, label %64

64:                                               ; preds = %59
  %65 = icmp eq ptr %39, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %39, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %39, align 4
  br label %69

69:                                               ; preds = %66, %64
  %70 = phi i32 [ 12, %66 ], [ 4, %64 ]
  %71 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %72, i32 noundef %40, i32 noundef %40, i32 noundef %70, ptr noundef %39) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %184, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 9
  store i32 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %57, align 4
  %80 = getelementptr [256 x i8], ptr %79, i32 %78
  %81 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %80, i32 noundef 256, ptr noundef nonnull @.str.4, ptr noundef %48) #8
  %82 = load ptr, ptr %71, align 8
  %83 = tail call i32 @pci_irq_vector(ptr noundef %82, i32 noundef %78) #8
  %84 = load ptr, ptr %57, align 4
  %85 = getelementptr [256 x i8], ptr %84, i32 %78
  %86 = tail call i32 @request_threaded_irq(i32 noundef %83, ptr noundef nonnull @vp_config_changed, ptr noundef null, i32 noundef 524288, ptr noundef %85, ptr noundef %0) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %184

88:                                               ; preds = %75
  %89 = load i32, ptr %77, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %77, align 4
  %91 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 19
  %92 = load ptr, ptr %91, align 4
  %93 = trunc i32 %78 to i16
  %94 = tail call zeroext i16 %92(ptr noundef %0, i16 noundef zeroext %93) #8
  %95 = icmp eq i16 %94, -1
  %96 = or i1 %95, %5
  br i1 %96, label %111, label %97

97:                                               ; preds = %88
  %98 = load i32, ptr %77, align 4
  %99 = load ptr, ptr %57, align 4
  %100 = getelementptr [256 x i8], ptr %99, i32 %98
  %101 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %100, i32 noundef 256, ptr noundef nonnull @.str.5, ptr noundef %48) #8
  %102 = load ptr, ptr %71, align 8
  %103 = tail call i32 @pci_irq_vector(ptr noundef %102, i32 noundef %98) #8
  %104 = load ptr, ptr %57, align 4
  %105 = getelementptr [256 x i8], ptr %104, i32 %98
  %106 = tail call i32 @request_threaded_irq(i32 noundef %103, ptr noundef nonnull @vp_vring_interrupt, ptr noundef null, i32 noundef 524288, ptr noundef %105, ptr noundef %0) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %184

108:                                              ; preds = %97
  %109 = load i32, ptr %77, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %77, align 4
  br label %112

111:                                              ; preds = %88
  br i1 %95, label %184, label %112

112:                                              ; preds = %111, %108
  %113 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 16
  store i8 %9, ptr %113, align 8
  %114 = icmp eq i32 %1, 0
  br i1 %114, label %186, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %77, align 4
  %117 = icmp eq ptr %6, null
  %118 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 13
  %119 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  br label %120

120:                                              ; preds = %179, %115
  %121 = phi i32 [ 0, %115 ], [ %181, %179 ]
  %122 = phi i32 [ %116, %115 ], [ %180, %179 ]
  %123 = phi i32 [ 0, %115 ], [ %182, %179 ]
  %124 = getelementptr ptr, ptr %4, i32 %123
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = getelementptr ptr, ptr %2, i32 %123
  store ptr null, ptr %128, align 4
  br label %179

129:                                              ; preds = %120
  %130 = getelementptr ptr, ptr %3, i32 %123
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = load i8, ptr %113, align 8, !range !10
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = add i32 %122, 1
  %138 = trunc i32 %122 to i16
  br label %139

139:                                              ; preds = %136, %133, %129
  %140 = phi i16 [ %138, %136 ], [ -1, %129 ], [ 1, %133 ]
  %141 = phi i32 [ %137, %136 ], [ %122, %129 ], [ %122, %133 ]
  %142 = add i32 %121, 1
  br i1 %117, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr i8, ptr %6, i32 %123
  %145 = load i8, ptr %144, align 1, !range !10
  %146 = zext i8 %145 to i32
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi i32 [ %146, %143 ], [ 0, %139 ]
  %149 = icmp ne i32 %148, 0
  %150 = tail call fastcc ptr @vp_setup_vq(ptr noundef %0, i32 noundef %121, ptr noundef %131, ptr noundef nonnull %125, i1 noundef zeroext %149, i16 noundef zeroext %140)
  %151 = getelementptr ptr, ptr %2, i32 %123
  store ptr %150, ptr %151, align 4
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = ptrtoint ptr %150 to i32
  br label %184

155:                                              ; preds = %147
  %156 = load i8, ptr %113, align 8, !range !10
  %157 = icmp eq i8 %156, 0
  %158 = icmp eq i16 %140, -1
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %179, label %160

160:                                              ; preds = %155
  %161 = zext i16 %140 to i32
  %162 = load ptr, ptr %118, align 4
  %163 = getelementptr [256 x i8], ptr %162, i32 %161
  %164 = load ptr, ptr %41, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load ptr, ptr %119, align 4
  br label %168

168:                                              ; preds = %166, %160
  %169 = phi ptr [ %167, %166 ], [ %164, %160 ]
  %170 = load ptr, ptr %124, align 4
  %171 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %163, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef %169, ptr noundef %170)
  %172 = load ptr, ptr %71, align 8
  %173 = tail call i32 @pci_irq_vector(ptr noundef %172, i32 noundef %161) #8
  %174 = load ptr, ptr %118, align 4
  %175 = getelementptr [256 x i8], ptr %174, i32 %161
  %176 = load ptr, ptr %151, align 4
  %177 = tail call i32 @request_threaded_irq(i32 noundef %173, ptr noundef nonnull @vring_interrupt, ptr noundef null, i32 noundef 524288, ptr noundef %175, ptr noundef %176) #8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %168, %155, %127
  %180 = phi i32 [ %141, %155 ], [ %141, %168 ], [ %122, %127 ]
  %181 = phi i32 [ %142, %155 ], [ %142, %168 ], [ %121, %127 ]
  %182 = add nuw i32 %123, 1
  %183 = icmp eq i32 %182, %1
  br i1 %183, label %186, label %120

184:                                              ; preds = %168, %153, %111, %97, %75, %69, %59, %54, %52
  %185 = phi i32 [ -16, %111 ], [ %154, %153 ], [ -12, %54 ], [ -12, %52 ], [ -12, %59 ], [ %106, %97 ], [ %86, %75 ], [ %73, %69 ], [ %177, %168 ]
  tail call void @vp_del_vqs(ptr noundef %0)
  br label %186

186:                                              ; preds = %184, %179, %112, %14, %12
  %187 = phi i32 [ %185, %184 ], [ -12, %14 ], [ -12, %12 ], [ 0, %112 ], [ 0, %179 ]
  ret i32 %187
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @vp_bus_name(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vp_set_vq_affinity(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 12
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %10, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @pci_irq_vector(ptr noundef %24, i32 noundef %22) #8
  %26 = icmp eq ptr %1, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr [1 x %struct.cpumask], ptr %20, i32 %22
  %29 = load i32, ptr %1, align 4
  store i32 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi ptr [ %28, %27 ], [ null, %18 ]
  %32 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %25, ptr noundef %31, i1 noundef zeroext true) #8
  br label %33

33:                                               ; preds = %30, %14, %2
  %34 = phi i32 [ -22, %2 ], [ 0, %14 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vp_get_vq_affinity(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 16
  %4 = load i8, ptr %3, align 8, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr ptr, ptr %8, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 65535
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @pci_irq_get_affinity(ptr noundef %16, i32 noundef %12) #8
  br label %18

18:                                               ; preds = %14, %6, %2
  %19 = phi ptr [ %17, %14 ], [ null, %6 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_irq_get_affinity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @virtio_pci_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @virtio_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @virtio_pci_driver_exit() #3 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @virtio_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @vp_setup_vq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 16) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i16 noundef zeroext %5) #8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  store ptr %13, ptr %8, align 8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 6
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #8
  %20 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %20, ptr %23, align 4
  store ptr %22, ptr %20, align 4
  %24 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %8, i32 0, i32 1, i32 1
  store ptr %21, ptr %24, align 8
  store volatile ptr %20, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #8
  br label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %8, i32 0, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %8, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = getelementptr inbounds %struct.virtio_pci_device, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr ptr, ptr %30, i32 %1
  store ptr %8, ptr %31, align 4
  br label %33

32:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %33

33:                                               ; preds = %32, %28, %6
  %34 = phi ptr [ %13, %32 ], [ %13, %28 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %34
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_config_changed(i32 noundef %0, ptr noundef %1) #0 {
  tail call void @virtio_config_changed(ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_vring_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %2 ]
  %11 = getelementptr i8, ptr %9, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @vring_interrupt(i32 noundef %0, ptr noundef %12) #8
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i32 1, i32 %10
  %16 = load ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %2
  %19 = phi i32 [ 0, %2 ], [ %15, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_config_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vp_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 11
  %4 = load volatile i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = and i8 %9, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @virtio_config_changed(ptr noundef %1) #8
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 6
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %31, label %21

21:                                               ; preds = %21, %15
  %22 = phi ptr [ %29, %21 ], [ %19, %15 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %15 ]
  %24 = getelementptr i8, ptr %22, i32 -4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @vring_interrupt(i32 noundef %0, ptr noundef %25) #8
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %27, i32 1, i32 %23
  %29 = load ptr, ptr %22, align 4
  %30 = icmp eq ptr %29, %18
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %15
  %32 = phi i32 [ 0, %15 ], [ %28, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #8
  br label %33

33:                                               ; preds = %31, %6, %2
  %34 = phi i32 [ %32, %31 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_pci_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 672) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %9 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 6
  %10 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 6, i32 1
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 6, i32 33
  store ptr @virtio_pci_release_dev, ptr %11, align 4
  %12 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 7
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 7, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 6
  store i32 0, ptr %15, align 4
  %16 = tail call i32 @pci_enable_device(ptr noundef %0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %6
  %19 = load i8, ptr @force_legacy, align 1, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @virtio_pci_legacy_probe(ptr noundef nonnull %4) #8
  switch i32 %22, label %25 [
    i32 -12, label %23
    i32 -19, label %23
  ]

23:                                               ; preds = %21, %21
  %24 = tail call i32 @virtio_pci_modern_probe(ptr noundef nonnull %4) #8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %24, %23 ], [ %22, %21 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %49

28:                                               ; preds = %18
  %29 = tail call i32 @virtio_pci_modern_probe(ptr noundef nonnull %4) #8
  %30 = icmp eq i32 %29, -19
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 @virtio_pci_legacy_probe(ptr noundef nonnull %4) #8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %32, %31 ], [ %29, %28 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33, %25
  tail call void @pci_set_master(ptr noundef %0) #8
  %37 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 2, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ne ptr %38, null
  %40 = getelementptr inbounds %struct.virtio_pci_device, ptr %4, i32 0, i32 4
  %41 = zext i1 %39 to i8
  store i8 %41, ptr %40, align 4
  %42 = tail call i32 @register_virtio_device(ptr noundef nonnull %4) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = load i8, ptr %40, align 4, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @virtio_pci_legacy_remove(ptr noundef nonnull %4) #8
  br label %51

48:                                               ; preds = %44
  tail call void @virtio_pci_modern_remove(ptr noundef nonnull %4) #8
  br label %51

49:                                               ; preds = %33, %25
  %50 = phi i32 [ %34, %33 ], [ %26, %25 ]
  tail call void @pci_disable_device(ptr noundef %0) #8
  br label %52

51:                                               ; preds = %48, %47
  tail call void @pci_disable_device(ptr noundef %0) #8
  tail call void @put_device(ptr noundef %9) #8
  br label %54

52:                                               ; preds = %49, %6
  %53 = phi i32 [ %50, %49 ], [ %16, %6 ]
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %54

54:                                               ; preds = %52, %51, %36, %2
  %55 = phi i32 [ -12, %2 ], [ 0, %36 ], [ %53, %52 ], [ %42, %51 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_pci_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6
  %5 = tail call ptr @get_device(ptr noundef %4) #8
  %6 = tail call zeroext i1 @pci_device_is_present(ptr noundef %0) #8
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @virtio_break_device(ptr noundef %3) #8
  br label %8

8:                                                ; preds = %7, %1
  tail call void @unregister_virtio_device(ptr noundef %3) #8
  %9 = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @virtio_pci_legacy_remove(ptr noundef %3) #8
  br label %14

13:                                               ; preds = %8
  tail call void @virtio_pci_modern_remove(ptr noundef %3) #8
  br label %14

14:                                               ; preds = %13, %12
  tail call void @pci_disable_device(ptr noundef %0) #8
  tail call void @put_device(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_pci_sriov_configure(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i8 %8(ptr noundef %4) #8
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 137438953472
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %1, 0
  %19 = select i1 %18, i32 0, i32 -19
  br label %20

20:                                               ; preds = %17, %12, %2
  %21 = phi i32 [ -16, %2 ], [ -22, %12 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtio_pci_release_dev(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_pci_legacy_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_pci_modern_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_pci_legacy_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_pci_modern_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_device_is_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_break_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_pci_freeze(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @virtio_device_freeze(ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -136
  tail call void @pci_disable_device(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtio_pci_restore(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @pci_enable_device(ptr noundef %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void @pci_set_master(ptr noundef %2) #8
  %8 = tail call i32 @virtio_device_restore(ptr noundef %4) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %5, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_device_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_device_restore(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2151375641}
!9 = !{i64 3834401}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 3835219}
!13 = !{i64 2151373946}
