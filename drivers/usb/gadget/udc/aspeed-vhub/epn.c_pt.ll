; ModuleID = '/llk/IR/drivers/usb/gadget/udc/aspeed-vhub/epn.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/epn.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.ast_vhub_desc = type { i32, i32 }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.64 }>
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.anon.0 = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [41 x i8] c"drivers/usb/gadget/udc/aspeed-vhub/epn.c\00", align 1
@ast_vhub_epn_ops = internal constant %struct.usb_ep_ops { ptr @ast_vhub_epn_enable, ptr @ast_vhub_epn_disable, ptr @ast_vhub_epn_dispose, ptr @ast_vhub_alloc_request, ptr @ast_vhub_free_request, ptr @ast_vhub_epn_queue, ptr @ast_vhub_epn_dequeue, ptr @ast_vhub_epn_set_halt, ptr @ast_vhub_epn_set_wedge, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ep%d\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Timeout waiting for DMA\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Bogus EPn request ! u_req=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"complete=%p internal=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Request mapping failure %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_epn_ack_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  br i1 %5, label %62, label %7

7:                                                ; preds = %7, %1
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %7

15:                                               ; preds = %7
  %16 = lshr i32 %10, 8
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  %21 = getelementptr i8, ptr %19, i32 -56
  %22 = select i1 %20, ptr null, ptr %21
  %23 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %17
  br i1 %25, label %58, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  %28 = icmp eq ptr %22, null
  %29 = getelementptr inbounds %struct.ast_vhub_req, ptr %22, i32 0, i32 4
  %30 = getelementptr inbounds %struct.usb_request, ptr %22, i32 0, i32 12
  %31 = getelementptr inbounds %struct.ast_vhub_req, ptr %22, i32 0, i32 3
  br label %32

32:                                               ; preds = %55, %26
  %33 = phi i32 [ %24, %26 ], [ %56, %55 ]
  %34 = load ptr, ptr %27, align 4
  %35 = add i32 %33, 1
  %36 = and i32 %35, 255
  store i32 %36, ptr %23, align 4
  %37 = getelementptr %struct.ast_vhub_desc, ptr %34, i32 %33, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 4095
  br i1 %28, label %55, label %40

40:                                               ; preds = %32
  %41 = load i8, ptr %29, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %30, align 4
  %46 = add i32 %45, %39
  store i32 %46, ptr %30, align 4
  %47 = load i32, ptr %31, align 4
  %48 = icmp eq i32 %47, %33
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %23, align 4
  br label %55

51:                                               ; preds = %44
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef nonnull %22, i32 noundef 0) #5
  %52 = load volatile ptr, ptr %18, align 4
  %53 = icmp eq ptr %52, %18
  %54 = getelementptr i8, ptr %52, i32 -56
  br i1 %53, label %127, label %58

55:                                               ; preds = %49, %40, %32
  %56 = phi i32 [ %36, %40 ], [ %36, %32 ], [ %50, %49 ]
  %57 = icmp eq i32 %56, %17
  br i1 %57, label %58, label %32

58:                                               ; preds = %55, %51, %15
  %59 = phi ptr [ %54, %51 ], [ %22, %15 ], [ %22, %55 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %127, label %61

61:                                               ; preds = %58
  tail call fastcc void @ast_vhub_epn_kick_desc(ptr noundef %0, ptr noundef nonnull %59) #5
  br label %127

62:                                               ; preds = %1
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr i8, ptr %63, i32 12
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %66 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  %69 = getelementptr i8, ptr %67, i32 -56
  %70 = icmp eq ptr %69, null
  %71 = or i1 %68, %70
  br i1 %71, label %127, label %72

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %67, i32 16
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %72
  %78 = and i32 %65, 65280
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %77
  %81 = and i8 %74, -2
  store i8 %81, ptr %73, align 4
  %82 = lshr i32 %65, 16
  %83 = and i32 %82, 2047
  %84 = getelementptr i8, ptr %67, i32 -48
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load i8, ptr %2, align 4
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  %91 = icmp ne i32 %83, 0
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load ptr, ptr %69, align 4
  %95 = getelementptr i8, ptr %67, i32 -4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %97, ptr align 1 %99, i32 %83, i1 false) #5
  br label %100

100:                                              ; preds = %93, %87, %80
  %101 = getelementptr i8, ptr %67, i32 -4
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %83
  store i32 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %105 = load i56, ptr %104, align 2
  %106 = trunc i56 %105 to i32
  %107 = and i32 %106, 65535
  %108 = icmp ult i32 %83, %107
  %109 = getelementptr i8, ptr %67, i32 12
  br i1 %108, label %110, label %111

110:                                              ; preds = %100
  store i32 1, ptr %109, align 4
  br label %114

111:                                              ; preds = %100
  %112 = load i32, ptr %109, align 4
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %125

114:                                              ; preds = %111, %110
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef nonnull %69, i32 noundef 0) #5
  %115 = load volatile ptr, ptr %66, align 4
  %116 = icmp eq ptr %115, %66
  %117 = getelementptr i8, ptr %115, i32 -56
  %118 = icmp eq ptr %117, null
  %119 = or i1 %116, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %115, i32 16
  %122 = load i8, ptr %121, align 4
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120, %111, %72
  %126 = phi ptr [ %117, %120 ], [ %69, %111 ], [ %69, %72 ]
  tail call fastcc void @ast_vhub_epn_kick(ptr noundef %0, ptr noundef nonnull %126) #5
  br label %127

127:                                              ; preds = %125, %120, %114, %77, %62, %61, %58, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_update_epn_stall(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #5
  br label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %10 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 12
  %13 = icmp eq i8 %12, 0
  %14 = and i32 %9, -4097
  %15 = select i1 %13, i32 0, i32 4096
  %16 = or i32 %15, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %17 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #5, !srcloc !15
  %18 = load i8, ptr %10, align 4
  %19 = and i8 %18, 12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %22 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 31
  %25 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ast_vhub, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #5, !srcloc !15
  br label %30

30:                                               ; preds = %21, %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ast_vhub_alloc_epn(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %20, label %12

20:                                               ; preds = %17, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  br label %64

21:                                               ; preds = %12
  %22 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13
  store ptr %0, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  %23 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = zext i8 %1 to i32
  %26 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 4
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 2
  store ptr @ast_vhub_epn_ops, ptr %28, align 4
  %29 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %25) #5
  %30 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = add nsw i32 %25, -1
  %34 = getelementptr ptr, ptr %32, i32 %33
  store ptr %22, ptr %34, align 4
  %35 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 7
  %36 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 1
  store i32 %13, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 512
  %40 = shl i32 %13, 4
  %41 = getelementptr i8, ptr %39, i32 %40
  store ptr %41, ptr %35, align 4
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %44 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 6
  %45 = tail call ptr @dma_alloc_attrs(ptr noundef %43, i32 noundef 3072, ptr noundef %44, i32 noundef 3264, i32 noundef 0) #5
  %46 = getelementptr %struct.ast_vhub_ep, ptr %11, i32 %13, i32 5
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %21
  %49 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %49) #5
  store ptr null, ptr %30, align 4
  br label %64

50:                                               ; preds = %21
  %51 = getelementptr i8, ptr %45, i32 1024
  %52 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 2
  store ptr %51, ptr %52, align 4
  %53 = load i32, ptr %44, align 4
  %54 = add i32 %53, 1024
  %55 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %22, i32 noundef 1024) #5
  %56 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 3
  %57 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5, i32 4
  %58 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5, i32 4, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %56, ptr %58, align 4
  store ptr %57, ptr %56, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %56, ptr %59, align 4
  %61 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 4
  %62 = load i8, ptr %61, align 4
  %63 = or i8 %62, 62
  store i8 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %50, %48, %20
  %65 = phi ptr [ null, %20 ], [ %22, %50 ], [ null, %48 ]
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_epn_kick_desc(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %90, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4
  %16 = load i32, ptr %14, align 4
  %17 = load i32, ptr %15, align 4
  %18 = xor i32 %17, -1
  %19 = add i32 %16, %18
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %85, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 3
  %25 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %26 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %27 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %28 = icmp slt i32 %11, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %77, %22
  %30 = phi i32 [ %70, %77 ], [ %4, %22 ]
  %31 = phi i32 [ %72, %77 ], [ %17, %22 ]
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr %struct.ast_vhub_desc, ptr %32, i32 %31
  %34 = add i32 %31, 1
  %35 = and i32 %34, 255
  store i32 %35, ptr %15, align 4
  %36 = sub i32 %6, %30
  %37 = load i32, ptr %24, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %29
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %25, align 4
  %43 = and i32 %42, 262144
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i56, ptr %26, align 2
  %47 = trunc i56 %46 to i32
  %48 = and i32 %47, 65535
  %49 = urem i32 %36, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %41, %39
  store i32 %31, ptr %10, align 4
  br label %52

52:                                               ; preds = %51, %45, %29
  %53 = phi i32 [ %36, %51 ], [ %36, %45 ], [ %37, %29 ]
  %54 = load i32, ptr %27, align 4
  %55 = add i32 %54, %30
  store i32 %55, ptr %33, align 4
  %56 = and i32 %53, 4095
  %57 = getelementptr %struct.ast_vhub_desc, ptr %32, i32 %31, i32 1
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %10, align 4
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %14, align 4
  %62 = load i32, ptr %15, align 4
  %63 = xor i32 %62, -1
  %64 = add i32 %61, %63
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60, %52
  %68 = or i32 %56, -2147483648
  store i32 %68, ptr %57, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = add i32 %53, %30
  store i32 %70, ptr %3, align 4
  %71 = load i32, ptr %14, align 4
  %72 = load i32, ptr %15, align 4
  %73 = xor i32 %72, -1
  %74 = add i32 %71, %73
  %75 = and i32 %74, 255
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i32, ptr %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %29, label %80

80:                                               ; preds = %77, %69, %22
  %81 = phi ptr [ null, %22 ], [ %33, %77 ], [ %33, %69 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83, !prof !12

83:                                               ; preds = %80
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %81) #5, !srcloc !8
  br label %85

85:                                               ; preds = %83, %80, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %86 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %87 = load i32, ptr %15, align 4
  %88 = load ptr, ptr %86, align 4
  %89 = getelementptr i8, ptr %88, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #5, !srcloc !15
  br label %90

90:                                               ; preds = %85, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_epn_kick(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !19

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #5
  br label %12

12:                                               ; preds = %11, %2
  %13 = sub i32 %6, %4
  %14 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %15 = load i56, ptr %14, align 2
  %16 = trunc i56 %15 to i32
  %17 = and i32 %16, 65535
  %18 = icmp ugt i32 %13, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = icmp ult i32 %13, %17
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 262144
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %19
  %27 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 3
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %21, %12
  %29 = phi i32 [ %13, %26 ], [ %13, %21 ], [ %17, %12 ]
  %30 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %34 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %32, label %38, label %51

38:                                               ; preds = %28
  br i1 %37, label %46, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr i8, ptr %42, i32 %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %43, i32 %29, i1 false)
  %44 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  br label %46

46:                                               ; preds = %39, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %47 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %33, align 4
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !15
  br label %60

51:                                               ; preds = %28
  br i1 %37, label %55, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !8
  br label %55

55:                                               ; preds = %52, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %56 = load i32, ptr %30, align 4
  %57 = add i32 %56, %4
  %58 = load ptr, ptr %33, align 4
  %59 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #5, !srcloc !15
  br label %60

60:                                               ; preds = %55, %46
  %61 = load i8, ptr %7, align 4
  %62 = or i8 %61, 1
  store i8 %62, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %63 = shl i32 %29, 16
  %64 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %63) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %67 = or i32 %63, 1
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr i8, ptr %68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #5, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_enable(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %172

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %8 = load i16, ptr %7, align 1
  %9 = and i16 %8, 2047
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %172, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %172, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp ne i8 %20, 5
  %22 = icmp eq i16 %9, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %172, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %26 = load i56, ptr %25, align 2
  %27 = trunc i56 %26 to i32
  %28 = and i32 %27, 65535
  %29 = icmp ult i32 %28, %10
  br i1 %29, label %172, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 15
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %12, %34
  br i1 %35, label %36, label %172

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %38 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %172

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %172, label %48

48:                                               ; preds = %42
  %49 = lshr i8 %32, 7
  %50 = and i8 %39, -2
  %51 = or i8 %50, %49
  store i8 %51, ptr %38, align 4
  %52 = zext i16 %9 to i56
  %53 = and i56 %26, -65536
  %54 = or i56 %53, %52
  store i56 %54, ptr %25, align 2
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 1
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = shl nuw nsw i8 %49, 5
  %63 = select i1 %61, i8 0, i8 %62
  %64 = and i8 %51, -47
  %65 = or i8 %63, %64
  store i8 %65, ptr %38, align 4
  %66 = icmp eq i8 %63, 0
  %67 = trunc i56 %54 to i32
  br i1 %66, label %72, label %68

68:                                               ; preds = %48
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2048) %60, i8 0, i32 2048, i1 false)
  %69 = load i56, ptr %25, align 2
  %70 = load i8, ptr %38, align 4
  %71 = trunc i56 %69 to i32
  br label %72

72:                                               ; preds = %68, %48
  %73 = phi i8 [ %70, %68 ], [ %65, %48 ]
  %74 = phi i32 [ %71, %68 ], [ %67, %48 ]
  %75 = and i32 %74, 65535
  %76 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 3
  store i32 %75, ptr %76, align 4
  %77 = and i8 %73, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = shl nuw nsw i32 %75, 3
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ %80, %79 ], [ %84, %81 ]
  %83 = icmp ugt i32 %82, 4095
  %84 = sub i32 %82, %75
  br i1 %83, label %81, label %85

85:                                               ; preds = %81
  store i32 %82, ptr %76, align 4
  br label %86

86:                                               ; preds = %85, %72
  %87 = trunc i8 %56 to i2
  switch i2 %87, label %172 [
    i2 1, label %89
    i2 -1, label %92
    i2 -2, label %88
  ]

88:                                               ; preds = %86
  br label %92

89:                                               ; preds = %86
  %90 = or i8 %73, 2
  store i8 %90, ptr %38, align 4
  %91 = and i8 %73, 1
  br label %92

92:                                               ; preds = %89, %88, %86
  %93 = phi i8 [ %77, %86 ], [ %91, %89 ], [ %77, %88 ]
  %94 = phi i32 [ 64, %86 ], [ 96, %89 ], [ 32, %88 ]
  %95 = icmp ult i16 %9, 1024
  %96 = shl nuw nsw i32 %10, 16
  %97 = and i32 %96, 67043328
  %98 = select i1 %95, i32 %97, i32 0
  %99 = or i32 %94, %98
  %100 = icmp eq i8 %93, 0
  %101 = or i32 %99, 16
  %102 = select i1 %100, i32 %101, i32 %99
  %103 = load i8, ptr %31, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = and i32 %105, 3840
  %107 = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = shl i32 %108, 1
  %110 = add i32 %109, 2
  %111 = or i32 %102, %106
  %112 = or i32 %111, %110
  %113 = or i32 %112, 1
  %114 = getelementptr inbounds %struct.ast_vhub, ptr %44, i32 0, i32 3
  %115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %116 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %117 = load ptr, ptr %37, align 4
  %118 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 4) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %119 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %113) #5, !srcloc !15
  %120 = load i8, ptr %38, align 4
  %121 = and i8 %120, 32
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %142, label %123

123:                                              ; preds = %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %124 = load ptr, ptr %37, align 4
  %125 = getelementptr i8, ptr %124, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %126 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = load ptr, ptr %37, align 4
  %129 = getelementptr i8, ptr %128, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #5, !srcloc !15
  %130 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %131 = load i8, ptr %38, align 4
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, i32 1, i32 9
  store i32 %134, ptr %130, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %135 = load i32, ptr %130, align 4
  %136 = or i32 %135, 4
  %137 = load ptr, ptr %37, align 4
  %138 = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %139 = load i32, ptr %130, align 4
  %140 = load ptr, ptr %37, align 4
  %141 = getelementptr i8, ptr %140, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #5, !srcloc !15
  br label %153

142:                                              ; preds = %92
  %143 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  store i32 2, ptr %143, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %144, 4
  %146 = load ptr, ptr %37, align 4
  %147 = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %148 = load i32, ptr %143, align 4
  %149 = load ptr, ptr %37, align 4
  %150 = getelementptr i8, ptr %149, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %151 = load ptr, ptr %37, align 4
  %152 = getelementptr i8, ptr %151, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 0) #5, !srcloc !15
  br label %153

153:                                              ; preds = %142, %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %154 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 31
  %157 = getelementptr inbounds %struct.ast_vhub, ptr %44, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %156) #5, !srcloc !15
  %160 = load i32, ptr %154, align 4
  %161 = shl nuw i32 1, %160
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %162 = load ptr, ptr %157, align 4
  %163 = getelementptr i8, ptr %162, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #5, !srcloc !15
  %164 = load ptr, ptr %157, align 4
  %165 = getelementptr i8, ptr %164, i32 16
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %167 = or i32 %166, %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %168 = load ptr, ptr %157, align 4
  %169 = getelementptr i8, ptr %168, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #5, !srcloc !15
  %170 = load i8, ptr %38, align 4
  %171 = or i8 %170, 16
  store i8 %171, ptr %38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %115) #5
  br label %172

172:                                              ; preds = %153, %86, %42, %36, %30, %24, %18, %14, %6, %2
  %173 = phi i32 [ 0, %153 ], [ -22, %2 ], [ -22, %6 ], [ -22, %14 ], [ -22, %18 ], [ -22, %24 ], [ -22, %30 ], [ -16, %36 ], [ -108, %42 ], [ -22, %86 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -17
  store i8 %9, ptr %7, align 4
  %10 = and i8 %8, 32
  %11 = icmp eq i8 %10, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  br i1 %11, label %15, label %14

14:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 4) #5, !srcloc !15
  br label %16

15:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #5, !srcloc !15
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %24, %16
  %18 = phi i32 [ %26, %24 ], [ 0, %16 ]
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !38
  %22 = and i32 %21, 112
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #5
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, 1000
  br i1 %27, label %28, label %17

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.2) #6
  br label %32

32:                                               ; preds = %28, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %33 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #5, !srcloc !15
  %34 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !40
  %41 = xor i32 %36, -1
  %42 = and i32 %40, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %36) #5, !srcloc !15
  tail call void @ast_vhub_nuke(ptr noundef %0, i32 noundef -108) #5
  %47 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr null, ptr %47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ast_vhub_epn_dispose(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 755, i32 noundef 9, ptr noundef null) #5
  br label %33

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %12, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.ast_vhub_dev, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %6, align 4
  %20 = add i32 %19, -1
  %21 = getelementptr ptr, ptr %18, i32 %20
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #5
  store ptr null, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %27, i32 noundef 3072, ptr noundef %29, i32 noundef %31, i32 noundef 0) #5
  store ptr null, ptr %28, align 4
  %32 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 2
  store ptr null, ptr %32, align 4
  store ptr null, ptr %2, align 4
  br label %33

33:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_vhub_alloc_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_free_request(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #6
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 1
  %24 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef %19, i32 noundef %24) #6
  br label %108

25:                                               ; preds = %3
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef null) #6
  br label %108

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %108, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %108, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %108, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %108, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ast_vhub_dev, ptr %39, i32 0, i32 7
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %108, label %50

50:                                               ; preds = %45
  %51 = and i8 %30, 32
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = and i8 %30, 1
  %55 = zext i8 %54 to i32
  br label %73

56:                                               ; preds = %50
  %57 = ptrtoint ptr %12 to i32
  %58 = and i32 %57, 7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = and i8 %30, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %67 = load i56, ptr %66, align 2
  %68 = trunc i56 %67 to i32
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -1
  %71 = and i32 %70, %65
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63, %60, %53
  %74 = phi i32 [ %55, %53 ], [ 0, %63 ], [ 1, %60 ]
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  %77 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %76, ptr noundef nonnull %1, i32 noundef %74) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.5, i32 noundef %77) #6
  br label %108

82:                                               ; preds = %63, %56
  %83 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %73
  %85 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %85, align 4
  %86 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 2
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 4
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, -2
  store i8 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 3
  store i32 -1, ptr %91, align 4
  %92 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 3
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %92) #5
  %94 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  %97 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 1
  %98 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1, i32 1
  %99 = load ptr, ptr %98, align 4
  store ptr %97, ptr %98, align 4
  store ptr %94, ptr %97, align 4
  %100 = getelementptr inbounds %struct.ast_vhub_req, ptr %1, i32 0, i32 1, i32 1
  store ptr %99, ptr %100, align 4
  store volatile ptr %97, ptr %99, align 4
  br i1 %96, label %101, label %107

101:                                              ; preds = %84
  %102 = load i8, ptr %29, align 4
  %103 = and i8 %102, 32
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call fastcc void @ast_vhub_epn_kick_desc(ptr noundef %0, ptr noundef nonnull %1)
  br label %107

106:                                              ; preds = %101
  tail call fastcc void @ast_vhub_epn_kick(ptr noundef %0, ptr noundef nonnull %1)
  br label %107

107:                                              ; preds = %106, %105, %84
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %93) #5
  br label %108

108:                                              ; preds = %107, %79, %45, %41, %37, %33, %28, %25, %14
  %109 = phi i32 [ %77, %79 ], [ 0, %107 ], [ -22, %25 ], [ -22, %14 ], [ -108, %28 ], [ -108, %33 ], [ -108, %37 ], [ -108, %41 ], [ -108, %45 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_dequeue(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -56
  %12 = icmp eq ptr %10, %7
  %13 = icmp eq ptr %11, %1
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  br i1 %13, label %16, label %23

16:                                               ; preds = %15
  %17 = getelementptr i8, ptr %10, i32 16
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call fastcc void @ast_vhub_stop_active_req(ptr noundef %0, i1 noundef zeroext true)
  br label %22

22:                                               ; preds = %21, %16
  tail call void @ast_vhub_done(ptr noundef %0, ptr noundef %1, i32 noundef -104) #5
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ 0, %22 ], [ -22, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 3
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #5
  %23 = load i8, ptr %16, align 4
  br i1 %3, label %31, label %24

24:                                               ; preds = %20
  %25 = and i8 %23, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %24, %20
  %32 = phi i8 [ 4, %27 ], [ 4, %24 ], [ 0, %20 ]
  %33 = and i8 %23, -13
  %34 = or i8 %32, %33
  store i8 %34, ptr %16, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %0) #5
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ 0, %31 ], [ -11, %27 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #5
  br label %37

37:                                               ; preds = %35, %15, %11, %7, %2
  %38 = phi i32 [ -22, %7 ], [ -22, %2 ], [ 0, %11 ], [ -95, %15 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_epn_set_wedge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #5
  %21 = load i8, ptr %14, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 1
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %18
  %29 = or i8 %21, 12
  store i8 %29, ptr %14, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %0) #5
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ 0, %28 ], [ -11, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #5
  br label %32

32:                                               ; preds = %30, %13, %9, %5, %1
  %33 = phi i32 [ -22, %5 ], [ -22, %1 ], [ 0, %9 ], [ -95, %13 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_stop_active_req(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 32
  %7 = icmp eq i8 %6, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  br i1 %7, label %11, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 4) #5, !srcloc !15
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !15
  br label %12

12:                                               ; preds = %11, %10
  br label %13

13:                                               ; preds = %20, %12
  %14 = phi i32 [ %22, %20 ], [ 0, %12 ]
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !38
  %18 = and i32 %17, 112
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #5
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 1000
  br i1 %23, label %24, label %13

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.2) #6
  br label %29

29:                                               ; preds = %24, %13
  br i1 %1, label %30, label %51

30:                                               ; preds = %29
  %31 = load i8, ptr %4, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 8
  %38 = and i32 %37, 65280
  %39 = or i32 %38, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %42 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #5, !srcloc !15
  br label %51

46:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %47 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 7, i32 0, i32 4, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !15
  br label %51

51:                                               ; preds = %46, %34, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_nuke(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3849418}
!9 = !{i64 2153462656}
!10 = !{i64 2153463001}
!11 = !{i64 2153452781}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153489951}
!14 = !{i64 2153490163}
!15 = !{i64 3849000}
!16 = !{i64 2153490538}
!17 = !{i64 2153450371}
!18 = !{i64 2153462134}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2153451113}
!21 = !{i64 2153451467}
!22 = !{i64 2153451852}
!23 = !{i64 2153452255}
!24 = !{i64 2153497271}
!25 = !{i64 2153497604}
!26 = !{i64 2153497941}
!27 = !{i64 2153498270}
!28 = !{i64 2153498603}
!29 = !{i64 2153499005}
!30 = !{i64 2153499389}
!31 = !{i64 2153499780}
!32 = !{i64 2153500164}
!33 = !{i64 2153500511}
!34 = !{i64 2153500878}
!35 = !{i64 2153501270}
!36 = !{i64 2153501742}
!37 = !{i64 2153501935}
!38 = !{i64 2153482072}
!39 = !{i64 2153494054}
!40 = !{i64 2153494545}
!41 = !{i64 2153494738}
!42 = !{i64 2153495065}
!43 = !{i64 2153483463}
!44 = !{i64 2153483799}
!45 = !{i64 2153484161}
