; ModuleID = '/llk/IR/drivers/usb/isp1760/isp1760-hcd.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-hcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.isp1760_hcd = type { ptr, ptr, ptr, [78 x ptr], i8, ptr, %struct.spinlock, ptr, i32, ptr, i32, [56 x %struct.isp1760_memory_chunk], [3 x %struct.list_head], i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.isp1760_memory_chunk = type { i32, i32, i32 }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.61, i32 }
%union.anon.61 = type { ptr }
%struct.isp1760_memory_layout = type { [3 x i32], [3 x i32], i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.isp1760_qtd = type { i8, ptr, i32, %struct.list_head, ptr, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.isp1760_qh = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32 }
%struct.isp1760_slotinfo = type { ptr, ptr, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.66 }>
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { [4 x i8], [4 x i8] }
%struct.ptd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.urb_listitem = type { %struct.list_head, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [21 x i8] c"isp1760_urb_listitem\00", align 1
@urb_listitem_cachep = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"isp1760_qtd\00", align 1
@qtd_cachep = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"isp1760_qh\00", align 1
@qh_cachep = internal unnamed_addr global ptr null, align 4
@isp1760_hc_driver = internal constant %struct.hc_driver { ptr @.str.3, ptr @.str.4, i32 4, ptr @isp1760_irq, i32 33, ptr @isp1760_hc_setup, ptr @isp1760_run, ptr null, ptr null, ptr @isp1760_stop, ptr @isp1760_shutdown, ptr @isp1760_get_frame, ptr @isp1760_urb_enqueue, ptr @isp1760_urb_dequeue, ptr null, ptr null, ptr @isp1760_endpoint_disable, ptr null, ptr @isp1760_hub_status_data, ptr @isp1760_hub_control, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp1760_clear_tt_buffer_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"isp1760-hcd\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"NXP ISP1760 USB Host Controller\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"drivers/usb/isp1760/isp1760-hcd.c\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: PTD_STATE_QTD_RELOAD on interrupt packet\0A\00", align 1
@__func__.handle_done_ptds = private unnamed_addr constant [17 x i8] c"handle_done_ptds\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@isp176x_hc_portsc1_fields = internal unnamed_addr constant [9 x i32] [i32 8192, i32 4096, i32 1024, i32 256, i32 128, i32 64, i32 4, i32 2, i32 1], align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: Invalid pointer: %08x\0A\00", align 1
@__func__.free_mem = private unnamed_addr constant [9 x i8] c"free_mem\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Scratch test failed. 0x%08x\0A\00", align 1
@ehci_cf_port_reset_rwsem = external dso_local global %struct.rw_semaphore, align 4
@errata2_timer_hcd = internal unnamed_addr global ptr null, align 4
@errata2_timer = internal global %struct.timer_list zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"USB ISP %02x%02x HW rev. %d started\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s: isochronous USB packets not yet supported\0A\00", align 1
@__func__.isp1760_urb_enqueue = private unnamed_addr constant [20 x i8] c"isp1760_urb_enqueue\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"buf is null, dma is %08lx len is %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Port resume should be skipped.\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"port %d resume error %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"port %d reset error %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"PORT_OWNER is set\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"port %d full speed --> companion\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"port %d high speed\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @isp1760_init_kmem_once() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 12, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #8
  store ptr %1, ptr @urb_listitem_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 36, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #8
  store ptr %4, ptr @qtd_cachep, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #8
  store ptr %7, ptr @qh_cachep, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load ptr, ptr @qtd_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %9, %3
  %12 = load ptr, ptr @urb_listitem_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %11, %6, %0
  %14 = phi i32 [ -12, %11 ], [ -12, %0 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @isp1760_deinit_kmem_cache() local_unnamed_addr #2 {
  %1 = load ptr, ptr @qtd_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  %2 = load ptr, ptr @qh_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #8
  %3 = load ptr, ptr @urb_listitem_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @isp1760_hcd_register(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr %4, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %9, %5 ]
  %15 = tail call ptr @usb_create_hcd(ptr noundef nonnull @isp1760_hc_driver, ptr noundef %4, ptr noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %133, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 29
  store ptr %0, ptr %18, align 8
  store ptr %15, ptr %0, align 4
  %19 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %7, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 12) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %23, label %25, !prof !8

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 7
  store ptr null, ptr %24, align 4
  br label %131

25:                                               ; preds = %17
  %26 = extractvalue { i32, i1 } %21, 0
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #9
  %28 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 7
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %131, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %19, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 12) #8
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %36, !prof !8

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 9
  store ptr null, ptr %35, align 4
  br label %128

36:                                               ; preds = %30
  %37 = extractvalue { i32, i1 } %32, 0
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #9
  %39 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 9
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %128, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.isp1760_memory_layout, ptr %42, i32 0, i32 1, i32 0
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i32 [ 4096, %45 ], [ %54, %47 ]
  %49 = phi i32 [ 0, %45 ], [ %55, %47 ]
  %50 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %49
  store i32 %48, ptr %50, align 4
  %51 = load i32, ptr %46, align 4
  %52 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %49, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %49, i32 2
  store i32 1, ptr %53, align 4
  %54 = add i32 %51, %48
  %55 = add nuw i32 %49, 1
  %56 = load i32, ptr %42, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %47, label %58

58:                                               ; preds = %47, %41
  %59 = phi i32 [ 0, %41 ], [ %55, %47 ]
  %60 = phi i32 [ 4096, %41 ], [ %54, %47 ]
  %61 = getelementptr [3 x i32], ptr %42, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = getelementptr %struct.isp1760_memory_layout, ptr %42, i32 0, i32 1, i32 1
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i32 [ %60, %64 ], [ %74, %66 ]
  %68 = phi i32 [ 0, %64 ], [ %75, %66 ]
  %69 = add i32 %68, %59
  %70 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %69
  store i32 %67, ptr %70, align 4
  %71 = load i32, ptr %65, align 4
  %72 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %69, i32 1
  store i32 %71, ptr %72, align 4
  %73 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %69, i32 2
  store i32 1, ptr %73, align 4
  %74 = add i32 %71, %67
  %75 = add nuw i32 %68, 1
  %76 = load i32, ptr %61, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %66, label %78

78:                                               ; preds = %66, %58
  %79 = phi i32 [ 0, %58 ], [ %75, %66 ]
  %80 = phi i32 [ %60, %58 ], [ %74, %66 ]
  %81 = add i32 %79, %59
  %82 = getelementptr [3 x i32], ptr %42, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %78
  %86 = getelementptr %struct.isp1760_memory_layout, ptr %42, i32 0, i32 1, i32 2
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ %80, %85 ], [ %95, %87 ]
  %89 = phi i32 [ 0, %85 ], [ %96, %87 ]
  %90 = add i32 %81, %89
  %91 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %90
  store i32 %88, ptr %91, align 4
  %92 = load i32, ptr %86, align 4
  %93 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %90, i32 1
  store i32 %92, ptr %93, align 4
  %94 = getelementptr %struct.isp1760_hcd, ptr %0, i32 0, i32 11, i32 %90, i32 2
  store i32 1, ptr %94, align 4
  %95 = add i32 %92, %88
  %96 = add nuw i32 %89, 1
  %97 = load i32, ptr %82, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %87, label %99

99:                                               ; preds = %87, %78
  %100 = phi i32 [ %80, %78 ], [ %95, %87 ]
  %101 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = sub i32 %100, %102
  %104 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %42, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %103, %105
  br i1 %106, label %107, label %108, !prof !8

107:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 600, i32 noundef 9, ptr noundef null) #8
  br label %108

108:                                              ; preds = %107, %99
  %109 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 15
  store i32 %2, ptr %109, align 4
  %110 = load i32, ptr %1, align 4
  %111 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 17
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %1, align 4
  %115 = add i32 %113, 1
  %116 = sub i32 %115, %114
  %117 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 18
  store i32 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 14
  %119 = load i16, ptr %118, align 8
  %120 = or i16 %119, 2048
  store i16 %120, ptr %118, align 8
  %121 = tail call i32 @usb_add_hcd(ptr noundef nonnull %15, i32 noundef %2, i32 noundef %3) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = load ptr, ptr %15, align 8
  %125 = tail call i32 @device_wakeup_enable(ptr noundef %124) #8
  br label %133

126:                                              ; preds = %108
  %127 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %127) #8
  br label %128

128:                                              ; preds = %126, %36, %34
  %129 = phi i32 [ %121, %126 ], [ -12, %36 ], [ -12, %34 ]
  %130 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %130) #8
  br label %131

131:                                              ; preds = %128, %25, %23
  %132 = phi i32 [ %129, %128 ], [ -12, %25 ], [ -12, %23 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %15) #8
  br label %133

133:                                              ; preds = %131, %123, %13
  %134 = phi i32 [ %132, %131 ], [ 0, %123 ], [ -12, %13 ]
  ret i32 %134
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @isp1760_hcd_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  tail call void @usb_remove_hcd(ptr noundef nonnull %2) #8
  %5 = load ptr, ptr %0, align 4
  tail call void @usb_put_hcd(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.isp1760_hcd, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_irq(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %14 = getelementptr %struct.isp1760_hcd, ptr %13, i32 0, i32 3, i32 53
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %4) #8
  %17 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19, !prof !8

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 4
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 784, i32 212
  %24 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_write(ptr noundef %25, i32 noundef %23, i32 noundef %17) #8
  %27 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %28 = getelementptr %struct.isp1760_hcd, ptr %27, i32 0, i32 3, i32 22
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_field_read(ptr noundef %29, ptr noundef nonnull %3) #8
  %31 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %32 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, ptr %32, align 4
  %35 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %36 = getelementptr %struct.isp1760_hcd, ptr %35, i32 0, i32 3, i32 25
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @regmap_field_read(ptr noundef %37, ptr noundef nonnull %2) #8
  %39 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %40 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 4
  call fastcc void @handle_done_ptds(ptr noundef %0)
  br label %43

43:                                               ; preds = %19, %12, %1
  %44 = phi i32 [ 0, %12 ], [ 1, %19 ], [ 0, %1 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %45 = load i16, ptr %7, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_hc_setup(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.isp1760_hcd, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 -559035650, i32 51966
  %12 = getelementptr %struct.isp1760_hcd, ptr %7, i32 0, i32 3, i32 43
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %16 = getelementptr %struct.isp1760_hcd, ptr %15, i32 0, i32 3, i32 40
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %19 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %20 = getelementptr %struct.isp1760_hcd, ptr %19, i32 0, i32 3, i32 43
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @regmap_field_read(ptr noundef %21, ptr noundef nonnull %4) #8
  %23 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %24 = icmp eq i32 %23, %11
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9, i32 noundef %23) #10
  br label %145

27:                                               ; preds = %1
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr %struct.isp1760_hcd, ptr %28, i32 0, i32 3, i32 47
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr %struct.isp1760_hcd, ptr %32, i32 0, i32 3, i32 48
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr %struct.isp1760_hcd, ptr %36, i32 0, i32 3, i32 49
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @regmap_field_update_bits_base(ptr noundef %38, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr %struct.isp1760_hcd, ptr %40, i32 0, i32 3, i32 26
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr %struct.isp1760_hcd, ptr %44, i32 0, i32 3, i32 23
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr %struct.isp1760_hcd, ptr %48, i32 0, i32 3, i32 20
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @regmap_field_update_bits_base(ptr noundef %50, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %52 = call fastcc i32 @ehci_reset(ptr noundef %0)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %145

54:                                               ; preds = %27
  %55 = load i8, ptr %8, align 4, !range !10
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 28, i32 44
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds %struct.isp1760_hcd, ptr %58, i32 0, i32 3
  %60 = getelementptr ptr, ptr %59, i32 %57
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 @regmap_field_update_bits_base(ptr noundef %61, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748000) #8
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #8
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #8
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 214748000) #8
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #8
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748000) #8
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %69(i32 noundef 214748000) #8
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #8
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %71(i32 noundef 214748000) #8
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #8
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.isp1760_hcd, ptr %73, i32 0, i32 3
  %75 = getelementptr ptr, ptr %74, i32 %57
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @regmap_field_update_bits_base(ptr noundef %76, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %78 = load i8, ptr %8, align 4, !range !10
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %54
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr %struct.isp1760_hcd, ptr %81, i32 0, i32 3, i32 62
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @regmap_field_update_bits_base(ptr noundef %83, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr %struct.isp1760_hcd, ptr %85, i32 0, i32 3, i32 71
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 @regmap_field_update_bits_base(ptr noundef %87, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr %struct.isp1760_hcd, ptr %89, i32 0, i32 3, i32 77
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @regmap_field_update_bits_base(ptr noundef %91, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #8
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748000) #8
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748000) #8
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 214748000) #8
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 214748000) #8
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 214748000) #8
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 214748000) #8
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #8
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %101(i32 noundef 214748000) #8
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 214748000) #8
  %103 = load ptr, ptr %6, align 8
  %104 = getelementptr %struct.isp1760_hcd, ptr %103, i32 0, i32 3, i32 37
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @regmap_field_update_bits_base(ptr noundef %105, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %107

107:                                              ; preds = %80, %54
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr %struct.isp1760_hcd, ptr %108, i32 0, i32 3, i32 54
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @regmap_field_update_bits_base(ptr noundef %110, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %112 = load ptr, ptr %6, align 8
  %113 = getelementptr %struct.isp1760_hcd, ptr %112, i32 0, i32 3, i32 55
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 @regmap_field_update_bits_base(ptr noundef %114, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %116 = load ptr, ptr %6, align 8
  %117 = getelementptr inbounds %struct.isp1760_hcd, ptr %116, i32 0, i32 6
  store i32 0, ptr %117, align 4
  %118 = getelementptr %struct.isp1760_hcd, ptr %116, i32 0, i32 12, i32 0
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr %struct.isp1760_hcd, ptr %116, i32 0, i32 12, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  %120 = getelementptr %struct.isp1760_hcd, ptr %116, i32 0, i32 12, i32 1
  store volatile ptr %120, ptr %120, align 4
  %121 = getelementptr %struct.isp1760_hcd, ptr %116, i32 0, i32 12, i32 1, i32 1
  store ptr %120, ptr %121, align 4
  %122 = getelementptr %struct.isp1760_hcd, ptr %116, i32 0, i32 12, i32 2
  store volatile ptr %122, ptr %122, align 4
  %123 = getelementptr %struct.isp1760_hcd, ptr %116, i32 0, i32 12, i32 2, i32 1
  store ptr %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.isp1760_hcd, ptr %116, i32 0, i32 13
  store i32 1024, ptr %124, align 4
  %125 = getelementptr inbounds %struct.isp1760_hcd, ptr %116, i32 0, i32 4
  %126 = load i8, ptr %125, align 4, !range !10
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %107
  %129 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %130 = getelementptr %struct.isp1760_hcd, ptr %129, i32 0, i32 3, i32 11
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 @regmap_field_read(ptr noundef %131, ptr noundef nonnull %3) #8
  %133 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %134 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %135 = getelementptr %struct.isp1760_hcd, ptr %134, i32 0, i32 3, i32 12
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 @regmap_field_read(ptr noundef %136, ptr noundef nonnull %2) #8
  %138 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %139 = icmp eq i32 %133, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = add i32 %138, 2
  br label %142

142:                                              ; preds = %140, %128, %107
  %143 = phi i32 [ %141, %140 ], [ 2, %107 ], [ 8, %128 ]
  %144 = getelementptr inbounds %struct.isp1760_hcd, ptr %116, i32 0, i32 14
  store i32 %143, ptr %144, align 4
  br label %145

145:                                              ; preds = %142, %27, %25
  %146 = phi i32 [ -19, %25 ], [ 0, %142 ], [ %52, %27 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_run(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.isp1760_hcd, ptr %9, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %14 = load i16, ptr %13, align 8
  %15 = or i16 %14, 32
  store i16 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 1, ptr %16, align 8
  br i1 %12, label %157, label %17

17:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !9
  %18 = getelementptr %struct.isp1760_hcd, ptr %9, i32 0, i32 3, i32 40
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %7) #8
  %21 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %22 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %23 = getelementptr %struct.isp1760_hcd, ptr %22, i32 0, i32 3, i32 41
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_field_read(ptr noundef %24, ptr noundef nonnull %6) #8
  %26 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %27 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %28 = getelementptr %struct.isp1760_hcd, ptr %27, i32 0, i32 3, i32 42
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_field_read(ptr noundef %29, ptr noundef nonnull %5) #8
  %31 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %32 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %26, i32 noundef %31) #10
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr %struct.isp1760_hcd, ptr %33, i32 0, i32 3, i32 47
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @regmap_field_update_bits_base(ptr noundef %35, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %37 = load ptr, ptr %8, align 8
  %38 = getelementptr %struct.isp1760_hcd, ptr %37, i32 0, i32 3, i32 48
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @regmap_field_update_bits_base(ptr noundef %39, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr %struct.isp1760_hcd, ptr %41, i32 0, i32 3, i32 49
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @regmap_field_update_bits_base(ptr noundef %43, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr %struct.isp1760_hcd, ptr %45, i32 0, i32 3, i32 26
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @regmap_field_update_bits_base(ptr noundef %47, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr %struct.isp1760_hcd, ptr %49, i32 0, i32 3, i32 23
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @regmap_field_update_bits_base(ptr noundef %51, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr %struct.isp1760_hcd, ptr %53, i32 0, i32 3, i32 20
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @regmap_field_update_bits_base(ptr noundef %55, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748) #8
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr %struct.isp1760_hcd, ptr %58, i32 0, i32 3, i32 25
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @regmap_field_update_bits_base(ptr noundef %60, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr %struct.isp1760_hcd, ptr %62, i32 0, i32 3, i32 22
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @regmap_field_update_bits_base(ptr noundef %64, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr %struct.isp1760_hcd, ptr %66, i32 0, i32 3, i32 19
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 @regmap_field_update_bits_base(ptr noundef %68, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %70 = load ptr, ptr %8, align 8
  %71 = getelementptr %struct.isp1760_hcd, ptr %70, i32 0, i32 3, i32 62
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %74 = getelementptr inbounds %struct.isp1760_hcd, ptr %9, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @regmap_write(ptr noundef %75, i32 noundef 230, i32 noundef 128) #8
  %77 = load ptr, ptr %74, align 4
  %78 = call i32 @regmap_write(ptr noundef %77, i32 noundef 230, i32 noundef 32768) #8
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #8
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #8
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #8
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 214748000) #8
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #8
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748000) #8
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748000) #8
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #8
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #8
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748000) #8
  %89 = load ptr, ptr %8, align 8
  %90 = getelementptr %struct.isp1760_hcd, ptr %89, i32 0, i32 3, i32 54
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @regmap_field_update_bits_base(ptr noundef %91, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %93 = load ptr, ptr %8, align 8
  %94 = getelementptr %struct.isp1760_hcd, ptr %93, i32 0, i32 3, i32 55
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 @regmap_field_update_bits_base(ptr noundef %95, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %97 = load ptr, ptr %8, align 8
  %98 = getelementptr %struct.isp1760_hcd, ptr %97, i32 0, i32 3, i32 39
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 @regmap_field_update_bits_base(ptr noundef %99, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %101 = load ptr, ptr %8, align 8
  %102 = getelementptr %struct.isp1760_hcd, ptr %101, i32 0, i32 3, i32 61
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 @regmap_field_update_bits_base(ptr noundef %103, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %105 = load ptr, ptr %8, align 8
  %106 = getelementptr %struct.isp1760_hcd, ptr %105, i32 0, i32 3, i32 60
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 @regmap_field_update_bits_base(ptr noundef %107, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %109 = load ptr, ptr %8, align 8
  %110 = getelementptr %struct.isp1760_hcd, ptr %109, i32 0, i32 3, i32 59
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 @regmap_field_update_bits_base(ptr noundef %111, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %113 = load ptr, ptr %8, align 8
  %114 = getelementptr %struct.isp1760_hcd, ptr %113, i32 0, i32 3, i32 58
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 @regmap_field_update_bits_base(ptr noundef %115, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %117 = load ptr, ptr %8, align 8
  %118 = getelementptr %struct.isp1760_hcd, ptr %117, i32 0, i32 3, i32 57
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @regmap_field_update_bits_base(ptr noundef %119, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr %struct.isp1760_hcd, ptr %121, i32 0, i32 3, i32 56
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 @regmap_field_update_bits_base(ptr noundef %123, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %125 = load ptr, ptr %8, align 8
  %126 = getelementptr %struct.isp1760_hcd, ptr %125, i32 0, i32 3, i32 27
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 @regmap_field_update_bits_base(ptr noundef %127, i32 noundef -1, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %129 = load ptr, ptr %8, align 8
  %130 = getelementptr %struct.isp1760_hcd, ptr %129, i32 0, i32 3, i32 24
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 @regmap_field_update_bits_base(ptr noundef %131, i32 noundef -1, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %133 = load ptr, ptr %8, align 8
  %134 = getelementptr %struct.isp1760_hcd, ptr %133, i32 0, i32 3, i32 21
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 @regmap_field_update_bits_base(ptr noundef %135, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %137 = load ptr, ptr %8, align 8
  %138 = getelementptr %struct.isp1760_hcd, ptr %137, i32 0, i32 3, i32 49
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 @regmap_field_update_bits_base(ptr noundef %139, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %141 = load ptr, ptr %8, align 8
  %142 = getelementptr %struct.isp1760_hcd, ptr %141, i32 0, i32 3, i32 48
  %143 = load ptr, ptr %142, align 4
  %144 = call i32 @regmap_field_update_bits_base(ptr noundef %143, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %145 = load ptr, ptr %8, align 8
  %146 = getelementptr %struct.isp1760_hcd, ptr %145, i32 0, i32 3, i32 13
  %147 = load ptr, ptr %146, align 4
  %148 = call i32 @regmap_field_update_bits_base(ptr noundef %147, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %149 = load ptr, ptr %8, align 8
  %150 = getelementptr %struct.isp1760_hcd, ptr %149, i32 0, i32 3, i32 14
  %151 = load ptr, ptr %150, align 4
  %152 = call i32 @regmap_field_update_bits_base(ptr noundef %151, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %153 = call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %0, i32 noundef 15) #8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %249

155:                                              ; preds = %17
  call void @down_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #8
  %156 = call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %0, i32 noundef 18) #8
  call void @up_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #8
  br label %249

157:                                              ; preds = %1
  %158 = getelementptr %struct.isp1760_hcd, ptr %9, i32 0, i32 3, i32 61
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 @regmap_field_update_bits_base(ptr noundef %159, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %161 = load ptr, ptr %8, align 8
  %162 = getelementptr %struct.isp1760_hcd, ptr %161, i32 0, i32 3, i32 60
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 @regmap_field_update_bits_base(ptr noundef %163, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %165 = load ptr, ptr %8, align 8
  %166 = getelementptr %struct.isp1760_hcd, ptr %165, i32 0, i32 3, i32 59
  %167 = load ptr, ptr %166, align 4
  %168 = tail call i32 @regmap_field_update_bits_base(ptr noundef %167, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %169 = load ptr, ptr %8, align 8
  %170 = getelementptr %struct.isp1760_hcd, ptr %169, i32 0, i32 3, i32 58
  %171 = load ptr, ptr %170, align 4
  %172 = tail call i32 @regmap_field_update_bits_base(ptr noundef %171, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %173 = load ptr, ptr %8, align 8
  %174 = getelementptr %struct.isp1760_hcd, ptr %173, i32 0, i32 3, i32 57
  %175 = load ptr, ptr %174, align 4
  %176 = tail call i32 @regmap_field_update_bits_base(ptr noundef %175, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %177 = load ptr, ptr %8, align 8
  %178 = getelementptr %struct.isp1760_hcd, ptr %177, i32 0, i32 3, i32 56
  %179 = load ptr, ptr %178, align 4
  %180 = tail call i32 @regmap_field_update_bits_base(ptr noundef %179, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %181 = load ptr, ptr %8, align 8
  %182 = getelementptr %struct.isp1760_hcd, ptr %181, i32 0, i32 3, i32 39
  %183 = load ptr, ptr %182, align 4
  %184 = tail call i32 @regmap_field_update_bits_base(ptr noundef %183, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %185 = load ptr, ptr %8, align 8
  %186 = getelementptr %struct.isp1760_hcd, ptr %185, i32 0, i32 3, i32 13
  %187 = load ptr, ptr %186, align 4
  %188 = tail call i32 @regmap_field_update_bits_base(ptr noundef %187, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %189 = load ptr, ptr %8, align 8
  %190 = getelementptr %struct.isp1760_hcd, ptr %189, i32 0, i32 3, i32 14
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @regmap_field_update_bits_base(ptr noundef %191, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %193 = tail call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %0, i32 noundef 15)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %249

195:                                              ; preds = %157
  tail call void @down_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #8
  %196 = tail call fastcc i32 @isp1760_hcd_set_and_wait(ptr noundef %0, i32 noundef 18)
  tail call void @up_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %249

198:                                              ; preds = %195
  store ptr %0, ptr @errata2_timer_hcd, align 4
  tail call void @init_timer_key(ptr noundef nonnull @errata2_timer, ptr noundef nonnull @errata2_function, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %199 = load volatile i32, ptr @jiffies, align 64
  %200 = add i32 %199, 20
  store i32 %200, ptr getelementptr inbounds (%struct.timer_list, ptr @errata2_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @errata2_timer) #8
  %201 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %202 = getelementptr %struct.isp1760_hcd, ptr %201, i32 0, i32 3, i32 40
  %203 = load ptr, ptr %202, align 4
  %204 = call i32 @regmap_field_read(ptr noundef %203, ptr noundef nonnull %4) #8
  %205 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %206 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %207 = getelementptr %struct.isp1760_hcd, ptr %206, i32 0, i32 3, i32 41
  %208 = load ptr, ptr %207, align 4
  %209 = call i32 @regmap_field_read(ptr noundef %208, ptr noundef nonnull %3) #8
  %210 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %211 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %212 = getelementptr %struct.isp1760_hcd, ptr %211, i32 0, i32 3, i32 42
  %213 = load ptr, ptr %212, align 4
  %214 = call i32 @regmap_field_read(ptr noundef %213, ptr noundef nonnull %2) #8
  %215 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %216 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %216, ptr noundef nonnull @.str.10, i32 noundef %205, i32 noundef %210, i32 noundef %215) #10
  %217 = load ptr, ptr %8, align 8
  %218 = getelementptr %struct.isp1760_hcd, ptr %217, i32 0, i32 3, i32 27
  %219 = load ptr, ptr %218, align 4
  %220 = call i32 @regmap_field_update_bits_base(ptr noundef %219, i32 noundef -1, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %221 = load ptr, ptr %8, align 8
  %222 = getelementptr %struct.isp1760_hcd, ptr %221, i32 0, i32 3, i32 24
  %223 = load ptr, ptr %222, align 4
  %224 = call i32 @regmap_field_update_bits_base(ptr noundef %223, i32 noundef -1, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %225 = load ptr, ptr %8, align 8
  %226 = getelementptr %struct.isp1760_hcd, ptr %225, i32 0, i32 3, i32 21
  %227 = load ptr, ptr %226, align 4
  %228 = call i32 @regmap_field_update_bits_base(ptr noundef %227, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %229 = load ptr, ptr %8, align 8
  %230 = getelementptr %struct.isp1760_hcd, ptr %229, i32 0, i32 3, i32 26
  %231 = load ptr, ptr %230, align 4
  %232 = call i32 @regmap_field_update_bits_base(ptr noundef %231, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %233 = load ptr, ptr %8, align 8
  %234 = getelementptr %struct.isp1760_hcd, ptr %233, i32 0, i32 3, i32 23
  %235 = load ptr, ptr %234, align 4
  %236 = call i32 @regmap_field_update_bits_base(ptr noundef %235, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %237 = load ptr, ptr %8, align 8
  %238 = getelementptr %struct.isp1760_hcd, ptr %237, i32 0, i32 3, i32 20
  %239 = load ptr, ptr %238, align 4
  %240 = call i32 @regmap_field_update_bits_base(ptr noundef %239, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %241 = load ptr, ptr %8, align 8
  %242 = getelementptr %struct.isp1760_hcd, ptr %241, i32 0, i32 3, i32 49
  %243 = load ptr, ptr %242, align 4
  %244 = call i32 @regmap_field_update_bits_base(ptr noundef %243, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %245 = load ptr, ptr %8, align 8
  %246 = getelementptr %struct.isp1760_hcd, ptr %245, i32 0, i32 3, i32 48
  %247 = load ptr, ptr %246, align 4
  %248 = call i32 @regmap_field_update_bits_base(ptr noundef %247, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %249

249:                                              ; preds = %198, %195, %157, %155, %17
  %250 = phi i32 [ 0, %198 ], [ %193, %157 ], [ %196, %195 ], [ %153, %17 ], [ %156, %155 ]
  ret i32 %250
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_stop(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @del_timer(ptr noundef nonnull @errata2_timer) #8
  %5 = tail call i32 @isp1760_hub_control(ptr noundef %0, i16 noundef zeroext 8961, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0)
  tail call void @msleep(i32 noundef 20) #8
  %6 = getelementptr inbounds %struct.isp1760_hcd, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #8
  %7 = tail call fastcc i32 @ehci_reset(ptr noundef %0)
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr %struct.isp1760_hcd, ptr %8, i32 0, i32 3, i32 39
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %12 = load i16, ptr %6, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr %struct.isp1760_hcd, ptr %14, i32 0, i32 3, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regmap_field_update_bits_base(ptr noundef %16, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_shutdown(ptr noundef %0) #2 {
  tail call void @isp1760_stop(ptr noundef %0)
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.isp1760_hcd, ptr %3, i32 0, i32 3, i32 39
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr %struct.isp1760_hcd, ptr %7, i32 0, i32 3, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_get_frame(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %5 = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 3, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %2) #8
  %8 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %9 = lshr i32 %8, 3
  %10 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = urem i32 %9, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 30
  switch i32 %10, label %23 [
    i32 2, label %11
    i32 3, label %13
    i32 1, label %15
    i32 0, label %21
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 12
  br label %24

13:                                               ; preds = %3
  %14 = getelementptr %struct.isp1760_hcd, ptr %6, i32 0, i32 12, i32 1
  br label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %263, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.isp1760_hcd, ptr %6, i32 0, i32 12, i32 2
  br label %24

21:                                               ; preds = %3
  %22 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.isp1760_urb_enqueue) #10
  br label %263

23:                                               ; preds = %3
  unreachable

24:                                               ; preds = %19, %13, %11
  %25 = phi ptr [ %20, %19 ], [ %14, %13 ], [ %12, %11 ]
  %26 = and i32 %9, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  store i32 0, ptr %29, align 4
  %30 = load ptr, ptr %5, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %6, %24 ]
  %33 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.13, i32 noundef %45, i32 noundef %40) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1792, i32 noundef 9, ptr noundef null) #8
  %46 = load i32, ptr %8, align 4
  br label %47

47:                                               ; preds = %42, %38, %31
  %48 = phi i32 [ %46, %42 ], [ %9, %38 ], [ %9, %31 ]
  %49 = trunc i32 %48 to i8
  %50 = lshr i8 %49, 7
  %51 = and i32 %48, -1073741824
  %52 = icmp eq i32 %51, -2147483648
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load ptr, ptr @qtd_cachep, align 4
  %55 = or i32 %2, 256
  %56 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %54, i32 noundef %55) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %156, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 3
  store volatile ptr %59, ptr %59, align 4
  %60 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 3, i32 1
  %61 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 4
  store ptr %1, ptr %61, align 4
  store i8 2, ptr %56, align 8
  %62 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 7
  store i32 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 6
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 5
  store i32 8, ptr %67, align 8
  %68 = load ptr, ptr %7, align 4
  store ptr %59, ptr %7, align 4
  store ptr %4, ptr %59, align 4
  store ptr %68, ptr %60, align 8
  store volatile ptr %59, ptr %68, align 4
  %69 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i8 1, i8 %50
  %73 = load i32, ptr %8, align 4
  br label %74

74:                                               ; preds = %58, %47
  %75 = phi i32 [ %48, %47 ], [ %73, %58 ]
  %76 = phi i8 [ %50, %47 ], [ %72, %58 ]
  %77 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = lshr i32 %75, 15
  %80 = and i32 %79, 15
  %81 = and i32 %75, 128
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr %struct.usb_device, ptr %78, i32 0, i32 22, i32 %80
  %84 = getelementptr %struct.usb_device, ptr %78, i32 0, i32 21, i32 %80
  %85 = select i1 %82, ptr %83, ptr %84
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %86, i32 0, i32 4
  %90 = load i16, ptr %89, align 1
  %91 = and i16 %90, 2047
  br label %92

92:                                               ; preds = %88, %74
  %93 = phi i16 [ %91, %88 ], [ 0, %74 ]
  %94 = zext i16 %93 to i32
  %95 = load ptr, ptr %35, align 4
  %96 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %2, 256
  %99 = getelementptr %struct.isp1760_memory_layout, ptr %34, i32 0, i32 1, i32 2
  br label %100

100:                                              ; preds = %106, %92
  %101 = phi ptr [ %95, %92 ], [ %118, %106 ]
  %102 = phi i32 [ %97, %92 ], [ %117, %106 ]
  %103 = load ptr, ptr @qtd_cachep, align 4
  %104 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %103, i32 noundef %98) #8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %156, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 3
  store volatile ptr %107, ptr %107, align 4
  %108 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 3, i32 1
  %109 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 4
  store ptr %1, ptr %109, align 4
  store i8 %76, ptr %104, align 8
  %110 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 7
  store i32 0, ptr %110, align 8
  %111 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 6
  store i32 0, ptr %111, align 4
  %112 = load i32, ptr %99, align 4
  %113 = call i32 @llvm.umin.i32(i32 %102, i32 %112) #8
  %114 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 1
  store ptr %101, ptr %114, align 4
  %115 = getelementptr inbounds %struct.isp1760_qtd, ptr %104, i32 0, i32 5
  store i32 %113, ptr %115, align 8
  %116 = load ptr, ptr %7, align 4
  store ptr %107, ptr %7, align 4
  store ptr %4, ptr %107, align 4
  store ptr %116, ptr %108, align 8
  store volatile ptr %107, ptr %116, align 4
  %117 = sub i32 %102, %113
  %118 = getelementptr i8, ptr %101, i32 %113
  %119 = icmp slt i32 %117, 1
  br i1 %119, label %120, label %100

120:                                              ; preds = %106
  %121 = load i32, ptr %96, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %173, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr %8, align 4
  %125 = lshr i32 %124, 30
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = icmp ne i8 %76, 1
  %129 = zext i1 %128 to i8
  br label %142

130:                                              ; preds = %123
  %131 = icmp eq i32 %125, 3
  %132 = icmp ne i16 %93, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %173

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 64
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %173, label %139

139:                                              ; preds = %134
  %140 = urem i32 %121, %94
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %173

142:                                              ; preds = %139, %127
  %143 = phi i8 [ %129, %127 ], [ %76, %139 ]
  %144 = load ptr, ptr @qtd_cachep, align 4
  %145 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %144, i32 noundef %98) #8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 3
  store volatile ptr %148, ptr %148, align 4
  %149 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 3, i32 1
  %150 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 4
  store ptr %1, ptr %150, align 4
  store i8 %143, ptr %145, align 8
  %151 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 7
  store i32 0, ptr %151, align 8
  %152 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 6
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 1
  store ptr null, ptr %153, align 4
  %154 = getelementptr inbounds %struct.isp1760_qtd, ptr %145, i32 0, i32 5
  store i32 0, ptr %154, align 8
  %155 = load ptr, ptr %7, align 4
  store ptr %148, ptr %7, align 4
  store ptr %4, ptr %148, align 4
  store ptr %155, ptr %149, align 8
  store volatile ptr %148, ptr %155, align 4
  br label %173

156:                                              ; preds = %142, %100, %53
  %157 = load ptr, ptr %4, align 8
  %158 = icmp eq ptr %157, %4
  br i1 %158, label %173, label %159

159:                                              ; preds = %170, %156
  %160 = phi ptr [ %162, %170 ], [ %157, %156 ]
  %161 = getelementptr i8, ptr %160, i32 -12
  %162 = load ptr, ptr %160, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %164, ptr %165, align 4
  store volatile ptr %162, ptr %164, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %160, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %163, align 4
  %166 = getelementptr i8, ptr %160, i32 -4
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169, !prof !17

169:                                              ; preds = %159
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %170

170:                                              ; preds = %169, %159
  %171 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %171, ptr noundef %161) #8
  %172 = icmp eq ptr %162, %4
  br i1 %172, label %173, label %159

173:                                              ; preds = %170, %156, %147, %139, %134, %130, %120
  %174 = load volatile ptr, ptr %4, align 8
  %175 = icmp eq ptr %174, %4
  br i1 %175, label %263, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 6
  %178 = call i32 @_raw_spin_lock_irqsave(ptr noundef %177) #8
  %179 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %176
  %184 = load ptr, ptr %4, align 8
  %185 = icmp eq ptr %184, %4
  br i1 %185, label %261, label %186

186:                                              ; preds = %197, %183
  %187 = phi ptr [ %189, %197 ], [ %184, %183 ]
  %188 = getelementptr i8, ptr %187, i32 -12
  %189 = load ptr, ptr %187, align 4
  %190 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %191, ptr %192, align 4
  store volatile ptr %189, ptr %191, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %187, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %190, align 4
  %193 = getelementptr i8, ptr %187, i32 -4
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196, !prof !17

196:                                              ; preds = %186
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %197

197:                                              ; preds = %196, %186
  %198 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %198, ptr noundef %188) #8
  %199 = icmp eq ptr %189, %4
  br i1 %199, label %261, label %186

200:                                              ; preds = %176
  %201 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %220, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %4, align 8
  %205 = icmp eq ptr %204, %4
  br i1 %205, label %261, label %206

206:                                              ; preds = %217, %203
  %207 = phi ptr [ %209, %217 ], [ %204, %203 ]
  %208 = getelementptr i8, ptr %207, i32 -12
  %209 = load ptr, ptr %207, align 4
  %210 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.list_head, ptr %209, i32 0, i32 1
  store ptr %211, ptr %212, align 4
  store volatile ptr %209, ptr %211, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %207, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %210, align 4
  %213 = getelementptr i8, ptr %207, i32 -4
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216, !prof !17

216:                                              ; preds = %206
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %217

217:                                              ; preds = %216, %206
  %218 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %218, ptr noundef %208) #8
  %219 = icmp eq ptr %209, %4
  br i1 %219, label %261, label %206

220:                                              ; preds = %200
  %221 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.usb_host_endpoint, ptr %222, i32 0, i32 5
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %236, label %226

226:                                              ; preds = %230, %220
  %227 = phi ptr [ %228, %230 ], [ %25, %220 ]
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, %25
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = icmp eq ptr %228, %224
  br i1 %231, label %250, label %226

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  store ptr %224, ptr %233, align 4
  store ptr %25, ptr %224, align 4
  %235 = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  store ptr %234, ptr %235, align 4
  store volatile ptr %224, ptr %234, align 4
  br label %250

236:                                              ; preds = %220
  %237 = load ptr, ptr @qh_cachep, align 4
  %238 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %237, i32 noundef 2848) #8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #8
  call fastcc void @qtd_list_free(ptr noundef nonnull %4)
  br label %261

241:                                              ; preds = %236
  store volatile ptr %238, ptr %238, align 8
  %242 = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  %243 = getelementptr inbounds %struct.isp1760_qh, ptr %238, i32 0, i32 1
  store volatile ptr %243, ptr %243, align 8
  %244 = getelementptr inbounds %struct.isp1760_qh, ptr %238, i32 0, i32 1, i32 1
  store ptr %243, ptr %244, align 4
  %245 = getelementptr inbounds %struct.isp1760_qh, ptr %238, i32 0, i32 4
  store i32 -1, ptr %245, align 8
  %246 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  store ptr %238, ptr %246, align 4
  store ptr %25, ptr %238, align 8
  store ptr %247, ptr %242, align 4
  store volatile ptr %238, ptr %247, align 4
  %248 = load ptr, ptr %221, align 4
  %249 = getelementptr inbounds %struct.usb_host_endpoint, ptr %248, i32 0, i32 5
  store ptr %238, ptr %249, align 4
  br label %250

250:                                              ; preds = %241, %232, %230
  %251 = phi ptr [ %224, %232 ], [ %238, %241 ], [ %224, %230 ]
  %252 = load volatile ptr, ptr %4, align 8
  %253 = icmp eq ptr %252, %4
  br i1 %253, label %260, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.isp1760_qh, ptr %251, i32 0, i32 1
  %256 = getelementptr inbounds %struct.isp1760_qh, ptr %251, i32 0, i32 1, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = load ptr, ptr %7, align 4
  %259 = getelementptr inbounds %struct.list_head, ptr %252, i32 0, i32 1
  store ptr %257, ptr %259, align 4
  store ptr %252, ptr %257, align 4
  store ptr %255, ptr %258, align 4
  store ptr %258, ptr %256, align 4
  br label %260

260:                                              ; preds = %254, %250
  call fastcc void @schedule_ptds(ptr noundef %0)
  br label %261

261:                                              ; preds = %260, %240, %217, %203, %197, %183
  %262 = phi i32 [ 0, %260 ], [ -12, %240 ], [ -108, %183 ], [ %201, %203 ], [ -108, %197 ], [ %201, %217 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %177, i32 noundef %178) #8
  br label %263

263:                                              ; preds = %261, %173, %21, %15
  %264 = phi i32 [ -32, %21 ], [ %262, %261 ], [ -22, %15 ], [ -12, %173 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %264
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.isp1760_hcd, ptr %7, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %10 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %136

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_host_endpoint, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %136, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.isp1760_qh, ptr %16, i32 0, i32 1
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %134, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.isp1760_qh, ptr %16, i32 0, i32 4
  %30 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  br label %31

31:                                               ; preds = %110, %28
  %32 = phi i32 [ 0, %28 ], [ %48, %110 ]
  %33 = phi ptr [ %22, %28 ], [ %108, %110 ]
  %34 = getelementptr i8, ptr %33, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 1
  %37 = select i1 %36, i32 1, i32 %32
  %38 = load ptr, ptr %33, align 4
  %39 = icmp eq ptr %38, %19
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr i8, ptr %38, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %31
  %45 = icmp ugt i32 %35, 2
  %46 = select i1 %45, i32 0, i32 %37
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %37, %40 ], [ %46, %44 ]
  %49 = icmp eq i32 %35, 2
  br i1 %49, label %50, label %107

50:                                               ; preds = %47
  %51 = load ptr, ptr %6, align 8
  %52 = load i32, ptr %29, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56, !prof !8

54:                                               ; preds = %50
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1973, i32 noundef 9, ptr noundef null) #8
  %55 = load i32, ptr %29, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ %52, %50 ]
  %58 = load i32, ptr %30, align 4
  %59 = icmp slt i32 %58, 0
  %60 = icmp eq i32 %57, -1
  br i1 %59, label %61, label %80

61:                                               ; preds = %56
  br i1 %60, label %77, label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %64 = getelementptr %struct.isp1760_hcd, ptr %63, i32 0, i32 3, i32 26
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 @regmap_field_read(ptr noundef %65, ptr noundef nonnull %5) #8
  %67 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %68 = load i32, ptr %29, align 4
  %69 = shl nuw i32 1, %68
  %70 = or i32 %69, %67
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr %struct.isp1760_hcd, ptr %71, i32 0, i32 3, i32 26
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @regmap_field_update_bits_base(ptr noundef %73, i32 noundef -1, i32 noundef %70, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748) #8
  %76 = load i32, ptr %29, align 4
  br label %77

77:                                               ; preds = %62, %61
  %78 = phi i32 [ %76, %62 ], [ -1, %61 ]
  %79 = getelementptr inbounds %struct.isp1760_hcd, ptr %51, i32 0, i32 7
  br label %98

80:                                               ; preds = %56
  br i1 %60, label %95, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %83 = getelementptr %struct.isp1760_hcd, ptr %82, i32 0, i32 3, i32 23
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 @regmap_field_read(ptr noundef %84, ptr noundef nonnull %4) #8
  %86 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %87 = load i32, ptr %29, align 4
  %88 = shl nuw i32 1, %87
  %89 = or i32 %88, %86
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr %struct.isp1760_hcd, ptr %90, i32 0, i32 3, i32 23
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 @regmap_field_update_bits_base(ptr noundef %92, i32 noundef -1, i32 noundef %89, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %94 = load i32, ptr %29, align 4
  br label %95

95:                                               ; preds = %81, %80
  %96 = phi i32 [ %94, %81 ], [ -1, %80 ]
  %97 = getelementptr inbounds %struct.isp1760_hcd, ptr %51, i32 0, i32 9
  br label %98

98:                                               ; preds = %95, %77
  %99 = phi ptr [ %97, %95 ], [ %79, %77 ]
  %100 = phi i32 [ %96, %95 ], [ %78, %77 ]
  %101 = load ptr, ptr %99, align 4
  %102 = getelementptr %struct.isp1760_slotinfo, ptr %101, i32 %100
  store ptr null, ptr %102, align 4
  %103 = load ptr, ptr %99, align 4
  %104 = load i32, ptr %29, align 4
  %105 = getelementptr %struct.isp1760_slotinfo, ptr %103, i32 %104, i32 1
  store ptr null, ptr %105, align 4
  store i32 -1, ptr %29, align 4
  %106 = load ptr, ptr %33, align 4
  br label %107

107:                                              ; preds = %98, %47
  %108 = phi ptr [ %106, %98 ], [ %38, %47 ]
  store i32 4, ptr %34, align 4
  %109 = icmp eq ptr %108, %19
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr i8, ptr %108, i32 8
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %1
  br i1 %113, label %31, label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.usb_device, ptr %116, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp ne i32 %118, 3
  %120 = icmp ne i32 %48, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.isp1760_qh, ptr %16, i32 0, i32 5
  store i32 1, ptr %123, align 4
  %124 = call i32 @usb_hub_clear_tt_buffer(ptr noundef %1) #8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i32 0, ptr %123, align 4
  br label %127

127:                                              ; preds = %126, %122, %114
  %128 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %22, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %129, ptr %131, align 4
  store volatile ptr %130, ptr %129, align 4
  %132 = load ptr, ptr %19, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %22, ptr %133, align 4
  store ptr %132, ptr %22, align 4
  store ptr %19, ptr %128, align 4
  store volatile ptr %22, ptr %19, align 4
  br label %134

134:                                              ; preds = %127, %20
  %135 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  store i32 %2, ptr %135, align 4
  call fastcc void @schedule_ptds(ptr noundef %0)
  br label %136

136:                                              ; preds = %134, %12, %3
  %137 = phi i32 [ %10, %3 ], [ 0, %134 ], [ -22, %12 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #8
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_endpoint_disable(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.isp1760_qh, ptr %8, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %15, label %14, !prof !17

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2083, i32 noundef 9, ptr noundef null) #8
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 12, i32 0
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %19, %8
  br i1 %22, label %23, label %17

23:                                               ; preds = %42, %34, %21
  %24 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  br label %44

28:                                               ; preds = %17
  %29 = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 12, i32 1
  br label %30

30:                                               ; preds = %34, %28
  %31 = phi ptr [ %29, %28 ], [ %32, %34 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %29
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %32, %8
  br i1 %35, label %23, label %30

36:                                               ; preds = %30
  %37 = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 12, i32 2
  br label %38

38:                                               ; preds = %42, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %37
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = icmp eq ptr %40, %8
  br i1 %43, label %23, label %38

44:                                               ; preds = %38, %23
  %45 = load volatile ptr, ptr %11, align 4
  %46 = icmp eq ptr %45, %11
  br i1 %46, label %48, label %47, !prof !17

47:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 676, i32 noundef 9, ptr noundef null) #8
  br label %48

48:                                               ; preds = %47, %44
  %49 = getelementptr inbounds %struct.isp1760_qh, ptr %8, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 677, i32 noundef 9, ptr noundef null) #8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load ptr, ptr @qh_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef nonnull %8) #8
  store ptr null, ptr %7, align 4
  tail call fastcc void @schedule_ptds(ptr noundef %0)
  br label %55

55:                                               ; preds = %53, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_hub_status_data(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %2
  store i8 0, ptr %1, align 1
  %14 = getelementptr inbounds %struct.isp1760_hcd, ptr %8, i32 0, i32 6
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.isp1760_hcd, ptr %16, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %6) #8
  %20 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %24 = getelementptr %struct.isp1760_hcd, ptr %23, i32 0, i32 3, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_field_read(ptr noundef %25, ptr noundef nonnull %5) #8
  %27 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.isp1760_hcd, ptr %30, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = select i1 %33, i32 100, i32 160
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  %39 = and i32 %38, -3
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr i8, ptr %40, i32 %36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !20
  br label %65

42:                                               ; preds = %22, %13
  %43 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %44 = getelementptr %struct.isp1760_hcd, ptr %43, i32 0, i32 3, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @regmap_field_read(ptr noundef %45, ptr noundef nonnull %4) #8
  %47 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %51 = getelementptr %struct.isp1760_hcd, ptr %50, i32 0, i32 3, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %3) #8
  %54 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = getelementptr inbounds %struct.isp1760_hcd, ptr %8, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %57, %59
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %42
  %63 = load i8, ptr %1, align 1
  %64 = or i8 %63, 2
  store i8 %64, ptr %1, align 1
  br label %65

65:                                               ; preds = %62, %56, %49, %29
  %66 = phi i32 [ 0, %49 ], [ 0, %56 ], [ 1, %62 ], [ 0, %29 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  br label %67

67:                                               ; preds = %65, %2
  %68 = phi i32 [ %66, %65 ], [ 0, %2 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp1760_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i16 noundef zeroext %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 4
  %34 = load i8, ptr %33, align 4, !range !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #8
  store i32 0, ptr %30, align 4, !annotation !9
  %37 = getelementptr %struct.isp1760_hcd, ptr %32, i32 0, i32 3, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @regmap_field_read(ptr noundef %38, ptr noundef nonnull %30) #8
  %40 = load i32, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #8
  br label %41

41:                                               ; preds = %36, %6
  %42 = phi i32 [ %40, %36 ], [ 1, %6 ]
  %43 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 6
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #8
  switch i16 %1, label %325 [
    i16 8193, label %45
    i16 8961, label %47
    i16 -24570, label %88
    i16 -24576, label %131
    i16 -23808, label %132
    i16 8195, label %257
    i16 8963, label %259
  ]

45:                                               ; preds = %41
  %46 = icmp ult i16 %2, 2
  br i1 %46, label %326, label %325

47:                                               ; preds = %41
  %48 = icmp eq i16 %3, 0
  %49 = zext i16 %3 to i32
  %50 = icmp slt i32 %42, %49
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %325, label %52

52:                                               ; preds = %47
  switch i16 %2, label %325 [
    i16 1, label %53
    i16 17, label %83
    i16 2, label %54
    i16 18, label %83
    i16 8, label %79
    i16 16, label %82
    i16 19, label %83
    i16 20, label %83
  ]

53:                                               ; preds = %52
  call fastcc void @isp1760_hcd_clear(ptr noundef %0, i32 noundef 6)
  br label %83

54:                                               ; preds = %52
  %55 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #8
  store i32 0, ptr %29, align 4, !annotation !9
  %56 = getelementptr %struct.isp1760_hcd, ptr %55, i32 0, i32 3, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @regmap_field_read(ptr noundef %57, ptr noundef nonnull %29) #8
  %59 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %325

61:                                               ; preds = %54
  %62 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #8
  store i32 0, ptr %28, align 4, !annotation !9
  %63 = getelementptr %struct.isp1760_hcd, ptr %62, i32 0, i32 3, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @regmap_field_read(ptr noundef %64, ptr noundef nonnull %28) #8
  %66 = load i32, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #8
  store i32 0, ptr %27, align 4, !annotation !9
  %70 = getelementptr %struct.isp1760_hcd, ptr %69, i32 0, i32 3, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 @regmap_field_read(ptr noundef %71, ptr noundef nonnull %27) #8
  %73 = load i32, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %325, label %75

75:                                               ; preds = %68
  call fastcc void @isp1760_hcd_clear(ptr noundef %0, i32 noundef 7)
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 5)
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = add i32 %76, 4
  %78 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 15
  store i32 %77, ptr %78, align 4
  br label %83

79:                                               ; preds = %52
  %80 = call fastcc zeroext i1 @isp1760_hcd_ppc_is_set(ptr noundef %0)
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  call fastcc void @isp1760_hcd_clear(ptr noundef %0, i32 noundef 1)
  br label %83

82:                                               ; preds = %52
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 7)
  br label %83

83:                                               ; preds = %82, %81, %79, %75, %61, %53, %52, %52, %52, %52
  %84 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #8
  store i32 0, ptr %26, align 4, !annotation !9
  %85 = getelementptr %struct.isp1760_hcd, ptr %84, i32 0, i32 3, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 @regmap_field_read(ptr noundef %86, ptr noundef nonnull %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #8
  br label %326

88:                                               ; preds = %41
  %89 = load ptr, ptr %32, align 4
  %90 = getelementptr inbounds %struct.usb_hcd, ptr %89, i32 0, i32 29
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.isp1760_hcd, ptr %91, i32 0, i32 4
  %93 = load i8, ptr %92, align 4, !range !10
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #8
  store i32 0, ptr %25, align 4, !annotation !9
  %96 = getelementptr %struct.isp1760_hcd, ptr %91, i32 0, i32 3, i32 10
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 @regmap_field_read(ptr noundef %97, ptr noundef nonnull %25) #8
  %99 = load i32, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #8
  br label %100

100:                                              ; preds = %95, %88
  %101 = phi i32 [ %99, %95 ], [ 1, %88 ]
  %102 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %102, align 1
  %103 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 10, ptr %103, align 1
  %104 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %104, align 1
  %105 = trunc i32 %101 to i8
  %106 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 %105, ptr %106, align 1
  %107 = sdiv i32 %101, 8
  %108 = add nsw i32 %107, 1
  %109 = and i32 %108, 65535
  %110 = trunc i32 %108 to i8
  %111 = shl i8 %110, 1
  %112 = add i8 %111, 7
  store i8 %112, ptr %4, align 1
  %113 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %109, i1 false) #8
  %114 = getelementptr [4 x i8], ptr %113, i32 0, i32 %109
  call void @llvm.memset.p0.i32(ptr align 1 %114, i8 -1, i32 %109, i1 false) #8
  %115 = load ptr, ptr %32, align 4
  %116 = getelementptr inbounds %struct.usb_hcd, ptr %115, i32 0, i32 29
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.isp1760_hcd, ptr %117, i32 0, i32 4
  %119 = load i8, ptr %118, align 4, !range !10
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #8
  store i32 0, ptr %24, align 4, !annotation !9
  %122 = getelementptr %struct.isp1760_hcd, ptr %117, i32 0, i32 3, i32 9
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 @regmap_field_read(ptr noundef %123, ptr noundef nonnull %24) #8
  %125 = load i32, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121, %100
  br label %128

128:                                              ; preds = %127, %121
  %129 = phi i16 [ 9, %127 ], [ 10, %121 ]
  %130 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 %129, ptr %130, align 1
  br label %326

131:                                              ; preds = %41
  store i32 0, ptr %4, align 1
  br label %326

132:                                              ; preds = %41
  %133 = icmp eq i16 %3, 0
  %134 = zext i16 %3 to i32
  %135 = icmp slt i32 %42, %134
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %325, label %137

137:                                              ; preds = %132
  %138 = add i16 %3, -1
  %139 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #8
  store i32 0, ptr %23, align 4, !annotation !9
  %140 = getelementptr %struct.isp1760_hcd, ptr %139, i32 0, i32 3, i32 7
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 @regmap_field_read(ptr noundef %141, ptr noundef nonnull %23) #8
  %143 = load i32, ptr %23, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #8
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 0, i32 65536
  %146 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #8
  store i32 0, ptr %22, align 4, !annotation !9
  %147 = getelementptr %struct.isp1760_hcd, ptr %146, i32 0, i32 3, i32 5
  %148 = load ptr, ptr %147, align 4
  %149 = call i32 @regmap_field_read(ptr noundef %148, ptr noundef nonnull %22) #8
  %150 = load i32, ptr %22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %173, label %152

152:                                              ; preds = %137
  %153 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.14) #10
  %154 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 15
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  %157 = load volatile i32, ptr @jiffies, align 64
  br i1 %156, label %158, label %162

158:                                              ; preds = %152
  %159 = add i32 %157, 2
  store i32 %159, ptr %154, align 4
  %160 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %161 = call i32 @mod_timer(ptr noundef %160, i32 noundef %159) #8
  br label %173

162:                                              ; preds = %152
  %163 = sub i32 %157, %155
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = or i32 %145, 262144
  store i32 0, ptr %154, align 4
  call fastcc void @isp1760_hcd_clear(ptr noundef %0, i32 noundef 7)
  %167 = call fastcc i32 @isp1760_hcd_clear_and_wait(ptr noundef %0, i32 noundef 5, i32 noundef 2000)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %0, align 8
  %171 = zext i16 %138 to i32
  %172 = add nuw nsw i32 %171, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.15, i32 noundef %172, i32 noundef %167) #10
  br label %325

173:                                              ; preds = %165, %162, %158, %137
  %174 = phi i32 [ %166, %165 ], [ %145, %162 ], [ %145, %158 ], [ %145, %137 ]
  %175 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  store i32 0, ptr %21, align 4, !annotation !9
  %176 = getelementptr %struct.isp1760_hcd, ptr %175, i32 0, i32 3, i32 3
  %177 = load ptr, ptr %176, align 4
  %178 = call i32 @regmap_field_read(ptr noundef %177, ptr noundef nonnull %21) #8
  %179 = load i32, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %173
  %182 = load volatile i32, ptr @jiffies, align 64
  %183 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 15
  %184 = load i32, ptr %183, align 4
  %185 = sub i32 %182, %184
  %186 = icmp sgt i32 %185, -1
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  store i32 0, ptr %183, align 4
  %188 = call fastcc i32 @isp1760_hcd_clear_and_wait(ptr noundef %0, i32 noundef 3, i32 noundef 750)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %0, align 8
  %192 = zext i16 %138 to i32
  %193 = add nuw nsw i32 %192, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.16, i32 noundef %193, i32 noundef %188) #10
  br label %325

194:                                              ; preds = %187
  %195 = or i32 %174, 1048576
  %196 = zext i16 %138 to i32
  call fastcc void @check_reset_complete(ptr noundef %0, i32 noundef %196)
  br label %197

197:                                              ; preds = %194, %181, %173
  %198 = phi i32 [ %195, %194 ], [ %174, %181 ], [ %174, %173 ]
  %199 = load ptr, ptr %31, align 8
  %200 = getelementptr inbounds %struct.isp1760_hcd, ptr %199, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #8
  store i32 0, ptr %20, align 4, !annotation !9
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 @regmap_field_read(ptr noundef %201, ptr noundef nonnull %20) #8
  %203 = load i32, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %197
  %206 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.17) #10
  br label %207

207:                                              ; preds = %205, %197
  %208 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  store i32 0, ptr %19, align 4, !annotation !9
  %209 = getelementptr %struct.isp1760_hcd, ptr %208, i32 0, i32 3, i32 8
  %210 = load ptr, ptr %209, align 4
  %211 = call i32 @regmap_field_read(ptr noundef %210, ptr noundef nonnull %19) #8
  %212 = load i32, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  %213 = icmp eq i32 %212, 0
  %214 = or i32 %198, 1025
  %215 = select i1 %213, i32 %198, i32 %214
  %216 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  store i32 0, ptr %18, align 4, !annotation !9
  %217 = getelementptr %struct.isp1760_hcd, ptr %216, i32 0, i32 3, i32 6
  %218 = load ptr, ptr %217, align 4
  %219 = call i32 @regmap_field_read(ptr noundef %218, ptr noundef nonnull %18) #8
  %220 = load i32, ptr %18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  %221 = icmp eq i32 %220, 0
  %222 = or i32 %215, 2
  %223 = select i1 %221, i32 %215, i32 %222
  %224 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  store i32 0, ptr %17, align 4, !annotation !9
  %225 = getelementptr %struct.isp1760_hcd, ptr %224, i32 0, i32 3, i32 4
  %226 = load ptr, ptr %225, align 4
  %227 = call i32 @regmap_field_read(ptr noundef %226, ptr noundef nonnull %17) #8
  %228 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %207
  %231 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  store i32 0, ptr %16, align 4, !annotation !9
  %232 = getelementptr %struct.isp1760_hcd, ptr %231, i32 0, i32 3, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = call i32 @regmap_field_read(ptr noundef %233, ptr noundef nonnull %16) #8
  %235 = load i32, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  %236 = icmp eq i32 %235, 0
  %237 = or i32 %223, 4
  %238 = select i1 %236, i32 %223, i32 %237
  br label %239

239:                                              ; preds = %230, %207
  %240 = phi i32 [ %223, %207 ], [ %238, %230 ]
  %241 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !annotation !9
  %242 = getelementptr %struct.isp1760_hcd, ptr %241, i32 0, i32 3, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = call i32 @regmap_field_read(ptr noundef %243, ptr noundef nonnull %15) #8
  %245 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  %246 = icmp eq i32 %245, 0
  %247 = or i32 %240, 16
  %248 = select i1 %246, i32 %240, i32 %247
  %249 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !annotation !9
  %250 = getelementptr %struct.isp1760_hcd, ptr %249, i32 0, i32 3, i32 1
  %251 = load ptr, ptr %250, align 4
  %252 = call i32 @regmap_field_read(ptr noundef %251, ptr noundef nonnull %14) #8
  %253 = load i32, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  %254 = icmp eq i32 %253, 0
  %255 = or i32 %248, 256
  %256 = select i1 %254, i32 %248, i32 %255
  store i32 %256, ptr %4, align 1
  br label %326

257:                                              ; preds = %41
  %258 = icmp ult i16 %2, 2
  br i1 %258, label %326, label %325

259:                                              ; preds = %41
  %260 = and i16 %3, 255
  %261 = icmp eq i16 %260, 0
  %262 = zext i16 %260 to i32
  %263 = icmp slt i32 %42, %262
  %264 = select i1 %261, i1 true, i1 %263
  br i1 %264, label %325, label %265

265:                                              ; preds = %259
  %266 = load ptr, ptr %31, align 8
  %267 = getelementptr inbounds %struct.isp1760_hcd, ptr %266, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !annotation !9
  %268 = load ptr, ptr %267, align 4
  %269 = call i32 @regmap_field_read(ptr noundef %268, ptr noundef nonnull %13) #8
  %270 = load i32, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %326

272:                                              ; preds = %265
  switch i16 %2, label %325 [
    i16 1, label %273
    i16 2, label %274
    i16 8, label %289
    i16 4, label %292
  ]

273:                                              ; preds = %272
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 6)
  br label %326

274:                                              ; preds = %272
  %275 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !annotation !9
  %276 = getelementptr %struct.isp1760_hcd, ptr %275, i32 0, i32 3, i32 6
  %277 = load ptr, ptr %276, align 4
  %278 = call i32 @regmap_field_read(ptr noundef %277, ptr noundef nonnull %12) #8
  %279 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %325, label %281

281:                                              ; preds = %274
  %282 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !9
  %283 = getelementptr %struct.isp1760_hcd, ptr %282, i32 0, i32 3, i32 3
  %284 = load ptr, ptr %283, align 4
  %285 = call i32 @regmap_field_read(ptr noundef %284, ptr noundef nonnull %11) #8
  %286 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %325

288:                                              ; preds = %281
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 4)
  br label %326

289:                                              ; preds = %272
  %290 = call fastcc zeroext i1 @isp1760_hcd_ppc_is_set(ptr noundef %0)
  br i1 %290, label %291, label %326

291:                                              ; preds = %289
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 1)
  br label %326

292:                                              ; preds = %272
  %293 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !9
  %294 = getelementptr %struct.isp1760_hcd, ptr %293, i32 0, i32 3, i32 5
  %295 = load ptr, ptr %294, align 4
  %296 = call i32 @regmap_field_read(ptr noundef %295, ptr noundef nonnull %10) #8
  %297 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %325

299:                                              ; preds = %292
  %300 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !9
  %301 = getelementptr %struct.isp1760_hcd, ptr %300, i32 0, i32 3, i32 8
  %302 = load ptr, ptr %301, align 4
  %303 = call i32 @regmap_field_read(ptr noundef %302, ptr noundef nonnull %9) #8
  %304 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %321, label %306

306:                                              ; preds = %299
  %307 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !9
  %308 = getelementptr %struct.isp1760_hcd, ptr %307, i32 0, i32 3, i32 6
  %309 = load ptr, ptr %308, align 4
  %310 = call i32 @regmap_field_read(ptr noundef %309, ptr noundef nonnull %8) #8
  %311 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %306
  %314 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !9
  %315 = getelementptr %struct.isp1760_hcd, ptr %314, i32 0, i32 3, i32 2
  %316 = load ptr, ptr %315, align 4
  %317 = call i32 @regmap_field_read(ptr noundef %316, ptr noundef nonnull %7) #8
  %318 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 0)
  br label %326

321:                                              ; preds = %313, %306, %299
  call fastcc void @isp1760_hcd_set(ptr noundef %0, i32 noundef 3)
  call fastcc void @isp1760_hcd_clear(ptr noundef %0, i32 noundef 6)
  %322 = load volatile i32, ptr @jiffies, align 64
  %323 = add i32 %322, 5
  %324 = getelementptr inbounds %struct.isp1760_hcd, ptr %32, i32 0, i32 15
  store i32 %323, ptr %324, align 4
  br label %326

325:                                              ; preds = %292, %281, %274, %272, %259, %257, %190, %169, %132, %68, %54, %52, %47, %45, %41
  br label %326

326:                                              ; preds = %325, %321, %320, %291, %289, %288, %273, %265, %257, %239, %131, %128, %83, %45
  %327 = phi i32 [ -32, %325 ], [ 0, %265 ], [ 0, %321 ], [ 0, %320 ], [ 0, %291 ], [ 0, %289 ], [ 0, %288 ], [ 0, %273 ], [ 0, %257 ], [ 0, %239 ], [ 0, %131 ], [ 0, %128 ], [ 0, %83 ], [ 0, %45 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %44) #8
  ret i32 %327
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp1760_clear_tt_buffer_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.isp1760_hcd, ptr %8, i32 0, i32 6
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.isp1760_qh, ptr %4, i32 0, i32 5
  store i32 0, ptr %11, align 4
  tail call fastcc void @schedule_ptds(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #8
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @handle_done_ptds(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptd, align 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %7 = getelementptr %struct.isp1760_hcd, ptr %6, i32 0, i32 3, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %3) #8
  %10 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %11 = xor i32 %10, -1
  %12 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %16 = getelementptr %struct.isp1760_hcd, ptr %15, i32 0, i32 3, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %2) #8
  %19 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, ptr %21, align 4
  %24 = load i32, ptr %12, align 4
  %25 = icmp ne i32 %23, 0
  %26 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 9
  %27 = getelementptr inbounds %struct.ptd, ptr %4, i32 0, i32 3
  %28 = getelementptr inbounds %struct.ptd, ptr %4, i32 0, i32 4
  %29 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 7
  %30 = getelementptr inbounds %struct.ptd, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ptd, ptr %4, i32 0, i32 5
  br label %34

32:                                               ; preds = %275, %236, %227, %226, %223, %123, %49
  %33 = load i32, ptr %12, align 4
  br label %34

34:                                               ; preds = %32, %1
  %35 = phi i32 [ %33, %32 ], [ %24, %1 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, ptr %21, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %276, label %114

40:                                               ; preds = %34
  %41 = call i32 @llvm.cttz.i32(i32 %35, i1 true) #8, !range !21
  %42 = shl nuw i32 1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %35, %43
  store i32 %44, ptr %12, align 4
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr %struct.isp1760_slotinfo, ptr %45, i32 %41
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1382, i32 noundef 9, ptr noundef null) #8
  br label %32

50:                                               ; preds = %40
  call fastcc void @ptd_read(ptr noundef %0, i32 noundef 2048, i32 noundef %41, ptr noundef nonnull %4)
  %51 = load i32, ptr %27, align 4
  %52 = and i32 %51, 1073741824
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %150, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.isp1760_slotinfo, ptr %45, i32 %41, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.isp1760_qtd, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %28, align 4
  %60 = lshr i32 %59, 8
  %61 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 12
  store i32 -71, ptr %61, align 4
  %62 = and i32 %60, 7
  switch i32 %62, label %66 [
    i32 4, label %64
    i32 2, label %63
  ]

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %54
  %65 = phi i32 [ -75, %63 ], [ -70, %54 ]
  store i32 %65, ptr %61, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = lshr i32 %59, 11
  %68 = and i32 %67, 7
  switch i32 %68, label %73 [
    i32 4, label %70
    i32 1, label %69
    i32 2, label %71
  ]

69:                                               ; preds = %66
  br label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %69, %66
  %72 = phi i32 [ -70, %70 ], [ -71, %69 ], [ -75, %66 ]
  store i32 %72, ptr %61, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = lshr i32 %59, 14
  %75 = and i32 %74, 7
  switch i32 %75, label %80 [
    i32 4, label %77
    i32 1, label %76
    i32 2, label %78
  ]

76:                                               ; preds = %73
  br label %78

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %76, %73
  %79 = phi i32 [ -70, %77 ], [ -71, %76 ], [ -75, %73 ]
  store i32 %79, ptr %61, align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = lshr i32 %59, 17
  %82 = and i32 %81, 7
  switch i32 %82, label %87 [
    i32 4, label %84
    i32 1, label %83
    i32 2, label %85
  ]

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %83, %80
  %86 = phi i32 [ -70, %84 ], [ -71, %83 ], [ -75, %80 ]
  store i32 %86, ptr %61, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = lshr i32 %59, 20
  %89 = and i32 %88, 7
  switch i32 %89, label %94 [
    i32 4, label %91
    i32 1, label %90
    i32 2, label %92
  ]

90:                                               ; preds = %87
  br label %92

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %90, %87
  %93 = phi i32 [ -70, %91 ], [ -71, %90 ], [ -75, %87 ]
  store i32 %93, ptr %61, align 4
  br label %94

94:                                               ; preds = %92, %87
  %95 = lshr i32 %59, 23
  %96 = and i32 %95, 7
  switch i32 %96, label %101 [
    i32 4, label %98
    i32 1, label %97
    i32 2, label %99
  ]

97:                                               ; preds = %94
  br label %99

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %97, %94
  %100 = phi i32 [ -70, %98 ], [ -71, %97 ], [ -75, %94 ]
  store i32 %100, ptr %61, align 4
  br label %101

101:                                              ; preds = %99, %94
  %102 = lshr i32 %59, 26
  %103 = and i32 %102, 7
  switch i32 %103, label %108 [
    i32 4, label %105
    i32 1, label %104
    i32 2, label %106
  ]

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %104, %101
  %107 = phi i32 [ -70, %105 ], [ -71, %104 ], [ -75, %101 ]
  store i32 %107, ptr %61, align 4
  br label %108

108:                                              ; preds = %106, %101
  %109 = lshr i32 %59, 29
  switch i32 %109, label %150 [
    i32 4, label %111
    i32 1, label %110
    i32 2, label %112
  ]

110:                                              ; preds = %108
  br label %112

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %110, %108
  %113 = phi i32 [ -71, %110 ], [ -70, %111 ], [ -75, %108 ]
  store i32 %113, ptr %61, align 4
  br label %150

114:                                              ; preds = %37
  %115 = call i32 @llvm.cttz.i32(i32 %38, i1 true) #8, !range !21
  %116 = shl nuw i32 1, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %38, %117
  store i32 %118, ptr %21, align 4
  %119 = load ptr, ptr %29, align 4
  %120 = getelementptr %struct.isp1760_slotinfo, ptr %119, i32 %115
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1397, i32 noundef 9, ptr noundef null) #8
  br label %32

124:                                              ; preds = %114
  call fastcc void @ptd_read(ptr noundef %0, i32 noundef 3072, i32 noundef %115, ptr noundef nonnull %4)
  %125 = getelementptr %struct.isp1760_slotinfo, ptr %119, i32 %115, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.isp1760_qtd, ptr %126, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = load i32, ptr %27, align 4
  %130 = and i32 %129, 1073741824
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %124
  %133 = and i32 %129, 536870912
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.urb, ptr %128, i32 0, i32 12
  store i32 -75, ptr %136, align 4
  br label %150

137:                                              ; preds = %132
  %138 = and i32 %129, 25165824
  %139 = icmp eq i32 %138, 0
  %140 = getelementptr inbounds %struct.urb, ptr %128, i32 0, i32 12
  br i1 %139, label %142, label %141

141:                                              ; preds = %137
  store i32 -32, ptr %140, align 4
  br label %150

142:                                              ; preds = %137
  store i32 -71, ptr %140, align 4
  br label %150

143:                                              ; preds = %124
  %144 = and i32 %129, -1879048192
  %145 = icmp eq i32 %144, -1879048192
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = and i32 %129, -2139619328
  %148 = icmp eq i32 %147, -2147483648
  %149 = select i1 %148, i32 2, i32 1
  br label %150

150:                                              ; preds = %146, %143, %142, %141, %135, %112, %108, %50
  %151 = phi i32 [ %51, %50 ], [ %51, %108 ], [ %51, %112 ], [ %129, %135 ], [ %129, %141 ], [ %129, %142 ], [ %129, %143 ], [ %129, %146 ]
  %152 = phi i32 [ 2048, %50 ], [ 2048, %108 ], [ 2048, %112 ], [ 3072, %135 ], [ 3072, %141 ], [ 3072, %142 ], [ 3072, %143 ], [ 3072, %146 ]
  %153 = phi ptr [ %45, %50 ], [ %45, %108 ], [ %45, %112 ], [ %119, %135 ], [ %119, %141 ], [ %119, %142 ], [ %119, %143 ], [ %119, %146 ]
  %154 = phi i32 [ 1, %50 ], [ 3, %108 ], [ 3, %112 ], [ 3, %135 ], [ 3, %141 ], [ 3, %142 ], [ 2, %143 ], [ %149, %146 ]
  %155 = phi i32 [ %41, %50 ], [ %41, %108 ], [ %41, %112 ], [ %115, %135 ], [ %115, %141 ], [ %115, %142 ], [ %115, %143 ], [ %115, %146 ]
  %156 = getelementptr %struct.isp1760_slotinfo, ptr %153, i32 %155
  %157 = getelementptr %struct.isp1760_slotinfo, ptr %153, i32 %155, i32 1
  %158 = load ptr, ptr %157, align 4
  store ptr null, ptr %157, align 4
  %159 = load ptr, ptr %156, align 4
  store ptr null, ptr %156, align 4
  %160 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 4
  store i32 -1, ptr %160, align 4
  %161 = getelementptr inbounds %struct.isp1760_qtd, ptr %158, i32 0, i32 7
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %165, label %164, !prof !17

164:                                              ; preds = %150
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1412, i32 noundef 9, ptr noundef null) #8
  br label %165

165:                                              ; preds = %164, %150
  switch i32 %154, label %226 [
    i32 1, label %166
    i32 2, label %197
    i32 3, label %206
  ]

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.isp1760_qtd, ptr %158, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.urb, ptr %168, i32 0, i32 10
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, -1073741824
  %172 = icmp eq i32 %171, 1073741824
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.urb, ptr %168, i32 0, i32 8
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %180

179:                                              ; preds = %173, %166
  br label %180

180:                                              ; preds = %179, %173
  %181 = phi i32 [ 16383, %179 ], [ 2047, %173 ]
  %182 = and i32 %151, %181
  %183 = getelementptr inbounds %struct.isp1760_qtd, ptr %158, i32 0, i32 6
  store i32 %182, ptr %183, align 4
  store i32 3, ptr %161, align 4
  %184 = getelementptr inbounds %struct.isp1760_qtd, ptr %158, i32 0, i32 3
  %185 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 1
  %186 = load ptr, ptr %184, align 4
  %187 = icmp eq ptr %186, %185
  br i1 %187, label %227, label %188

188:                                              ; preds = %180
  %189 = load i32, ptr %169, align 4
  %190 = icmp ugt i32 %189, -1073741825
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.isp1760_qtd, ptr %158, i32 0, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = icmp ult i32 %182, %193
  br i1 %194, label %227, label %195

195:                                              ; preds = %191, %188
  %196 = getelementptr i8, ptr %186, i32 -12
  br label %227

197:                                              ; preds = %165
  store i32 1, ptr %161, align 4
  %198 = load i32, ptr %4, align 4
  %199 = or i32 %198, 1
  store i32 %199, ptr %4, align 4
  %200 = load i32, ptr %30, align 4
  %201 = lshr i32 %200, 6
  %202 = and i32 %201, 7864320
  %203 = and i32 %151, -33030145
  %204 = or i32 %203, %202
  %205 = or i32 %204, 25165824
  store i32 %205, ptr %27, align 4
  br label %227

206:                                              ; preds = %165
  store i32 4, ptr %161, align 4
  %207 = getelementptr inbounds %struct.isp1760_qtd, ptr %158, i32 0, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.urb, ptr %208, i32 0, i32 8
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.usb_device, ptr %210, i32 0, i32 4
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %223, label %214

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.urb, ptr %208, i32 0, i32 12
  %216 = load i32, ptr %215, align 4
  switch i32 %216, label %217 [
    i32 -32, label %223
    i32 -121, label %223
  ]

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 5
  store i32 1, ptr %218, align 4
  %219 = load ptr, ptr %207, align 4
  %220 = call i32 @usb_hub_clear_tt_buffer(ptr noundef %219) #8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %217
  store i32 0, ptr %218, align 4
  br label %223

223:                                              ; preds = %222, %217, %214, %214, %206
  %224 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 2
  store i32 0, ptr %224, align 4
  %225 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 3
  store i32 0, ptr %225, align 4
  br label %32

226:                                              ; preds = %165
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1465, i32 noundef 9, ptr noundef null) #8
  br label %32

227:                                              ; preds = %197, %195, %191, %180
  %228 = phi ptr [ %158, %197 ], [ %196, %195 ], [ null, %191 ], [ null, %180 ]
  %229 = lshr i32 %151, 25
  %230 = and i32 %229, 1
  %231 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 2
  store i32 %230, ptr %231, align 4
  %232 = lshr i32 %151, 26
  %233 = and i32 %232, 1
  %234 = getelementptr inbounds %struct.isp1760_qh, ptr %159, i32 0, i32 3
  store i32 %233, ptr %234, align 4
  %235 = icmp eq ptr %228, null
  br i1 %235, label %32, label %236

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.isp1760_qtd, ptr %228, i32 0, i32 7
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %32

240:                                              ; preds = %236
  %241 = load ptr, ptr %26, align 4
  %242 = icmp eq ptr %153, %241
  %243 = icmp eq i32 %154, 2
  br i1 %242, label %244, label %273

244:                                              ; preds = %240
  br i1 %243, label %245, label %247

245:                                              ; preds = %244
  %246 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.handle_done_ptds) #10
  br label %275

247:                                              ; preds = %244
  call fastcc void @create_ptd_atl(ptr noundef %159, ptr noundef nonnull %228, ptr noundef nonnull %4) #8
  %248 = getelementptr inbounds %struct.isp1760_qtd, ptr %228, i32 0, i32 4
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.urb, ptr %249, i32 0, i32 8
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.usb_device, ptr %251, i32 0, i32 4
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 3
  %255 = getelementptr inbounds %struct.urb, ptr %249, i32 0, i32 25
  %256 = load i32, ptr %255, align 4
  br i1 %254, label %257, label %265

257:                                              ; preds = %247
  %258 = ashr i32 %256, 3
  %259 = icmp sgt i32 %256, 4
  br i1 %259, label %266, label %260

260:                                              ; preds = %257
  %261 = icmp sgt i32 %256, 2
  br i1 %261, label %266, label %262

262:                                              ; preds = %260
  %263 = icmp eq i32 %256, 2
  %264 = select i1 %263, i32 85, i32 255
  br label %266

265:                                              ; preds = %247
  store i32 255, ptr %31, align 4
  br label %266

266:                                              ; preds = %265, %262, %260, %257
  %267 = phi i32 [ 15, %265 ], [ 1, %257 ], [ 34, %260 ], [ %264, %262 ]
  %268 = phi i32 [ %256, %265 ], [ %258, %257 ], [ %258, %260 ], [ %258, %262 ]
  %269 = lshr i32 %268, 1
  %270 = and i32 %269, 248
  %271 = load i32, ptr %30, align 4
  %272 = or i32 %270, %271
  store i32 %272, ptr %30, align 4
  store i32 %267, ptr %28, align 4
  br label %275

273:                                              ; preds = %240
  br i1 %243, label %275, label %274

274:                                              ; preds = %273
  call fastcc void @create_ptd_atl(ptr noundef %159, ptr noundef nonnull %228, ptr noundef nonnull %4)
  br label %275

275:                                              ; preds = %274, %273, %266, %245
  call fastcc void @start_bus_transfer(ptr noundef %0, i32 noundef %152, i32 noundef %155, ptr noundef %153, ptr noundef nonnull %228, ptr noundef %159, ptr noundef nonnull %4)
  br label %32

276:                                              ; preds = %37
  %277 = icmp ne i32 %24, 0
  %278 = select i1 %277, i1 true, i1 %25
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  call fastcc void @schedule_ptds(ptr noundef %0)
  br label %280

280:                                              ; preds = %279, %276
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ptd_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = shl i32 %2, 5
  %11 = add i32 %10, %1
  %12 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = and i32 %11, 65535
  br i1 %9, label %15, label %43

15:                                               ; preds = %4
  %16 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 828, i32 noundef %14) #8
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %14
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8
  store i32 %21, ptr %3, align 4
  %22 = getelementptr i32, ptr %20, i32 1
  %23 = getelementptr i32, ptr %3, i32 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8
  store i32 %24, ptr %23, align 4
  %25 = getelementptr i32, ptr %22, i32 1
  %26 = getelementptr i32, ptr %3, i32 2
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8
  store i32 %27, ptr %26, align 4
  %28 = getelementptr i32, ptr %25, i32 1
  %29 = getelementptr i32, ptr %3, i32 3
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8
  store i32 %30, ptr %29, align 4
  %31 = getelementptr i32, ptr %28, i32 1
  %32 = getelementptr i32, ptr %3, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8
  store i32 %33, ptr %32, align 4
  %34 = getelementptr i32, ptr %31, i32 1
  %35 = getelementptr i32, ptr %3, i32 5
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8
  store i32 %36, ptr %35, align 4
  %37 = getelementptr i32, ptr %34, i32 1
  %38 = getelementptr i32, ptr %3, i32 6
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8
  store i32 %39, ptr %38, align 4
  %40 = getelementptr i32, ptr %37, i32 1
  %41 = getelementptr i32, ptr %3, i32 7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8
  store i32 %42, ptr %41, align 4
  br label %134

43:                                               ; preds = %4
  %44 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 196, i32 noundef %14) #8
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #8
  %46 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 198
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %48) #8, !srcloc !22
  %50 = load ptr, ptr %46, align 4
  %51 = getelementptr i8, ptr %50, i32 198
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #8, !srcloc !22
  %53 = load ptr, ptr %46, align 4
  %54 = getelementptr i8, ptr %53, i32 198
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #8, !srcloc !22
  %56 = load ptr, ptr %46, align 4
  %57 = getelementptr i8, ptr %56, i32 198
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %57) #8, !srcloc !22
  %59 = load ptr, ptr %46, align 4
  %60 = getelementptr i8, ptr %59, i32 198
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #8, !srcloc !22
  %62 = load ptr, ptr %46, align 4
  %63 = getelementptr i8, ptr %62, i32 198
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %63) #8, !srcloc !22
  %65 = load ptr, ptr %46, align 4
  %66 = getelementptr i8, ptr %65, i32 198
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %66) #8, !srcloc !22
  %68 = load ptr, ptr %46, align 4
  %69 = getelementptr i8, ptr %68, i32 198
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %69) #8, !srcloc !22
  %71 = load ptr, ptr %46, align 4
  %72 = getelementptr i8, ptr %71, i32 198
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %72) #8, !srcloc !22
  %74 = load ptr, ptr %46, align 4
  %75 = getelementptr i8, ptr %74, i32 198
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %75) #8, !srcloc !22
  %77 = load ptr, ptr %46, align 4
  %78 = getelementptr i8, ptr %77, i32 198
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %78) #8, !srcloc !22
  %80 = load ptr, ptr %46, align 4
  %81 = getelementptr i8, ptr %80, i32 198
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #8, !srcloc !22
  %83 = load ptr, ptr %46, align 4
  %84 = getelementptr i8, ptr %83, i32 198
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #8, !srcloc !22
  %86 = load ptr, ptr %46, align 4
  %87 = getelementptr i8, ptr %86, i32 198
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %87) #8, !srcloc !22
  %89 = load ptr, ptr %46, align 4
  %90 = getelementptr i8, ptr %89, i32 198
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %90) #8, !srcloc !22
  %92 = zext i16 %91 to i32
  %93 = load ptr, ptr %46, align 4
  %94 = getelementptr i8, ptr %93, i32 198
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #8, !srcloc !22
  %96 = zext i16 %95 to i32
  %97 = shl nuw i32 %96, 16
  %98 = or i32 %97, %92
  %99 = zext i16 %52 to i32
  %100 = shl nuw i32 %99, 16
  %101 = zext i16 %49 to i32
  %102 = or i32 %100, %101
  store i32 %102, ptr %3, align 4
  %103 = zext i16 %58 to i32
  %104 = shl nuw i32 %103, 16
  %105 = zext i16 %55 to i32
  %106 = or i32 %104, %105
  %107 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  %108 = zext i16 %64 to i32
  %109 = shl nuw i32 %108, 16
  %110 = zext i16 %61 to i32
  %111 = or i32 %109, %110
  %112 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 2
  store i32 %111, ptr %112, align 4
  %113 = zext i16 %70 to i32
  %114 = shl nuw i32 %113, 16
  %115 = zext i16 %67 to i32
  %116 = or i32 %114, %115
  %117 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 3
  store i32 %116, ptr %117, align 4
  %118 = zext i16 %76 to i32
  %119 = shl nuw i32 %118, 16
  %120 = zext i16 %73 to i32
  %121 = or i32 %119, %120
  %122 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 4
  store i32 %121, ptr %122, align 4
  %123 = zext i16 %82 to i32
  %124 = shl nuw i32 %123, 16
  %125 = zext i16 %79 to i32
  %126 = or i32 %124, %125
  %127 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 5
  store i32 %126, ptr %127, align 4
  %128 = zext i16 %88 to i32
  %129 = shl nuw i32 %128, 16
  %130 = zext i16 %85 to i32
  %131 = or i32 %129, %130
  %132 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 6
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.ptd, ptr %3, i32 0, i32 7
  store i32 %98, ptr %133, align 4
  br label %134

134:                                              ; preds = %43, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_clear_tt_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @create_ptd_atl(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #2 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %4 = getelementptr inbounds %struct.isp1760_qtd, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 15
  %11 = and i32 %10, 15
  %12 = and i32 %9, 128
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr %struct.usb_device, ptr %7, i32 0, i32 22, i32 %11
  %15 = getelementptr %struct.usb_device, ptr %7, i32 0, i32 21, i32 %11
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 4
  %21 = load i16, ptr %20, align 1
  %22 = and i16 %21, 2047
  %23 = zext i16 %22 to i32
  %24 = shl nuw nsw i32 %23, 18
  %25 = or i32 %24, 1
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i32 [ %25, %19 ], [ 1, %3 ]
  store i32 1, ptr %2, align 4
  %28 = getelementptr inbounds %struct.isp1760_qtd, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 3
  %31 = or i32 %27, %30
  store i32 %31, ptr %2, align 4
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %32, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 16
  %36 = and i32 %35, -2147483648
  %37 = or i32 %36, %31
  store i32 %37, ptr %2, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 7
  %43 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 5
  %48 = and i32 %47, 1016
  %49 = or i32 %48, %42
  store i32 %49, ptr %43, align 4
  %50 = load i8, ptr %1, align 4
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 10
  %53 = or i32 %52, %49
  store i32 %53, ptr %43, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 30
  switch i32 %57, label %62 [
    i32 3, label %59
    i32 1, label %58
  ]

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %58, %26
  %60 = phi i32 [ 12288, %58 ], [ 8192, %26 ]
  %61 = or i32 %53, %60
  store i32 %61, ptr %43, align 4
  br label %62

62:                                               ; preds = %59, %26
  %63 = phi i32 [ %53, %26 ], [ %61, %59 ]
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.urb, ptr %64, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %112, label %70

70:                                               ; preds = %62
  %71 = or i32 %63, 16384
  store i32 %71, ptr %43, align 4
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = or i32 %63, 147456
  store i32 %79, ptr %43, align 4
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr inbounds %struct.urb, ptr %80, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %78, %70
  %84 = phi i32 [ %79, %78 ], [ %71, %70 ]
  %85 = phi ptr [ %82, %78 ], [ %74, %70 ]
  %86 = getelementptr inbounds %struct.usb_device, ptr %85, i32 0, i32 9
  %87 = load i32, ptr %86, align 8
  %88 = shl i32 %87, 18
  %89 = or i32 %84, %88
  store i32 %89, ptr %43, align 4
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr inbounds %struct.urb, ptr %90, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.usb_device, ptr %92, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %95, align 8
  %97 = shl i32 %96, 25
  %98 = or i32 %97, %89
  store i32 %98, ptr %43, align 4
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 10
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, -1073741824
  %103 = icmp eq i32 %102, 1073741824
  br i1 %103, label %104, label %123

104:                                              ; preds = %83
  %105 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = or i32 %98, 131072
  store i32 %111, ptr %43, align 4
  br label %123

112:                                              ; preds = %62
  %113 = or i32 %37, 536870912
  store i32 %113, ptr %2, align 4
  %114 = load ptr, ptr %4, align 4
  %115 = getelementptr inbounds %struct.urb, ptr %114, i32 0, i32 10
  %116 = load i32, ptr %115, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.isp1760_qh, ptr %0, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 %120, 26
  %122 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 3
  store i32 %121, ptr %122, align 4
  br label %123

123:                                              ; preds = %118, %112, %110, %104, %83
  %124 = phi i32 [ 0, %112 ], [ 0, %83 ], [ 0, %104 ], [ 0, %110 ], [ %121, %118 ]
  %125 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 2
  store i32 0, ptr %125, align 4
  %126 = getelementptr inbounds %struct.isp1760_qtd, ptr %1, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %127, 5
  %129 = add i32 %128, -32768
  %130 = and i32 %129, -256
  store i32 %130, ptr %125, align 4
  %131 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 3
  %132 = getelementptr inbounds %struct.isp1760_qh, ptr %0, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %133, 25
  %135 = or i32 %134, %124
  store i32 %135, ptr %131, align 4
  %136 = load ptr, ptr %4, align 4
  %137 = getelementptr inbounds %struct.urb, ptr %136, i32 0, i32 10
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, -1073741824
  %140 = icmp eq i32 %139, -2147483648
  br i1 %140, label %141, label %160

141:                                              ; preds = %123
  %142 = getelementptr inbounds %struct.isp1760_qtd, ptr %1, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.urb, ptr %136, i32 0, i32 21
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = and i32 %135, -67108864
  br label %160

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.isp1760_qtd, ptr %1, i32 0, i32 3
  %151 = getelementptr inbounds %struct.isp1760_qh, ptr %0, i32 0, i32 1
  %152 = load ptr, ptr %150, align 4
  %153 = icmp eq ptr %152, %151
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = getelementptr i8, ptr %152, i32 8
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %136
  br i1 %157, label %160, label %158

158:                                              ; preds = %154, %149
  %159 = or i32 %135, 33554432
  br label %160

160:                                              ; preds = %158, %154, %147, %123
  %161 = phi i32 [ %148, %147 ], [ %159, %158 ], [ %135, %154 ], [ %135, %123 ]
  %162 = or i32 %161, -2122317824
  store i32 %162, ptr %131, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @start_bus_transfer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %13 = load ptr, ptr %12, align 8
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.isp1760_hcd, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, %2
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %15, %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1010, i32 noundef 9, ptr noundef null) #8
  br label %23

23:                                               ; preds = %22, %15
  %24 = getelementptr inbounds %struct.isp1760_qtd, ptr %4, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.isp1760_qtd, ptr %4, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1011, i32 noundef 9, ptr noundef null) #8
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = getelementptr %struct.isp1760_slotinfo, ptr %3, i32 %2
  %34 = getelementptr %struct.isp1760_slotinfo, ptr %3, i32 %2, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !17

37:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1012, i32 noundef 9, ptr noundef null) #8
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr %33, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !17

41:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds %struct.isp1760_qtd, ptr %4, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %47, label %46, !prof !17

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1014, i32 noundef 9, ptr noundef null) #8
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.isp1760_hcd, ptr %13, i32 0, i32 4
  %49 = load i8, ptr %48, align 4, !range !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #8
  br label %53

53:                                               ; preds = %51, %47
  %54 = icmp eq i32 %1, 3072
  %55 = load ptr, ptr %12, align 8
  br i1 %54, label %56, label %77

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !9
  %57 = getelementptr %struct.isp1760_hcd, ptr %55, i32 0, i32 3, i32 26
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @regmap_field_read(ptr noundef %58, ptr noundef nonnull %11) #8
  %60 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  %61 = shl nuw i32 1, %2
  %62 = or i32 %60, %61
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr %struct.isp1760_hcd, ptr %63, i32 0, i32 3, i32 26
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 @regmap_field_update_bits_base(ptr noundef %65, i32 noundef -1, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %67 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !9
  %68 = getelementptr %struct.isp1760_hcd, ptr %67, i32 0, i32 3, i32 25
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 @regmap_field_read(ptr noundef %69, ptr noundef nonnull %10) #8
  %71 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  %72 = getelementptr inbounds %struct.isp1760_hcd, ptr %13, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, %71
  %75 = xor i32 %61, -1
  %76 = and i32 %74, %75
  store i32 %76, ptr %72, align 4
  br label %98

77:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !9
  %78 = getelementptr %struct.isp1760_hcd, ptr %55, i32 0, i32 3, i32 23
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 @regmap_field_read(ptr noundef %79, ptr noundef nonnull %9) #8
  %81 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %82 = shl nuw i32 1, %2
  %83 = or i32 %81, %82
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr %struct.isp1760_hcd, ptr %84, i32 0, i32 3, i32 23
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 @regmap_field_update_bits_base(ptr noundef %86, i32 noundef -1, i32 noundef %83, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %88 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !9
  %89 = getelementptr %struct.isp1760_hcd, ptr %88, i32 0, i32 3, i32 22
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 @regmap_field_read(ptr noundef %90, ptr noundef nonnull %8) #8
  %92 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %93 = getelementptr inbounds %struct.isp1760_hcd, ptr %13, i32 0, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, %92
  %96 = xor i32 %82, -1
  %97 = and i32 %95, %96
  store i32 %97, ptr %93, align 4
  br label %98

98:                                               ; preds = %77, %56
  %99 = phi i32 [ %96, %77 ], [ %75, %56 ]
  %100 = phi i32 [ %81, %77 ], [ %60, %56 ]
  %101 = getelementptr inbounds %struct.isp1760_qh, ptr %5, i32 0, i32 4
  store i32 %2, ptr %101, align 4
  store i32 2, ptr %43, align 4
  %102 = load volatile i32, ptr @jiffies, align 64
  %103 = getelementptr %struct.isp1760_slotinfo, ptr %3, i32 %2, i32 2
  store i32 %102, ptr %103, align 4
  store ptr %4, ptr %34, align 4
  store ptr %5, ptr %33, align 4
  %104 = load ptr, ptr %12, align 8
  %105 = getelementptr inbounds %struct.isp1760_hcd, ptr %104, i32 0, i32 4
  %106 = load i8, ptr %105, align 4, !range !10
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.isp1760_hcd, ptr %104, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = shl i32 %2, 5
  %112 = add i32 %111, %1
  %113 = add i32 %112, 4
  %114 = getelementptr %struct.ptd, ptr %6, i32 0, i32 1
  %115 = getelementptr i8, ptr %110, i32 %113
  %116 = load i32, ptr %114, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %116) #8
  %117 = getelementptr %struct.ptd, ptr %6, i32 0, i32 2
  %118 = getelementptr i32, ptr %115, i32 1
  %119 = load i32, ptr %117, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %119) #8
  %120 = getelementptr %struct.ptd, ptr %6, i32 0, i32 3
  %121 = getelementptr i32, ptr %118, i32 1
  %122 = load i32, ptr %120, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %122) #8
  %123 = getelementptr %struct.ptd, ptr %6, i32 0, i32 4
  %124 = getelementptr i32, ptr %121, i32 1
  %125 = load i32, ptr %123, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %125) #8
  %126 = getelementptr %struct.ptd, ptr %6, i32 0, i32 5
  %127 = getelementptr i32, ptr %124, i32 1
  %128 = load i32, ptr %126, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %128) #8
  %129 = getelementptr %struct.ptd, ptr %6, i32 0, i32 6
  %130 = getelementptr i32, ptr %127, i32 1
  %131 = load i32, ptr %129, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %131) #8
  %132 = getelementptr %struct.ptd, ptr %6, i32 0, i32 7
  %133 = getelementptr i32, ptr %130, i32 1
  %134 = load i32, ptr %132, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %134) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  call void @arm_heavy_mb() #8
  %135 = getelementptr i8, ptr %110, i32 %112
  %136 = load i32, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %136) #8
  br label %217

137:                                              ; preds = %98
  %138 = shl i32 %2, 5
  %139 = add i32 %138, %1
  %140 = load i32, ptr %6, align 4
  %141 = trunc i32 %140 to i16
  %142 = lshr i32 %140, 16
  %143 = trunc i32 %142 to i16
  %144 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = trunc i32 %145 to i16
  %147 = lshr i32 %145, 16
  %148 = trunc i32 %147 to i16
  %149 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = trunc i32 %150 to i16
  %152 = lshr i32 %150, 16
  %153 = trunc i32 %152 to i16
  %154 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = trunc i32 %155 to i16
  %157 = lshr i32 %155, 16
  %158 = trunc i32 %157 to i16
  %159 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = trunc i32 %160 to i16
  %162 = lshr i32 %160, 16
  %163 = trunc i32 %162 to i16
  %164 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = trunc i32 %165 to i16
  %167 = lshr i32 %165, 16
  %168 = trunc i32 %167 to i16
  %169 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 6
  %170 = load i32, ptr %169, align 4
  %171 = trunc i32 %170 to i16
  %172 = lshr i32 %170, 16
  %173 = trunc i32 %172 to i16
  %174 = getelementptr inbounds %struct.ptd, ptr %6, i32 0, i32 7
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.isp1760_hcd, ptr %104, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = and i32 %139, 65535
  %179 = call i32 @regmap_write(ptr noundef %177, i32 noundef 196, i32 noundef %178) #8
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %180(i32 noundef 214748) #8
  %181 = getelementptr inbounds %struct.isp1760_hcd, ptr %104, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr i8, ptr %182, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %183, i16 %141) #8, !srcloc !24
  %184 = load ptr, ptr %181, align 4
  %185 = getelementptr i8, ptr %184, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %185, i16 %143) #8, !srcloc !24
  %186 = load ptr, ptr %181, align 4
  %187 = getelementptr i8, ptr %186, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %187, i16 %146) #8, !srcloc !24
  %188 = load ptr, ptr %181, align 4
  %189 = getelementptr i8, ptr %188, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %189, i16 %148) #8, !srcloc !24
  %190 = load ptr, ptr %181, align 4
  %191 = getelementptr i8, ptr %190, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %191, i16 %151) #8, !srcloc !24
  %192 = load ptr, ptr %181, align 4
  %193 = getelementptr i8, ptr %192, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %193, i16 %153) #8, !srcloc !24
  %194 = load ptr, ptr %181, align 4
  %195 = getelementptr i8, ptr %194, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %195, i16 %156) #8, !srcloc !24
  %196 = load ptr, ptr %181, align 4
  %197 = getelementptr i8, ptr %196, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %197, i16 %158) #8, !srcloc !24
  %198 = load ptr, ptr %181, align 4
  %199 = getelementptr i8, ptr %198, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %199, i16 %161) #8, !srcloc !24
  %200 = load ptr, ptr %181, align 4
  %201 = getelementptr i8, ptr %200, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %201, i16 %163) #8, !srcloc !24
  %202 = load ptr, ptr %181, align 4
  %203 = getelementptr i8, ptr %202, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %203, i16 %166) #8, !srcloc !24
  %204 = load ptr, ptr %181, align 4
  %205 = getelementptr i8, ptr %204, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %205, i16 %168) #8, !srcloc !24
  %206 = load ptr, ptr %181, align 4
  %207 = getelementptr i8, ptr %206, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %207, i16 %171) #8, !srcloc !24
  %208 = load ptr, ptr %181, align 4
  %209 = getelementptr i8, ptr %208, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %209, i16 %173) #8, !srcloc !24
  %210 = trunc i32 %175 to i16
  %211 = load ptr, ptr %181, align 4
  %212 = getelementptr i8, ptr %211, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %212, i16 %210) #8, !srcloc !24
  %213 = lshr i32 %175, 16
  %214 = trunc i32 %213 to i16
  %215 = load ptr, ptr %181, align 4
  %216 = getelementptr i8, ptr %215, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %216, i16 %214) #8, !srcloc !24
  br label %217

217:                                              ; preds = %137, %108
  %218 = and i32 %100, %99
  %219 = load ptr, ptr %12, align 8
  %220 = getelementptr %struct.isp1760_hcd, ptr %219, i32 0, i32 3, i32 23
  %221 = getelementptr %struct.isp1760_hcd, ptr %219, i32 0, i32 3, i32 26
  %222 = select i1 %54, ptr %221, ptr %220
  %223 = load ptr, ptr %222, align 4
  %224 = call i32 @regmap_field_update_bits_base(ptr noundef %223, i32 noundef -1, i32 noundef %218, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @schedule_ptds(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.ptd, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1207, i32 noundef 9, ptr noundef null) #8
  br label %543

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %246, %8
  %12 = phi i32 [ 0, %8 ], [ %247, %246 ]
  %13 = getelementptr %struct.isp1760_hcd, ptr %10, i32 0, i32 12, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %246, label %16

16:                                               ; preds = %244, %11
  %17 = phi ptr [ %18, %244 ], [ %14, %11 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.isp1760_qh, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %236, label %22

22:                                               ; preds = %234, %16
  %23 = phi ptr [ %25, %234 ], [ %20, %16 ]
  %24 = getelementptr i8, ptr %23, i32 -12
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %23, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %236, label %29

29:                                               ; preds = %22
  %30 = icmp eq ptr %25, %19
  br i1 %30, label %42, label %31

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %23, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %25, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %33
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = icmp eq i32 %27, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %25, i32 20
  store i32 4, ptr %40, align 4
  %41 = load i32, ptr %26, align 4
  br label %42

42:                                               ; preds = %39, %37, %31, %29
  %43 = phi i32 [ %41, %39 ], [ %27, %37 ], [ %27, %31 ], [ %27, %29 ]
  %44 = phi i1 [ true, %39 ], [ true, %37 ], [ false, %31 ], [ false, %29 ]
  %45 = icmp eq i32 %43, 3
  br i1 %45, label %46, label %177

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %23, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %156, label %50

50:                                               ; preds = %46
  %51 = load i8, ptr %24, align 4
  switch i8 %51, label %156 [
    i8 1, label %52
    i8 0, label %149
  ]

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %23, i32 -4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %23, i32 -8
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %9, align 8
  %58 = getelementptr inbounds %struct.isp1760_hcd, ptr %57, i32 0, i32 4
  %59 = load i8, ptr %58, align 4, !range !10
  %60 = icmp eq i8 %59, 0
  %61 = getelementptr inbounds %struct.isp1760_hcd, ptr %57, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  br i1 %60, label %63, label %124

63:                                               ; preds = %52
  %64 = call i32 @regmap_write(ptr noundef %62, i32 noundef 828, i32 noundef %54) #8
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748) #8
  %66 = getelementptr inbounds %struct.isp1760_hcd, ptr %57, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %68 = getelementptr i8, ptr %67, i32 %54
  %69 = icmp ult i32 %54, 4096
  %70 = icmp ugt i32 %48, 3
  br i1 %69, label %72, label %71

71:                                               ; preds = %63
  br i1 %70, label %82, label %102

72:                                               ; preds = %63
  br i1 %70, label %73, label %97

73:                                               ; preds = %73, %72
  %74 = phi ptr [ %80, %73 ], [ %56, %72 ]
  %75 = phi i32 [ %78, %73 ], [ %48, %72 ]
  %76 = phi ptr [ %79, %73 ], [ %68, %72 ]
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !18
  store i32 %77, ptr %74, align 4
  %78 = add i32 %75, -4
  %79 = getelementptr i32, ptr %76, i32 1
  %80 = getelementptr i32, ptr %74, i32 1
  %81 = icmp ugt i32 %78, 3
  br i1 %81, label %73, label %91

82:                                               ; preds = %82, %71
  %83 = phi ptr [ %89, %82 ], [ %56, %71 ]
  %84 = phi i32 [ %87, %82 ], [ %48, %71 ]
  %85 = phi ptr [ %88, %82 ], [ %68, %71 ]
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #8, !srcloc !18
  store i32 %86, ptr %83, align 4
  %87 = add i32 %84, -4
  %88 = getelementptr i32, ptr %85, i32 1
  %89 = getelementptr i32, ptr %83, i32 1
  %90 = icmp ugt i32 %87, 3
  br i1 %90, label %82, label %91

91:                                               ; preds = %82, %73
  %92 = phi ptr [ %79, %73 ], [ %88, %82 ]
  %93 = phi i32 [ %78, %73 ], [ %87, %82 ]
  %94 = phi ptr [ %80, %73 ], [ %89, %82 ]
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %123, label %96

96:                                               ; preds = %91
  br i1 %69, label %97, label %102

97:                                               ; preds = %96, %72
  %98 = phi ptr [ %92, %96 ], [ %68, %72 ]
  %99 = phi i32 [ %93, %96 ], [ %48, %72 ]
  %100 = phi ptr [ %94, %96 ], [ %56, %72 ]
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #8, !srcloc !18
  br label %107

102:                                              ; preds = %96, %71
  %103 = phi ptr [ %92, %96 ], [ %68, %71 ]
  %104 = phi i32 [ %93, %96 ], [ %48, %71 ]
  %105 = phi ptr [ %94, %96 ], [ %56, %71 ]
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #8, !srcloc !18
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i32 [ %104, %102 ], [ %99, %97 ]
  %109 = phi ptr [ %105, %102 ], [ %100, %97 ]
  %110 = phi i32 [ %106, %102 ], [ %101, %97 ]
  store i32 %110, ptr %3, align 4
  %111 = trunc i32 %110 to i8
  store i8 %111, ptr %109, align 1
  %112 = add nsw i32 %108, -1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %114, %107
  %115 = phi i32 [ %121, %114 ], [ %112, %107 ]
  %116 = phi ptr [ %119, %114 ], [ %109, %107 ]
  %117 = phi ptr [ %118, %114 ], [ %3, %107 ]
  %118 = getelementptr i8, ptr %117, i32 1
  %119 = getelementptr i8, ptr %116, i32 1
  %120 = load i8, ptr %118, align 1
  store i8 %120, ptr %119, align 1
  %121 = add i32 %115, -1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %114

123:                                              ; preds = %114, %107, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %149

124:                                              ; preds = %52
  %125 = and i32 %54, 65535
  %126 = call i32 @regmap_write(ptr noundef %62, i32 noundef 196, i32 noundef %125) #8
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %127(i32 noundef 214748) #8
  %128 = icmp ugt i32 %48, 1
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.isp1760_hcd, ptr %57, i32 0, i32 1
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi ptr [ %56, %129 ], [ %138, %131 ]
  %133 = phi i32 [ %48, %129 ], [ %137, %131 ]
  %134 = load ptr, ptr %130, align 4
  %135 = getelementptr i8, ptr %134, i32 198
  %136 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %135) #8, !srcloc !22
  store i16 %136, ptr %132, align 2
  %137 = add i32 %133, -2
  %138 = getelementptr i16, ptr %132, i32 1
  %139 = icmp ugt i32 %137, 1
  br i1 %139, label %131, label %140

140:                                              ; preds = %131
  %141 = icmp eq i32 %137, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %140, %124
  %143 = phi ptr [ %138, %140 ], [ %56, %124 ]
  %144 = getelementptr inbounds %struct.isp1760_hcd, ptr %57, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %145, i32 198
  %147 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %146) #8, !srcloc !22
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %148 = trunc i16 %147 to i8
  store i8 %148, ptr %143, align 1
  br label %149

149:                                              ; preds = %142, %140, %123, %50
  %150 = load i32, ptr %47, align 4
  %151 = getelementptr i8, ptr %23, i32 8
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.urb, ptr %152, i32 0, i32 20
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %150
  store i32 %155, ptr %153, align 4
  br label %156

156:                                              ; preds = %149, %50, %46
  %157 = getelementptr i8, ptr %23, i32 8
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.urb, ptr %158, i32 0, i32 10
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %160, -1073741825
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load i32, ptr %47, align 4
  %164 = getelementptr i8, ptr %23, i32 12
  %165 = load i32, ptr %164, align 4
  %166 = icmp ult i32 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.urb, ptr %158, i32 0, i32 13
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.urb, ptr %158, i32 0, i32 12
  store i32 -121, ptr %173, align 4
  br label %174

174:                                              ; preds = %172, %167
  br i1 %44, label %175, label %177

175:                                              ; preds = %174
  %176 = getelementptr i8, ptr %25, i32 20
  store i32 4, ptr %176, align 4
  br label %177

177:                                              ; preds = %175, %174, %162, %156, %42
  %178 = getelementptr i8, ptr %23, i32 -4
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %205, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %9, align 8
  %183 = getelementptr inbounds %struct.isp1760_hcd, ptr %182, i32 0, i32 5
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %184, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %199, %181
  %189 = phi i32 [ %200, %199 ], [ 0, %181 ]
  %190 = getelementptr %struct.isp1760_hcd, ptr %182, i32 0, i32 11, i32 %189
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, %179
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = getelementptr %struct.isp1760_hcd, ptr %182, i32 0, i32 11, i32 %189, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197, !prof !17

197:                                              ; preds = %193
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 635, i32 noundef 9, ptr noundef null) #8
  br label %198

198:                                              ; preds = %197, %193
  store i32 1, ptr %194, align 4
  br label %204

199:                                              ; preds = %188
  %200 = add nuw i32 %189, 1
  %201 = icmp eq i32 %200, %186
  br i1 %201, label %202, label %188

202:                                              ; preds = %199, %181
  %203 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %203, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.free_mem, i32 noundef %179) #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 644, i32 noundef 9, ptr noundef null) #8
  br label %204

204:                                              ; preds = %202, %198
  store i32 0, ptr %178, align 4
  br label %205

205:                                              ; preds = %204, %177
  br i1 %44, label %226, label %206

206:                                              ; preds = %205
  %207 = load i32, ptr %26, align 4
  %208 = icmp eq i32 %207, 4
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = getelementptr i8, ptr %23, i32 8
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.urb, ptr %211, i32 0, i32 12
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, -115
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 -32, ptr %212, align 4
  br label %216

216:                                              ; preds = %215, %209, %206
  %217 = load ptr, ptr @urb_listitem_cachep, align 4
  %218 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %217, i32 noundef 2848) #8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %236, label %220, !prof !8

220:                                              ; preds = %216
  %221 = getelementptr i8, ptr %23, i32 8
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.urb_listitem, ptr %218, i32 0, i32 1
  store ptr %222, ptr %223, align 8
  %224 = load ptr, ptr %5, align 4
  store ptr %218, ptr %5, align 4
  store ptr %4, ptr %218, align 8
  %225 = getelementptr inbounds %struct.list_head, ptr %218, i32 0, i32 1
  store ptr %224, ptr %225, align 4
  store volatile ptr %218, ptr %224, align 4
  br label %226

226:                                              ; preds = %220, %205
  %227 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = load ptr, ptr %23, align 4
  %230 = getelementptr inbounds %struct.list_head, ptr %229, i32 0, i32 1
  store ptr %228, ptr %230, align 4
  store volatile ptr %229, ptr %228, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %227, align 4
  %231 = load i32, ptr %178, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233, !prof !17

233:                                              ; preds = %226
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %234

234:                                              ; preds = %233, %226
  %235 = load ptr, ptr @qtd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %235, ptr noundef %24) #8
  br i1 %30, label %236, label %22

236:                                              ; preds = %234, %216, %22, %16
  %237 = load volatile ptr, ptr %19, align 4
  %238 = icmp eq ptr %237, %19
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %17, align 4
  %243 = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  store ptr %241, ptr %243, align 4
  store volatile ptr %242, ptr %241, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %240, align 4
  br label %244

244:                                              ; preds = %239, %236
  %245 = icmp eq ptr %18, %13
  br i1 %245, label %246, label %16

246:                                              ; preds = %244, %11
  %247 = add nuw nsw i32 %12, 1
  %248 = icmp eq i32 %247, 3
  br i1 %248, label %249, label %11

249:                                              ; preds = %246
  %250 = load ptr, ptr %4, align 8
  %251 = icmp eq ptr %250, %4
  br i1 %251, label %252, label %256

252:                                              ; preds = %297, %249
  %253 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 5
  %254 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 2
  %255 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 4
  br label %305

256:                                              ; preds = %297, %249
  %257 = phi ptr [ %258, %297 ], [ %250, %249 ]
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.urb_listitem, ptr %257, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = load ptr, ptr %9, align 8
  %262 = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %256
  %266 = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 12
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, -115
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 0, ptr %266, align 4
  br label %270

270:                                              ; preds = %269, %265, %256
  %271 = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 10
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, 128
  %274 = icmp eq i32 %273, 0
  %275 = and i32 %272, -1073741824
  %276 = icmp eq i32 %275, -2147483648
  %277 = or i1 %274, %276
  br i1 %277, label %297, label %278

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 14
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 19
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr i8, ptr %280, i32 %282
  %284 = icmp ult ptr %280, %283
  br i1 %284, label %285, label %297

285:                                              ; preds = %285, %278
  %286 = phi ptr [ %292, %285 ], [ %280, %278 ]
  %287 = load ptr, ptr @mem_map, align 4
  %288 = ptrtoint ptr %286 to i32
  %289 = add i32 %288, 1073741824
  %290 = lshr i32 %289, 12
  %291 = getelementptr %struct.page, ptr %287, i32 %290
  call void @flush_dcache_page(ptr noundef %291) #8
  %292 = getelementptr i8, ptr %286, i32 4096
  %293 = load ptr, ptr %279, align 4
  %294 = load i32, ptr %281, align 4
  %295 = getelementptr i8, ptr %293, i32 %294
  %296 = icmp ult ptr %292, %295
  br i1 %296, label %285, label %297

297:                                              ; preds = %285, %278, %270
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef nonnull %0, ptr noundef %260) #8
  %298 = getelementptr inbounds %struct.isp1760_hcd, ptr %261, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %299 = load i16, ptr %298, align 4
  %300 = add i16 %299, 1
  store i16 %300, ptr %298, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %301 = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 12
  %302 = load i32, ptr %301, align 4
  call void @usb_hcd_giveback_urb(ptr noundef nonnull %0, ptr noundef %260, i32 noundef %302) #8
  call void @_raw_spin_lock(ptr noundef %298) #8
  %303 = load ptr, ptr @urb_listitem_cachep, align 4
  call void @kmem_cache_free(ptr noundef %303, ptr noundef %257) #8
  %304 = icmp eq ptr %258, %4
  br i1 %304, label %252, label %256

305:                                              ; preds = %540, %252
  %306 = phi i32 [ 0, %252 ], [ %541, %540 ]
  %307 = getelementptr %struct.isp1760_hcd, ptr %10, i32 0, i32 12, i32 %306
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, %307
  br i1 %309, label %540, label %310

310:                                              ; preds = %538, %305
  %311 = phi ptr [ %312, %538 ], [ %308, %305 ]
  %312 = load ptr, ptr %311, align 4
  %313 = load ptr, ptr %9, align 8
  %314 = getelementptr inbounds %struct.isp1760_hcd, ptr %313, i32 0, i32 5
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %315, i32 0, i32 2
  %317 = load i32, ptr %316, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #8, !annotation !9
  %318 = getelementptr inbounds %struct.isp1760_qh, ptr %311, i32 0, i32 1
  %319 = load volatile ptr, ptr %318, align 4
  %320 = icmp eq ptr %319, %318
  br i1 %320, label %321, label %322, !prof !8

321:                                              ; preds = %310
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1130, i32 noundef 9, ptr noundef null) #8
  br label %538

322:                                              ; preds = %310
  %323 = getelementptr inbounds %struct.isp1760_qh, ptr %311, i32 0, i32 5
  %324 = load i32, ptr %323, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %538

326:                                              ; preds = %322
  %327 = getelementptr i8, ptr %319, i32 8
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 10
  %330 = load i32, ptr %329, align 4
  %331 = and i32 %330, -1073741824
  %332 = icmp eq i32 %331, 1073741824
  %333 = getelementptr inbounds %struct.isp1760_hcd, ptr %313, i32 0, i32 9
  %334 = getelementptr inbounds %struct.isp1760_hcd, ptr %313, i32 0, i32 7
  %335 = select i1 %332, ptr %333, ptr %334
  %336 = select i1 %332, i32 2048, i32 3072
  %337 = load ptr, ptr %335, align 4
  %338 = icmp sgt i32 %317, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %353, %326
  %340 = phi i32 [ %354, %353 ], [ 0, %326 ]
  %341 = phi i32 [ %349, %353 ], [ -1, %326 ]
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = getelementptr %struct.isp1760_slotinfo, ptr %337, i32 %340, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  %347 = select i1 %346, i32 %340, i32 -1
  br label %348

348:                                              ; preds = %343, %339
  %349 = phi i32 [ %341, %339 ], [ %347, %343 ]
  %350 = getelementptr %struct.isp1760_slotinfo, ptr %337, i32 %340
  %351 = load ptr, ptr %350, align 4
  %352 = icmp eq ptr %351, %311
  br i1 %352, label %356, label %353

353:                                              ; preds = %348
  %354 = add nuw nsw i32 %340, 1
  %355 = icmp eq i32 %354, %317
  br i1 %355, label %356, label %339

356:                                              ; preds = %353, %348, %326
  %357 = phi i32 [ 0, %326 ], [ %317, %353 ], [ %340, %348 ]
  %358 = phi i32 [ -1, %326 ], [ %349, %348 ], [ %349, %353 ]
  %359 = add i32 %317, -1
  %360 = icmp sgt i32 %358, -1
  br label %361

361:                                              ; preds = %533, %356
  %362 = phi ptr [ %319, %356 ], [ %536, %533 ]
  %363 = phi i32 [ %357, %356 ], [ %535, %533 ]
  %364 = phi i32 [ 0, %356 ], [ %534, %533 ]
  %365 = getelementptr i8, ptr %362, i32 -12
  %366 = getelementptr i8, ptr %362, i32 20
  %367 = load i32, ptr %366, align 4
  switch i32 %367, label %533 [
    i32 0, label %368
    i32 1, label %493
  ]

368:                                              ; preds = %361
  %369 = getelementptr i8, ptr %362, i32 -4
  %370 = load i32, ptr %369, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %376, !prof !17

372:                                              ; preds = %368
  %373 = load ptr, ptr %9, align 8
  %374 = getelementptr inbounds %struct.isp1760_hcd, ptr %373, i32 0, i32 5
  %375 = load ptr, ptr %374, align 4
  br label %383

376:                                              ; preds = %368
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1158, i32 noundef 9, ptr noundef null) #8
  %377 = load i32, ptr %369, align 4
  %378 = load ptr, ptr %9, align 8
  %379 = getelementptr inbounds %struct.isp1760_hcd, ptr %378, i32 0, i32 5
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq i32 %377, 0
  br i1 %381, label %383, label %382, !prof !17

382:                                              ; preds = %376
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 609, i32 noundef 9, ptr noundef null) #8
  br label %383

383:                                              ; preds = %382, %376, %372
  %384 = phi ptr [ %375, %372 ], [ %380, %382 ], [ %380, %376 ]
  %385 = phi ptr [ %373, %372 ], [ %378, %382 ], [ %378, %376 ]
  %386 = getelementptr i8, ptr %362, i32 12
  %387 = load i32, ptr %386, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %492, label %389

389:                                              ; preds = %383
  %390 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %384, i32 0, i32 3
  %391 = load i32, ptr %390, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %412, label %393

393:                                              ; preds = %406, %389
  %394 = phi i32 [ %407, %406 ], [ 0, %389 ]
  %395 = getelementptr %struct.isp1760_hcd, ptr %385, i32 0, i32 11, i32 %394, i32 1
  %396 = load i32, ptr %395, align 4
  %397 = icmp ult i32 %396, %387
  br i1 %397, label %406, label %398

398:                                              ; preds = %393
  %399 = getelementptr %struct.isp1760_hcd, ptr %385, i32 0, i32 11, i32 %394, i32 2
  %400 = load i32, ptr %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %406, label %402

402:                                              ; preds = %398
  %403 = getelementptr %struct.isp1760_hcd, ptr %385, i32 0, i32 11, i32 %394
  store i32 0, ptr %399, align 4
  %404 = load i32, ptr %403, align 4
  store i32 %404, ptr %369, align 4
  %405 = load i32, ptr %386, align 4
  br label %409

406:                                              ; preds = %398, %393
  %407 = add nuw i32 %394, 1
  %408 = icmp eq i32 %407, %391
  br i1 %408, label %409, label %393

409:                                              ; preds = %406, %402
  %410 = phi i32 [ %405, %402 ], [ %387, %406 ]
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %492, label %412

412:                                              ; preds = %409, %389
  %413 = phi i32 [ %410, %409 ], [ %387, %389 ]
  %414 = load i32, ptr %369, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %538, label %416

416:                                              ; preds = %412
  %417 = load i8, ptr %365, align 4
  switch i8 %417, label %492 [
    i8 2, label %418
    i8 0, label %418
  ]

418:                                              ; preds = %416, %416
  %419 = getelementptr i8, ptr %362, i32 -8
  %420 = load ptr, ptr %419, align 4
  %421 = load ptr, ptr %9, align 8
  %422 = getelementptr inbounds %struct.isp1760_hcd, ptr %421, i32 0, i32 4
  %423 = load i8, ptr %422, align 4, !range !10
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %465

425:                                              ; preds = %418
  %426 = getelementptr inbounds %struct.isp1760_hcd, ptr %421, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr i8, ptr %427, i32 %414
  %429 = icmp ult i32 %414, 4096
  %430 = icmp ugt i32 %413, 3
  br i1 %429, label %432, label %431

431:                                              ; preds = %425
  br i1 %430, label %442, label %461

432:                                              ; preds = %425
  br i1 %430, label %433, label %457

433:                                              ; preds = %433, %432
  %434 = phi ptr [ %440, %433 ], [ %428, %432 ]
  %435 = phi i32 [ %438, %433 ], [ %413, %432 ]
  %436 = phi ptr [ %439, %433 ], [ %420, %432 ]
  %437 = load i32, ptr %436, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 %437) #8, !srcloc !20
  %438 = add i32 %435, -4
  %439 = getelementptr i32, ptr %436, i32 1
  %440 = getelementptr i32, ptr %434, i32 1
  %441 = icmp ugt i32 %438, 3
  br i1 %441, label %433, label %451

442:                                              ; preds = %442, %431
  %443 = phi ptr [ %449, %442 ], [ %428, %431 ]
  %444 = phi i32 [ %447, %442 ], [ %413, %431 ]
  %445 = phi ptr [ %448, %442 ], [ %420, %431 ]
  %446 = load i32, ptr %445, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %443, i32 %446) #8, !srcloc !20
  %447 = add i32 %444, -4
  %448 = getelementptr i32, ptr %445, i32 1
  %449 = getelementptr i32, ptr %443, i32 1
  %450 = icmp ugt i32 %447, 3
  br i1 %450, label %442, label %451

451:                                              ; preds = %442, %433
  %452 = phi ptr [ %439, %433 ], [ %448, %442 ]
  %453 = phi i32 [ %438, %433 ], [ %447, %442 ]
  %454 = phi ptr [ %440, %433 ], [ %449, %442 ]
  %455 = icmp eq i32 %453, 0
  br i1 %455, label %492, label %456

456:                                              ; preds = %451
  br i1 %429, label %457, label %461

457:                                              ; preds = %456, %432
  %458 = phi ptr [ %452, %456 ], [ %420, %432 ]
  %459 = phi ptr [ %454, %456 ], [ %428, %432 ]
  %460 = load i32, ptr %458, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %459, i32 %460) #8, !srcloc !20
  br label %492

461:                                              ; preds = %456, %431
  %462 = phi ptr [ %452, %456 ], [ %420, %431 ]
  %463 = phi ptr [ %454, %456 ], [ %428, %431 ]
  %464 = load i32, ptr %462, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %463, i32 %464) #8, !srcloc !20
  br label %492

465:                                              ; preds = %418
  %466 = getelementptr inbounds %struct.isp1760_hcd, ptr %421, i32 0, i32 2
  %467 = load ptr, ptr %466, align 4
  %468 = and i32 %414, 65535
  %469 = call i32 @regmap_write(ptr noundef %467, i32 noundef 196, i32 noundef %468) #8
  %470 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %470(i32 noundef 214748) #8
  %471 = icmp ugt i32 %413, 1
  br i1 %471, label %472, label %485

472:                                              ; preds = %465
  %473 = getelementptr inbounds %struct.isp1760_hcd, ptr %421, i32 0, i32 1
  br label %474

474:                                              ; preds = %474, %472
  %475 = phi i32 [ %413, %472 ], [ %480, %474 ]
  %476 = phi ptr [ %420, %472 ], [ %481, %474 ]
  %477 = load i16, ptr %476, align 2
  %478 = load ptr, ptr %473, align 4
  %479 = getelementptr i8, ptr %478, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %479, i16 %477) #8, !srcloc !24
  %480 = add i32 %475, -2
  %481 = getelementptr i16, ptr %476, i32 1
  %482 = icmp ugt i32 %480, 1
  br i1 %482, label %474, label %483

483:                                              ; preds = %474
  %484 = icmp eq i32 %480, 0
  br i1 %484, label %492, label %485

485:                                              ; preds = %483, %465
  %486 = phi ptr [ %481, %483 ], [ %420, %465 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  call void @arm_heavy_mb() #8
  %487 = load i8, ptr %486, align 1
  %488 = zext i8 %487 to i16
  %489 = getelementptr inbounds %struct.isp1760_hcd, ptr %421, i32 0, i32 1
  %490 = load ptr, ptr %489, align 4
  %491 = getelementptr i8, ptr %490, i32 198
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %491, i16 %488) #8, !srcloc !24
  br label %492

492:                                              ; preds = %485, %483, %461, %457, %451, %416, %409, %383
  store i32 1, ptr %366, align 4
  br label %493

493:                                              ; preds = %492, %361
  %494 = icmp sgt i32 %363, %359
  %495 = select i1 %494, i1 %360, i1 false
  br i1 %495, label %496, label %529

496:                                              ; preds = %493
  %497 = getelementptr i8, ptr %362, i32 8
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.urb, ptr %498, i32 0, i32 10
  %500 = load i32, ptr %499, align 4
  %501 = and i32 %500, -1073741824
  %502 = icmp eq i32 %501, 1073741824
  call fastcc void @create_ptd_atl(ptr noundef %311, ptr noundef %365, ptr noundef nonnull %2) #8
  br i1 %502, label %503, label %528

503:                                              ; preds = %496
  %504 = load ptr, ptr %497, align 4
  %505 = getelementptr inbounds %struct.urb, ptr %504, i32 0, i32 8
  %506 = load ptr, ptr %505, align 4
  %507 = getelementptr inbounds %struct.usb_device, ptr %506, i32 0, i32 4
  %508 = load i32, ptr %507, align 4
  %509 = icmp eq i32 %508, 3
  %510 = getelementptr inbounds %struct.urb, ptr %504, i32 0, i32 25
  %511 = load i32, ptr %510, align 4
  br i1 %509, label %512, label %520

512:                                              ; preds = %503
  %513 = ashr i32 %511, 3
  %514 = icmp sgt i32 %511, 4
  br i1 %514, label %521, label %515

515:                                              ; preds = %512
  %516 = icmp sgt i32 %511, 2
  br i1 %516, label %521, label %517

517:                                              ; preds = %515
  %518 = icmp eq i32 %511, 2
  %519 = select i1 %518, i32 85, i32 255
  br label %521

520:                                              ; preds = %503
  store i32 255, ptr %253, align 4
  br label %521

521:                                              ; preds = %520, %517, %515, %512
  %522 = phi i32 [ 15, %520 ], [ 1, %512 ], [ 34, %515 ], [ %519, %517 ]
  %523 = phi i32 [ %511, %520 ], [ %513, %512 ], [ %513, %515 ], [ %513, %517 ]
  %524 = lshr i32 %523, 1
  %525 = and i32 %524, 248
  %526 = load i32, ptr %254, align 4
  %527 = or i32 %525, %526
  store i32 %527, ptr %254, align 4
  store i32 %522, ptr %255, align 4
  br label %528

528:                                              ; preds = %521, %496
  call fastcc void @start_bus_transfer(ptr noundef nonnull %0, i32 noundef %336, i32 noundef %358, ptr noundef %337, ptr noundef %365, ptr noundef %311, ptr noundef nonnull %2) #8
  br label %529

529:                                              ; preds = %528, %493
  %530 = phi i32 [ %358, %528 ], [ %363, %493 ]
  %531 = add i32 %364, 1
  %532 = icmp sgt i32 %531, 1
  br i1 %532, label %538, label %533

533:                                              ; preds = %529, %361
  %534 = phi i32 [ 1, %529 ], [ %364, %361 ]
  %535 = phi i32 [ %530, %529 ], [ %363, %361 ]
  %536 = load ptr, ptr %362, align 4
  %537 = icmp eq ptr %536, %318
  br i1 %537, label %538, label %361

538:                                              ; preds = %533, %529, %412, %322, %321
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  %539 = icmp eq ptr %312, %307
  br i1 %539, label %540, label %310

540:                                              ; preds = %538, %305
  %541 = add nuw nsw i32 %306, 1
  %542 = icmp eq i32 %541, 3
  br i1 %542, label %543, label %305

543:                                              ; preds = %540, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @isp1760_hcd_clear(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ult i32 %1, 9
  br i1 %5, label %6, label %21, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = select i1 %11, i32 100, i32 160
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %17 = xor i32 %8, -1
  %18 = and i32 %16, %17
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !20
  br label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 3
  %23 = getelementptr ptr, ptr %22, i32 %1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %26

26:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @isp1760_hcd_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ult i32 %1, 9
  br i1 %5, label %6, label %20, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = select i1 %11, i32 100, i32 160
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %17 = or i32 %16, %8
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !20
  br label %25

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 3
  %22 = getelementptr ptr, ptr %21, i32 %1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %25

25:                                               ; preds = %20, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ehci_reset(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 0, ptr %5, align 8
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 16
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %9 = getelementptr %struct.isp1760_hcd, ptr %8, i32 0, i32 3, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = tail call i64 @ktime_get() #8
  %13 = add i64 %12, 250000000
  br label %14

14:                                               ; preds = %21, %1
  %15 = load ptr, ptr %9, align 4
  %16 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %2) #8
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %2, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = call i64 @ktime_get() #8
  %23 = icmp sgt i64 %22, %13
  br i1 %23, label %24, label %14

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 4
  %26 = call i32 @regmap_field_read(ptr noundef %25, ptr noundef nonnull %2) #8
  %27 = load i32, ptr %2, align 4
  br label %28

28:                                               ; preds = %24, %14
  %29 = phi i32 [ %27, %24 ], [ %18, %14 ]
  %30 = phi i32 [ %26, %24 ], [ %16, %14 ]
  %31 = icmp ne i32 %30, 0
  %32 = icmp eq i32 %29, 0
  %33 = select i1 %31, i1 true, i1 %32
  %34 = select i1 %33, i32 0, i32 -110
  %35 = select i1 %31, i32 %30, i32 %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_hcd_set_and_wait(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = icmp ult i32 %1, 9
  br i1 %6, label %7, label %21, !prof !8

7:                                                ; preds = %2
  %8 = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = select i1 %12, i32 100, i32 160
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %18 = or i32 %17, %9
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !20
  br label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 3
  %23 = getelementptr ptr, ptr %22, i32 %1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_field_update_bits_base(ptr noundef %24, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %26

26:                                               ; preds = %21, %7
  %27 = tail call i64 @ktime_get() #8
  %28 = add i64 %27, 250000000
  %29 = getelementptr %struct.isp1760_hcd, ptr %5, i32 0, i32 3, i32 %1
  br label %30

30:                                               ; preds = %37, %26
  %31 = load ptr, ptr %29, align 4
  %32 = call i32 @regmap_field_read(ptr noundef %31, ptr noundef nonnull %3) #8
  %33 = icmp ne i32 %32, 0
  %34 = load i32, ptr %3, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = call i64 @ktime_get() #8
  %39 = icmp sgt i64 %38, %28
  br i1 %39, label %40, label %30

40:                                               ; preds = %37
  %41 = load ptr, ptr %29, align 4
  %42 = call i32 @regmap_field_read(ptr noundef %41, ptr noundef nonnull %3) #8
  %43 = load i32, ptr %3, align 4
  br label %44

44:                                               ; preds = %40, %30
  %45 = phi i32 [ %43, %40 ], [ %34, %30 ]
  %46 = phi i32 [ %42, %40 ], [ %32, %30 ]
  %47 = icmp ne i32 %46, 0
  %48 = icmp ne i32 %45, 0
  %49 = select i1 %47, i1 true, i1 %48
  %50 = select i1 %49, i32 0, i32 -110
  %51 = select i1 %47, i32 %46, i32 %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @errata2_function(ptr nocapture noundef readnone %0) #2 {
  %2 = alloca %struct.ptd, align 4
  %3 = load ptr, ptr @errata2_timer_hcd, align 4
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.isp1760_memory_layout, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 7
  %15 = getelementptr inbounds %struct.ptd, ptr %2, i32 0, i32 3
  %16 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 8
  br label %17

17:                                               ; preds = %41, %13
  %18 = phi i32 [ 0, %13 ], [ %42, %41 ]
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.isp1760_slotinfo, ptr %19, i32 %18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.isp1760_slotinfo, ptr %19, i32 %18, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 30
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 %26, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  call fastcc void @ptd_read(ptr noundef %3, i32 noundef 3072, i32 noundef %18, ptr noundef nonnull %2)
  %31 = load i32, ptr %2, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr %15, align 4
  %35 = icmp sgt i32 %34, -1
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = shl nuw i32 1, %18
  %39 = load i32, ptr %16, align 4
  %40 = or i32 %39, %38
  store i32 %40, ptr %16, align 4
  br label %41

41:                                               ; preds = %37, %30, %23, %17
  %42 = add nuw i32 %18, 1
  %43 = load i32, ptr %10, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %17, label %45

45:                                               ; preds = %41, %1
  %46 = getelementptr inbounds %struct.isp1760_hcd, ptr %5, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call fastcc void @handle_done_ptds(ptr noundef %3)
  br label %50

50:                                               ; preds = %49, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #8
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = add i32 %51, 20
  store i32 %52, ptr getelementptr inbounds (%struct.timer_list, ptr @errata2_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @errata2_timer) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qtd_list_free(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %18, label %4

4:                                                ; preds = %15, %1
  %5 = phi ptr [ %7, %15 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -12
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr i8, ptr %5, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !17

14:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 997, i32 noundef 9, ptr noundef null) #8
  br label %15

15:                                               ; preds = %14, %4
  %16 = load ptr, ptr @qtd_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %6) #8
  %17 = icmp eq ptr %7, %0
  br i1 %17, label %18, label %4

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @isp1760_hcd_ppc_is_set(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.isp1760_hcd, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %9 = getelementptr %struct.isp1760_hcd, ptr %4, i32 0, i32 3, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %2) #8
  %12 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ %13, %8 ], [ true, %1 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_hcd_clear_and_wait(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = icmp ult i32 %1, 9
  br i1 %7, label %8, label %23, !prof !8

8:                                                ; preds = %3
  %9 = getelementptr [9 x i32], ptr @isp176x_hc_portsc1_fields, i32 0, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !10
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = select i1 %13, i32 100, i32 160
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %19 = xor i32 %10, -1
  %20 = and i32 %18, %19
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !20
  br label %28

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.isp1760_hcd, ptr %6, i32 0, i32 3
  %25 = getelementptr ptr, ptr %24, i32 %1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %28

28:                                               ; preds = %23, %8
  %29 = zext i32 %2 to i64
  %30 = tail call i64 @ktime_get() #8
  %31 = mul nuw nsw i64 %29, 1000
  %32 = add i64 %30, %31
  %33 = getelementptr %struct.isp1760_hcd, ptr %6, i32 0, i32 3, i32 %1
  br label %34

34:                                               ; preds = %41, %28
  %35 = load ptr, ptr %33, align 4
  %36 = call i32 @regmap_field_read(ptr noundef %35, ptr noundef nonnull %4) #8
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = call i64 @ktime_get() #8
  %43 = icmp sgt i64 %42, %32
  br i1 %43, label %44, label %34

44:                                               ; preds = %41
  %45 = load ptr, ptr %33, align 4
  %46 = call i32 @regmap_field_read(ptr noundef %45, ptr noundef nonnull %4) #8
  %47 = load i32, ptr %4, align 4
  br label %48

48:                                               ; preds = %44, %34
  %49 = phi i32 [ %47, %44 ], [ %38, %34 ]
  %50 = phi i32 [ %46, %44 ], [ %36, %34 ]
  %51 = icmp ne i32 %50, 0
  %52 = icmp eq i32 %49, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i32 0, i32 -110
  %55 = select i1 %51, i32 %50, i32 %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_reset_complete(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = getelementptr %struct.isp1760_hcd, ptr %6, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %4) #8
  %10 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %14 = getelementptr %struct.isp1760_hcd, ptr %13, i32 0, i32 3, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %3) #8
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %0, align 8
  %20 = add i32 %1, 1
  br i1 %18, label %21, label %46

21:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.18, i32 noundef %20) #10
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.isp1760_hcd, ptr %22, i32 0, i32 4
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.isp1760_hcd, ptr %22, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = select i1 %25, i32 100, i32 160
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  %31 = or i32 %30, 8192
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i8, ptr %32, i32 %28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #8, !srcloc !20
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.isp1760_hcd, ptr %34, i32 0, i32 4
  %36 = load i8, ptr %35, align 4, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.isp1760_hcd, ptr %34, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = select i1 %37, i32 100, i32 160
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  %43 = and i32 %42, -3
  %44 = load ptr, ptr %38, align 4
  %45 = getelementptr i8, ptr %44, i32 %40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !20
  br label %47

46:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.19, i32 noundef %20) #10
  br label %47

47:                                               ; preds = %46, %21, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149018900}
!12 = !{i64 2149014724}
!13 = !{i64 2149014799, i64 2149014826, i64 2149014873, i64 2149014895, i64 2149014923, i64 2149014943}
!14 = !{i64 2149041903}
!15 = !{i64 644766}
!16 = !{i64 2149043044}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 3835219}
!19 = !{i64 2153302397}
!20 = !{i64 3834801}
!21 = !{i32 0, i32 33}
!22 = !{i64 3834381}
!23 = !{i64 2153309721}
!24 = !{i64 3834181}
!25 = !{i64 2153307205}
!26 = !{i64 2153307711}
