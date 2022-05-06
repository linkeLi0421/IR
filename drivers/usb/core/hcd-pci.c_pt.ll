; ModuleID = '/llk/IR/drivers/usb/core/hcd-pci.c_pt.bc'
source_filename = "../drivers/usb/core/hcd-pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_pci_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_pci_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_pci_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Found HC with no IRQ. Check BIOS/PCI %s setup!\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@companions_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @companions_rwsem, i64 16), ptr getelementptr (i8, ptr @companions_rwsem, i64 16) } }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1
@__kstrtab_usb_hcd_pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_probe to i32), ptr @__kstrtab_usb_hcd_pci_probe, ptr @__kstrtabns_usb_hcd_pci_probe }, section "___ksymtab_gpl+usb_hcd_pci_probe", align 4
@__kstrtab_usb_hcd_pci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_remove to i32), ptr @__kstrtab_usb_hcd_pci_remove, ptr @__kstrtabns_usb_hcd_pci_remove }, section "___ksymtab_gpl+usb_hcd_pci_remove", align 4
@__kstrtab_usb_hcd_pci_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_shutdown to i32), ptr @__kstrtab_usb_hcd_pci_shutdown, ptr @__kstrtabns_usb_hcd_pci_shutdown }, section "___ksymtab_gpl+usb_hcd_pci_shutdown", align 4
@usb_hcd_pci_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @hcd_pci_suspend, ptr @hcd_pci_resume, ptr @check_root_hub_suspended, ptr null, ptr @hcd_pci_suspend, ptr @hcd_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hcd_pci_suspend_noirq, ptr @hcd_pci_resume_noirq, ptr @check_root_hub_suspended, ptr null, ptr @hcd_pci_suspend_noirq, ptr @hcd_pci_resume_noirq, ptr @hcd_pci_runtime_suspend, ptr @hcd_pci_runtime_resume, ptr null }, align 4
@__kstrtab_usb_hcd_pci_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_pci_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_pci_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_pci_pm_ops to i32), ptr @__kstrtab_usb_hcd_pci_pm_ops, ptr @__kstrtabns_usb_hcd_pci_pm_ops }, section "___ksymtab_gpl+usb_hcd_pci_pm_ops", align 4
@__func__.suspend_common = private unnamed_addr constant [15 x i8] c"suspend_common\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"can't re-enable after resume, %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"PCI post-resume error %d!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Root hub is not suspended\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Secondary root hub is not suspended\0A\00", align 1
@__func__.hcd_pci_suspend_noirq = private unnamed_addr constant [22 x i8] c"hcd_pci_suspend_noirq\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_usb_hcd_pci_pm_ops, ptr @__ksymtab_usb_hcd_pci_probe, ptr @__ksymtab_usb_hcd_pci_remove, ptr @__ksymtab_usb_hcd_pci_shutdown], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_pci_probe(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @usb_disabled() #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %241

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %2, null
  %9 = or i1 %7, %8
  br i1 %9, label %241, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @pci_enable_device(ptr noundef %0) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %241, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hc_driver, ptr %2, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %24, %21 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %29) #6
  br label %231

30:                                               ; preds = %18
  %31 = tail call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #5
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi i32 [ %31, %30 ], [ 0, %13 ]
  %34 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load ptr, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %39, %38 ], [ %36, %32 ]
  %42 = tail call ptr @usb_create_hcd(ptr noundef nonnull %2, ptr noundef %34, ptr noundef %41) #5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %225, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef %0) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %14, align 4
  %49 = and i32 %48, 80
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i16 0, i16 256
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i16 [ %51, %47 ], [ 0, %44 ]
  %54 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 14
  %55 = load i16, ptr %54, align 8
  %56 = and i16 %55, -257
  %57 = or i16 %56, %53
  store i16 %57, ptr %54, align 8
  %58 = load i32, ptr %14, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 17
  %63 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 18
  br label %87

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 17
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, ptr %65, align 8
  %73 = add i32 %69, 1
  %74 = sub i32 %73, %72
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi i32 [ %74, %71 ], [ 0, %64 ]
  %77 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 18
  store i32 %76, ptr %77, align 8
  %78 = load ptr, ptr %2, align 4
  %79 = tail call ptr @__devm_request_region(ptr noundef %34, ptr noundef nonnull @iomem_resource, i32 noundef %66, i32 noundef %76, ptr noundef %78) #5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %223, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %67, align 4
  %83 = load i32, ptr %77, align 8
  %84 = tail call ptr @devm_ioremap(ptr noundef %34, i32 noundef %82, i32 noundef %83) #5
  %85 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 16
  store ptr %84, ptr %85, align 8
  %86 = icmp eq ptr %84, null
  br i1 %86, label %223, label %111

87:                                               ; preds = %108, %61
  %88 = phi i32 [ 0, %61 ], [ %109, %108 ]
  %89 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %88
  %90 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %88, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 256
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %87
  %95 = load i32, ptr %89, align 8
  store i32 %95, ptr %62, align 4
  %96 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %88, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %89, align 8
  %101 = add i32 %97, 1
  %102 = sub i32 %101, %100
  br label %103

103:                                              ; preds = %99, %94
  %104 = phi i32 [ %102, %99 ], [ 0, %94 ]
  store i32 %104, ptr %63, align 8
  %105 = load ptr, ptr %2, align 4
  %106 = tail call ptr @__devm_request_region(ptr noundef %34, ptr noundef nonnull @ioport_resource, i32 noundef %95, i32 noundef %104, ptr noundef %105) #5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %87
  %109 = add nuw nsw i32 %88, 1
  %110 = icmp eq i32 %109, 6
  br i1 %110, label %223, label %87

111:                                              ; preds = %103, %81
  tail call void @pci_set_master(ptr noundef %0) #5
  %112 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 787232
  br i1 %114, label %115, label %203

115:                                              ; preds = %111
  tail call void @down_write(ptr noundef nonnull @companions_rwsem) #5
  %116 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %42, ptr %116, align 8
  %117 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %120 = icmp eq ptr %119, null
  br i1 %120, label %155, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  br label %123

123:                                              ; preds = %135, %121
  %124 = phi ptr [ %119, %121 ], [ %136, %135 ]
  %125 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %122, align 8
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, %118
  %133 = and i32 %132, 248
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %152, %145, %141, %138, %129, %123
  %136 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %124) #5
  %137 = icmp eq ptr %136, null
  br i1 %137, label %155, label %123

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 11
  %140 = load i32, ptr %139, align 8
  switch i32 %140, label %135 [
    i32 787200, label %141
    i32 787216, label %141
    i32 787232, label %141
  ]

141:                                              ; preds = %138, %138, %138
  %142 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44, i32 8
  %143 = load ptr, ptr %142, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %135, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.usb_bus, ptr %143, i32 0, i32 11
  %147 = load ptr, ptr %146, align 8
  %148 = icmp ne ptr %147, null
  %149 = and i32 %140, -17
  %150 = icmp eq i32 %149, 787200
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %135

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %153) #5
  %154 = tail call i32 @usb_set_configuration(ptr noundef nonnull %147, i32 noundef 0) #5
  br label %135

155:                                              ; preds = %135, %115
  %156 = tail call i32 @usb_add_hcd(ptr noundef nonnull %42, i32 noundef %33, i32 noundef 128) #5
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  store ptr null, ptr %116, align 8
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32, ptr %117, align 4
  %161 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %162 = icmp eq ptr %161, null
  br i1 %162, label %202, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  br label %165

165:                                              ; preds = %177, %163
  %166 = phi ptr [ %161, %163 ], [ %178, %177 ]
  %167 = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8
  %169 = load ptr, ptr %164, align 8
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = xor i32 %173, %160
  %175 = and i32 %174, 248
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %199, %187, %183, %180, %171, %165
  %178 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %166) #5
  %179 = icmp eq ptr %178, null
  br i1 %179, label %202, label %165

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 11
  %182 = load i32, ptr %181, align 8
  switch i32 %182, label %177 [
    i32 787200, label %183
    i32 787216, label %183
    i32 787232, label %183
  ]

183:                                              ; preds = %180, %180, %180
  %184 = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44, i32 8
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %177, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.usb_bus, ptr %185, i32 0, i32 11
  %189 = load ptr, ptr %188, align 8
  %190 = icmp ne ptr %189, null
  %191 = and i32 %182, -17
  %192 = icmp eq i32 %191, 787200
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %177

194:                                              ; preds = %187
  %195 = load ptr, ptr %116, align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.usb_bus, ptr %185, i32 0, i32 12
  store ptr %42, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %194
  %200 = tail call i32 @usb_set_configuration(ptr noundef nonnull %189, i32 noundef 1) #5
  %201 = getelementptr inbounds %struct.usb_device, ptr %189, i32 0, i32 15, i32 9
  tail call void @mutex_unlock(ptr noundef %201) #5
  br label %177

202:                                              ; preds = %177, %159
  tail call void @up_write(ptr noundef nonnull @companions_rwsem) #5
  br label %210

203:                                              ; preds = %111
  tail call void @down_read(ptr noundef nonnull @companions_rwsem) #5
  %204 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %42, ptr %204, align 8
  %205 = tail call i32 @usb_add_hcd(ptr noundef nonnull %42, i32 noundef %33, i32 noundef 128) #5
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  store ptr null, ptr %204, align 8
  br label %209

208:                                              ; preds = %203
  tail call fastcc void @for_each_companion(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull @non_ehci_add)
  br label %209

209:                                              ; preds = %208, %207
  tail call void @up_read(ptr noundef nonnull @companions_rwsem) #5
  br label %210

210:                                              ; preds = %209, %202
  %211 = phi i32 [ %156, %202 ], [ %205, %209 ]
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %210
  %214 = load ptr, ptr %42, align 8
  %215 = tail call i32 @device_wakeup_enable(ptr noundef %214) #5
  %216 = tail call zeroext i1 @pci_dev_run_wake(ptr noundef %0) #5
  br i1 %216, label %217, label %241

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %218) #5, !srcloc !9
  %219 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %218, ptr %218, i32 0, i32 -1, ptr elementtype(i32) %218) #5, !srcloc !10
  %220 = extractvalue { i32, i32, i32 } %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %241, label %222

222:                                              ; preds = %217
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %241

223:                                              ; preds = %210, %108, %81, %75
  %224 = phi i32 [ %211, %210 ], [ -16, %75 ], [ -14, %81 ], [ -16, %108 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %42) #5
  br label %225

225:                                              ; preds = %223, %40
  %226 = phi i32 [ %224, %223 ], [ -12, %40 ]
  %227 = load i32, ptr %14, align 4
  %228 = and i32 %227, 64
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  tail call void @pci_free_irq_vectors(ptr noundef %0) #5
  br label %231

231:                                              ; preds = %230, %225, %28
  %232 = phi i32 [ -19, %28 ], [ %226, %230 ], [ %226, %225 ]
  tail call void @pci_disable_device(ptr noundef %0) #5
  %233 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %234 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load ptr, ptr %233, align 4
  br label %239

239:                                              ; preds = %237, %231
  %240 = phi ptr [ %238, %237 ], [ %235, %231 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.1, ptr noundef %240, i32 noundef %232) #6
  br label %241

241:                                              ; preds = %239, %222, %217, %213, %10, %6, %3
  %242 = phi i32 [ %232, %239 ], [ -19, %3 ], [ -22, %6 ], [ -19, %10 ], [ 0, %213 ], [ 0, %217 ], [ 0, %222 ]
  ret i32 %242
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_amd_remote_wakeup_quirk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @for_each_companion(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi ptr [ %6, %8 ], [ %23, %22 ]
  %12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, %5
  %20 = and i32 %19, 248
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %36, %32, %28, %25, %16, %10
  %23 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %11) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %10

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 11
  %27 = load i32, ptr %26, align 8
  switch i32 %27, label %22 [
    i32 787200, label %28
    i32 787216, label %28
    i32 787232, label %28
  ]

28:                                               ; preds = %25, %25, %25
  %29 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %22, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.usb_bus, ptr %30, i32 0, i32 11
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %22, label %36

36:                                               ; preds = %32
  tail call void %2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %30) #5
  br label %22

37:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @non_ehci_add(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 {
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -17
  %8 = icmp eq i32 %7, 787200
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 787232
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 12
  store ptr %3, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_dev_run_wake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_pci_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hc_driver, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call zeroext i1 @pci_dev_run_wake(ptr noundef %0) #5
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #5, !srcloc !9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #5, !srcloc !12
  br label %14

14:                                               ; preds = %11, %5
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #5, !srcloc !13
  %15 = tail call i32 @usb_hcd_irq(i32 noundef 0, ptr noundef nonnull %3) #5
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !14
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 787232
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  tail call void @down_write(ptr noundef nonnull @companions_rwsem) #5
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %38, %24
  %27 = phi ptr [ %22, %24 ], [ %39, %38 ]
  %28 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %25, align 8
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, %21
  %36 = and i32 %35, 248
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %55, %48, %44, %41, %32, %26
  %39 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %27) #5
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %26

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 11
  %43 = load i32, ptr %42, align 8
  switch i32 %43, label %38 [
    i32 787200, label %44
    i32 787216, label %44
    i32 787232, label %44
  ]

44:                                               ; preds = %41, %41, %41
  %45 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 8
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %38, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.usb_bus, ptr %46, i32 0, i32 11
  %50 = load ptr, ptr %49, align 8
  %51 = icmp ne ptr %50, null
  %52 = and i32 %43, -17
  %53 = icmp eq i32 %52, 787200
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %38

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.usb_bus, ptr %46, i32 0, i32 12
  store ptr null, ptr %56, align 4
  br label %38

57:                                               ; preds = %38, %19
  tail call void @usb_remove_hcd(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 8
  tail call void @up_write(ptr noundef nonnull @companions_rwsem) #5
  br label %60

58:                                               ; preds = %14
  tail call void @down_read(ptr noundef nonnull @companions_rwsem) #5
  %59 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 12
  store ptr null, ptr %59, align 4
  tail call void @usb_remove_hcd(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 8
  tail call void @up_read(ptr noundef nonnull @companions_rwsem) #5
  br label %60

60:                                               ; preds = %58, %57
  tail call void @usb_put_hcd(ptr noundef nonnull %3) #5
  %61 = and i32 %9, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @pci_free_irq_vectors(ptr noundef %0) #5
  br label %64

64:                                               ; preds = %63, %60
  tail call void @pci_disable_device(ptr noundef %0) #5
  br label %65

65:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_pci_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hc_driver, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  tail call void %14(ptr noundef nonnull %3) #5
  %17 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %3) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @free_irq(i32 noundef %21, ptr noundef nonnull %3) #5
  br label %25

25:                                               ; preds = %23, %19, %16
  tail call void @pci_disable_device(ptr noundef %0) #5
  br label %26

26:                                               ; preds = %25, %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hcd_pci_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = tail call fastcc i32 @suspend_common(ptr noundef %0, i1 noundef zeroext %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hcd_pci_resume(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @resume_common(ptr noundef %0, i32 noundef 16)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_root_hub_suspended(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 24
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %1
  %18 = phi ptr [ @.str.4, %1 ], [ @.str.5, %12 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull %18) #6
  br label %19

19:                                               ; preds = %17, %12, %8
  %20 = phi i32 [ 0, %12 ], [ 0, %8 ], [ -16, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hcd_pci_restore(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @resume_common(ptr noundef %0, i32 noundef 64)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hcd_pci_suspend_noirq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 24
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 12
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %1
  %19 = phi ptr [ @.str.4, %1 ], [ @.str.5, %13 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull %19) #6
  br label %30

20:                                               ; preds = %13, %9
  %21 = tail call i32 @pci_save_state(ptr noundef %2) #5
  %22 = load i32, ptr %5, align 8
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @device_set_wakeup_enable(ptr noundef %0, i1 noundef zeroext false) #5
  br label %27

27:                                               ; preds = %25, %20
  %28 = tail call i32 @pci_prepare_to_sleep(ptr noundef %2) #5
  switch i32 %28, label %29 [
    i32 -5, label %30
    i32 0, label %30
  ]

29:                                               ; preds = %27
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.hcd_pci_suspend_noirq, ptr noundef nonnull @pci_prepare_to_sleep, i32 noundef %28) #5
  br label %30

30:                                               ; preds = %29, %27, %27, %18
  %31 = phi i32 [ %28, %29 ], [ -16, %18 ], [ 0, %27 ], [ 0, %27 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hcd_pci_resume_noirq(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hcd_pci_runtime_suspend(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @suspend_common(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hcd_pci_runtime_resume(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @resume_common(ptr noundef %0, i32 noundef 1040)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @suspend_common(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 24
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %2
  %20 = phi ptr [ @.str.4, %2 ], [ @.str.5, %14 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull %20) #6
  br label %78

21:                                               ; preds = %14, %10
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hc_driver, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = and i32 %7, 64
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %70

30:                                               ; preds = %21
  %31 = xor i1 %1, true
  %32 = and i32 %7, 16
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = xor i1 %1, true
  %37 = select i1 %36, i1 true, i1 %13
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 12
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %38, %35
  %44 = tail call i32 %25(ptr noundef %5, i1 noundef zeroext %1) #5
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr inbounds %struct.hc_driver, ptr %45, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  tail call void @__suspend_report_result(ptr noundef nonnull @__func__.suspend_common, ptr noundef %47, i32 noundef %44) #5
  %48 = icmp ne i32 %44, 0
  %49 = or i1 %48, %31
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br i1 %48, label %78, label %70

51:                                               ; preds = %43
  %52 = load i32, ptr %6, align 8
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load ptr, ptr %11, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %56, i32 0, i32 12
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58, %51
  %64 = load ptr, ptr %22, align 4
  %65 = getelementptr inbounds %struct.hc_driver, ptr %64, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = tail call i32 %66(ptr noundef %5, i1 noundef zeroext false) #5
  br label %78

70:                                               ; preds = %58, %55, %50, %21
  %71 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 14
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef 0) #5
  tail call void @synchronize_irq(i32 noundef %76) #5
  br label %77

77:                                               ; preds = %75, %70
  tail call void @pci_disable_device(ptr noundef %3) #5
  br label %78

78:                                               ; preds = %77, %68, %63, %50, %38, %30, %19
  %79 = phi i32 [ 0, %77 ], [ -16, %19 ], [ -16, %30 ], [ -16, %38 ], [ -16, %68 ], [ -16, %63 ], [ %44, %50 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__suspend_report_result(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @resume_common(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %86

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 24
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %14, %10
  %20 = tail call i32 @pci_enable_device(ptr noundef %3) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %20) #6
  br label %86

23:                                               ; preds = %19
  tail call void @pci_set_master(ptr noundef %3) #5
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.hc_driver, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %86, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %6, align 8
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 -96
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 787232
  %37 = icmp ne i32 %1, 1040
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %0, i32 -108
  %41 = load i32, ptr %40, align 4
  %42 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %78, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %0, i32 -128
  br label %46

46:                                               ; preds = %58, %44
  %47 = phi ptr [ %42, %44 ], [ %59, %58 ]
  %48 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = load ptr, ptr %45, align 8
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %54, %41
  %56 = and i32 %55, 248
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %75, %68, %64, %61, %52, %46
  %59 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %47) #5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %78, label %46

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 11
  %63 = load i32, ptr %62, align 8
  switch i32 %63, label %58 [
    i32 787200, label %64
    i32 787216, label %64
    i32 787232, label %64
  ]

64:                                               ; preds = %61, %61, %61
  %65 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44, i32 8
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %58, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.usb_bus, ptr %66, i32 0, i32 11
  %70 = load ptr, ptr %69, align 8
  %71 = icmp ne ptr %70, null
  %72 = and i32 %63, -17
  %73 = icmp eq i32 %72, 787200
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %58

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %77 = tail call i32 @device_pm_wait_for_dev(ptr noundef %0, ptr noundef %76) #5
  br label %58

78:                                               ; preds = %58, %39, %33
  %79 = load ptr, ptr %24, align 4
  %80 = getelementptr inbounds %struct.hc_driver, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq i32 %1, 64
  %83 = tail call i32 %81(ptr noundef %5, i1 noundef zeroext %82) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %83) #6
  tail call void @usb_hc_died(ptr noundef %5) #5
  br label %86

86:                                               ; preds = %85, %78, %29, %23, %22, %14, %2
  %87 = phi i32 [ %20, %22 ], [ 0, %14 ], [ 0, %2 ], [ %20, %29 ], [ %83, %85 ], [ 0, %78 ], [ %20, %23 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_pm_wait_for_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2147927037}
!9 = !{i64 425347, i64 2147915318, i64 2147915344, i64 2147915391, i64 2147915413, i64 2147915441, i64 2147915461}
!10 = !{i64 411916, i64 411941, i64 411963, i64 411979, i64 411991, i64 412011, i64 412035, i64 412051, i64 412063}
!11 = !{i64 2147927163}
!12 = !{i64 2147927530, i64 2147927556, i64 2147927585, i64 2147927619, i64 2147927650, i64 2147927673}
!13 = !{i64 321021}
!14 = !{i64 320831}
