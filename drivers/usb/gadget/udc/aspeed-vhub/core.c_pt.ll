; ModuleID = '/llk/IR/drivers/usb/gadget/udc/aspeed-vhub/core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.64 }>
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ast_vhub_port = type { i16, i16, %struct.ast_vhub_dev }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }

@.str = private unnamed_addr constant [42 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/core.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ast_vhub_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-usb-vhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-usb-vhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-usb-vhub\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description232 = internal constant [35 x i8] c"description=Aspeed vHub udc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [57 x i8] c"author=Benjamin Herrenschmidt <benh@kernel.crashing.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ast_vhub_driver = internal global %struct.platform_driver { ptr @ast_vhub_probe, ptr @ast_vhub_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ast_vhub_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [12 x i8] c"aspeed_vhub\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"aspeed,vhub-downstream-ports\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"aspeed,vhub-generic-endpoints\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to map resources\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error couldn't enable clock (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to request interrupt\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to allocate EP0 DMA buffers\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Initialized virtual hub in USB%d mode\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license234], section "llvm.metadata"

@__mod_of__ast_vhub_dt_ids_device_table = dso_local alias [4 x %struct.of_device_id], ptr @ast_vhub_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_done(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %11, align 4
  %15 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, -115
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 %2, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %35

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %30, ptr noundef %1, i32 noundef %34) #6
  br label %35

35:                                               ; preds = %28, %27
  store i32 0, ptr %20, align 4
  br label %36

36:                                               ; preds = %35, %19
  br i1 %7, label %37, label %44

37:                                               ; preds = %36
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr inbounds %struct.ast_vhub, ptr %38, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %40 = load i16, ptr %39, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %1) #6
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.ast_vhub, ptr %42, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %43) #6
  br label %44

44:                                               ; preds = %37, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_nuke(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -56
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef %8, i32 noundef %1)
  %9 = load volatile ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @ast_vhub_alloc_request(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !13

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = or i32 %1, 256
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 76) #7
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_free_request(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_init_hw(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %2 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147284992) #6, !srcloc !15
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -2147022848) #6, !srcloc !15
  %6 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 31, %7
  %9 = lshr i32 -1, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %10 = or i32 %9, 769
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !15
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #6, !srcloc !15
  %16 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 32, %17
  %19 = lshr i32 -1, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %19) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %19) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 5) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %34 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 8, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #6, !srcloc !15
  %40 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 -2147022847, i32 -2147022845
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 65995) #6, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ast_vhub_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ast_vhub_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 320, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 11
  %9 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %8, i32 noundef 1, i32 noundef 0) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %8, align 4
  br label %14

13:                                               ; preds = %7
  store i32 5, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 5, %13 ]
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 784) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %18, label %20, !prof !8

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 10
  store ptr null, ptr %19, align 4
  br label %127

20:                                               ; preds = %14
  %21 = extractvalue { i32, i1 } %16, 0
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %21, i32 noundef 3520) #6
  %23 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 10
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %127, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 14
  %27 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %26, i32 noundef 1, i32 noundef 0) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %26, align 4
  br label %32

31:                                               ; preds = %25
  store i32 15, ptr %26, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 15, %31 ]
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 164) #6
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %36, label %38, !prof !8

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 13
  store ptr null, ptr %37, align 4
  br label %127

38:                                               ; preds = %32
  %39 = extractvalue { i32, i1 } %34, 0
  %40 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %39, i32 noundef 3520) #6
  %41 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 13
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %127, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 3
  store i32 0, ptr %44, align 4
  store ptr %0, ptr %5, align 4
  %45 = load i32, ptr %8, align 4
  %46 = sub i32 23, %45
  %47 = lshr i32 -1, %46
  %48 = and i32 %47, -512
  %49 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 12
  store i32 %48, ptr %49, align 4
  %50 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %51 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %50) #6
  %52 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %55 = load ptr, ptr %52, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %127

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %58, align 8
  %59 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %60 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 5
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = ptrtoint ptr %59 to i32
  br label %124

64:                                               ; preds = %57
  %65 = tail call i32 @clk_prepare(ptr noundef %59) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = tail call i32 @clk_enable(ptr noundef %59) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  tail call void @clk_unprepare(ptr noundef %59) #6
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ %68, %70 ], [ %65, %64 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %72) #8
  br label %124

73:                                               ; preds = %67
  %74 = tail call i32 @usb_get_maximum_speed(ptr noundef %2) #6
  %75 = add i32 %74, -1
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 15
  %79 = load i8, ptr %78, align 4
  %80 = or i8 %79, 4
  store i8 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %77, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %82 = load ptr, ptr %52, align 4
  %83 = getelementptr i8, ptr %82, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %84 = load ptr, ptr %52, align 4
  %85 = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 511) #6, !srcloc !15
  %86 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %87 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 2
  store i32 %86, ptr %87, align 4
  %88 = icmp slt i32 %86, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %81
  %90 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %86, ptr noundef nonnull @ast_vhub_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #8
  br label %124

93:                                               ; preds = %89
  %94 = load i32, ptr %8, align 4
  %95 = shl i32 %94, 6
  %96 = add i32 %95, 64
  %97 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 7
  %98 = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %96, ptr noundef %97, i32 noundef 3264, i32 noundef 0) #6
  %99 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 6
  store ptr %98, ptr %99, align 4
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  br label %124

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 8
  tail call void @ast_vhub_init_ep0(ptr noundef nonnull %5, ptr noundef %103, ptr noundef null) #6
  %104 = load i32, ptr %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %106, %102
  %107 = phi i32 [ %109, %106 ], [ 0, %102 ]
  %108 = tail call i32 @ast_vhub_init_dev(ptr noundef nonnull %5, i32 noundef %107) #6
  %109 = add nuw i32 %107, 1
  %110 = load i32, ptr %8, align 4
  %111 = icmp ult i32 %109, %110
  %112 = icmp eq i32 %108, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %106, label %114

114:                                              ; preds = %106
  br i1 %112, label %115, label %124

115:                                              ; preds = %114, %102
  %116 = tail call i32 @ast_vhub_init_hub(ptr noundef nonnull %5) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  tail call void @ast_vhub_init_hw(ptr noundef nonnull %5)
  %119 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 15
  %120 = load i8, ptr %119, align 4
  %121 = and i8 %120, 4
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 2, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %123) #8
  br label %127

124:                                              ; preds = %115, %114, %101, %92, %81, %71, %62
  %125 = phi i32 [ %63, %62 ], [ %72, %71 ], [ %90, %92 ], [ %108, %114 ], [ %116, %115 ], [ -12, %101 ], [ %86, %81 ]
  %126 = tail call i32 @ast_vhub_remove(ptr noundef %0)
  br label %127

127:                                              ; preds = %124, %118, %54, %38, %36, %20, %18, %1
  %128 = phi i32 [ %56, %54 ], [ %125, %124 ], [ 0, %118 ], [ -12, %1 ], [ -12, %20 ], [ -12, %38 ], [ -12, %18 ], [ -12, %36 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 10
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr %struct.ast_vhub_port, ptr %17, i32 %16, i32 2
  tail call void @ast_vhub_del_dev(ptr noundef %18) #6
  %19 = add nuw i32 %16, 1
  %20 = load i32, ptr %10, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %15, label %22

22:                                               ; preds = %15, %9
  %23 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 511) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %29 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -2147481600) #6, !srcloc !15
  %30 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  tail call void @clk_disable(ptr noundef nonnull %31) #6
  tail call void @clk_unprepare(ptr noundef nonnull %31) #6
  br label %34

34:                                               ; preds = %33, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #6
  %35 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %10, align 4
  %41 = shl i32 %40, 6
  %42 = add i32 %41, 64
  %43 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %42, ptr noundef nonnull %36, i32 noundef %44, i32 noundef 0) #6
  br label %45

45:                                               ; preds = %38, %34
  store ptr null, ptr %35, align 4
  br label %46

46:                                               ; preds = %45, %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %108, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %104, label %13

13:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #6, !srcloc !15
  %16 = and i32 %11, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !15
  %24 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 14
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 13
  br label %28

28:                                               ; preds = %42, %26
  %29 = phi i32 [ 0, %26 ], [ %44, %42 ]
  %30 = phi i32 [ %21, %26 ], [ %43, %42 ]
  %31 = load i32, ptr %24, align 4
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = shl nuw i32 1, %29
  %35 = and i32 %34, %30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr %struct.ast_vhub_ep, ptr %38, i32 %29
  tail call void @ast_vhub_epn_ack_irq(ptr noundef %39) #6
  %40 = xor i32 %34, -1
  %41 = and i32 %30, %40
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i32 [ %41, %37 ], [ %30, %33 ]
  %44 = add nuw i32 %29, 1
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %28

46:                                               ; preds = %42, %28, %18, %13
  %47 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, %11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 10
  br label %57

57:                                               ; preds = %67, %55
  %58 = phi i32 [ %53, %55 ], [ %68, %67 ]
  %59 = phi i32 [ 0, %55 ], [ %69, %67 ]
  %60 = shl i32 512, %59
  %61 = and i32 %60, %11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %56, align 4
  %65 = getelementptr %struct.ast_vhub_port, ptr %64, i32 %59, i32 2
  tail call void @ast_vhub_dev_irq(ptr noundef %65) #6
  %66 = load i32, ptr %52, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %58, %57 ], [ %66, %63 ]
  %69 = add nuw i32 %59, 1
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %57, label %71

71:                                               ; preds = %67, %51, %46
  %72 = and i32 %11, 11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %71
  %75 = and i32 %11, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %78, i1 noundef zeroext true) #6
  br label %79

79:                                               ; preds = %77, %74
  %80 = and i32 %11, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %83, i1 noundef zeroext false) #6
  br label %84

84:                                               ; preds = %82, %79
  %85 = and i32 %11, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.ast_vhub, ptr %1, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_setup(ptr noundef %88) #6
  br label %89

89:                                               ; preds = %87, %84, %71
  %90 = and i32 %11, 448
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %89
  %93 = and i32 %11, 256
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @ast_vhub_hub_resume(ptr noundef %1) #6
  br label %96

96:                                               ; preds = %95, %92
  %97 = and i32 %11, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @ast_vhub_hub_suspend(ptr noundef %1) #6
  br label %100

100:                                              ; preds = %99, %96
  %101 = and i32 %11, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @ast_vhub_hub_reset(ptr noundef %1) #6
  br label %104

104:                                              ; preds = %103, %100, %89, %6
  %105 = phi i32 [ 1, %103 ], [ 1, %100 ], [ 1, %89 ], [ 0, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %106 = load i16, ptr %7, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %108

108:                                              ; preds = %104, %2
  %109 = phi i32 [ %105, %104 ], [ 0, %2 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_init_ep0(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_init_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_init_hub(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_epn_ack_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_del_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148935197}
!10 = !{i64 2148931021}
!11 = !{i64 2148931096, i64 2148931123, i64 2148931170, i64 2148931192, i64 2148931220, i64 2148931240}
!12 = !{i64 2148958200}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153443860}
!15 = !{i64 3837392}
!16 = !{i64 2153444732}
!17 = !{i64 2153447037}
!18 = !{i64 2153447984}
!19 = !{i64 2153449093}
!20 = !{i64 2153449406}
!21 = !{i64 2153449726}
!22 = !{i64 2153450060}
!23 = !{i64 2153450387}
!24 = !{i64 2153450736}
!25 = !{i64 2153451085}
!26 = !{i64 2153451414}
!27 = !{i64 2153451759}
!28 = !{i64 2153452093}
!29 = !{i64 2153452550}
!30 = !{i64 2153457422}
!31 = !{i64 2153457745}
!32 = !{i64 2153453365}
!33 = !{i64 2153453688}
!34 = !{i64 2153454049}
!35 = !{i64 3837810}
!36 = !{i64 2153442414}
!37 = !{i64 2153442606}
!38 = !{i64 2153443104}
!39 = !{i64 2153443298}
