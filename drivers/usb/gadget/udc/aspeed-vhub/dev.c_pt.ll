; ModuleID = '/llk/IR/drivers/usb/gadget/udc/aspeed-vhub/dev.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ast_vhub_dev = type { ptr, ptr, i32, ptr, ptr, %struct.usb_gadget, ptr, i8, %struct.ast_vhub_ep, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon.61 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ast_vhub_port = type { i16, i16, %struct.ast_vhub_dev }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:p%d\00", align 1
@ast_vhub_udc_ops = internal constant %struct.usb_gadget_ops { ptr @ast_vhub_udc_get_frame, ptr @ast_vhub_udc_wakeup, ptr null, ptr null, ptr null, ptr @ast_vhub_udc_pullup, ptr null, ptr null, ptr @ast_vhub_udc_start, ptr @ast_vhub_udc_stop, ptr null, ptr null, ptr null, ptr @ast_vhub_udc_match_ep, ptr null }, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"aspeed_vhub\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !11
  %8 = and i32 %5, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %11, i1 noundef zeroext true) #5
  br label %12

12:                                               ; preds = %10, %1
  %13 = and i32 %5, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_ack(ptr noundef %16, i1 noundef zeroext false) #5
  br label %17

17:                                               ; preds = %15, %12
  %18 = and i32 %5, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 8
  tail call void @ast_vhub_ep0_handle_setup(ptr noundef %21) #5
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_ack(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_ep0_handle_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_std_dev_request(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %204, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %204, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 5, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ast_vhub, ptr %19, i32 0, i32 16
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.usb_gadget_driver, ptr %6, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %23)
  store i32 %24, ptr %14, align 4
  br label %25

25:                                               ; preds = %17, %13
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %27 = load i16, ptr %26, align 1
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %29 = load i16, ptr %28, align 1
  %30 = load i8, ptr %1, align 1
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  %36 = or i16 %32, %35
  switch i16 %36, label %204 [
    i16 5, label %37
    i16 -32768, label %46
    i16 -32512, label %57
    i16 -32256, label %59
    i16 3, label %100
    i16 1, label %115
    i16 515, label %130
    i16 513, label %167
  ]

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %41 = and i32 %40, -65281
  %42 = shl i16 %27, 8
  %43 = zext i16 %42 to i32
  %44 = or i32 %41, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #5, !srcloc !11
  br label %204

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 5, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 13
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = and i8 %10, 2
  %53 = or i8 %51, %52
  %54 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 8
  %55 = zext i8 %53 to i32
  %56 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %54, i32 noundef 2, i32 noundef %55, i32 noundef 0) #5
  br label %204

57:                                               ; preds = %25
  %58 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #5
  br label %204

59:                                               ; preds = %25
  %60 = zext i16 %29 to i32
  %61 = and i32 %60, 15
  %62 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 10
  %63 = load i32, ptr %62, align 8
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %204

65:                                               ; preds = %59
  %66 = icmp eq i32 %61, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = add nsw i32 %61, -1
  %71 = getelementptr ptr, ptr %69, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %204, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.ast_vhub_ep, ptr %72, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %76 = load i8, ptr %75, align 4
  %77 = and i8 %76, 16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %204, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 9
  %81 = load ptr, ptr %80, align 4
  %82 = icmp ne ptr %81, null
  %83 = and i8 %76, 2
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %204

86:                                               ; preds = %79
  %87 = and i8 %76, 1
  %88 = zext i8 %87 to i32
  %89 = lshr i32 %60, 7
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, %88
  br i1 %91, label %92, label %204

92:                                               ; preds = %86
  %93 = lshr i8 %76, 2
  %94 = and i8 %93, 1
  %95 = zext i8 %94 to i32
  br label %96

96:                                               ; preds = %92, %65
  %97 = phi i32 [ 0, %65 ], [ %95, %92 ]
  %98 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 8
  %99 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %98, i32 noundef 2, i32 noundef %97, i32 noundef 0) #5
  br label %204

100:                                              ; preds = %25
  switch i16 %27, label %204 [
    i16 1, label %101
    i16 2, label %103
  ]

101:                                              ; preds = %100
  %102 = or i8 %10, 2
  store i8 %102, ptr %9, align 4
  br label %204

103:                                              ; preds = %100
  %104 = load ptr, ptr %4, align 8
  %105 = getelementptr inbounds %struct.ast_vhub, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %108 = and i32 %107, -1793
  %109 = and i16 %29, 1792
  %110 = zext i16 %109 to i32
  %111 = or i32 %108, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds %struct.ast_vhub, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %111) #5, !srcloc !11
  br label %204

115:                                              ; preds = %25
  switch i16 %27, label %204 [
    i16 1, label %116
    i16 2, label %118
  ]

116:                                              ; preds = %115
  %117 = and i8 %10, -3
  store i8 %117, ptr %9, align 4
  br label %204

118:                                              ; preds = %115
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds %struct.ast_vhub, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %123 = and i32 %122, -1793
  %124 = and i16 %29, 1792
  %125 = zext i16 %124 to i32
  %126 = or i32 %123, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds %struct.ast_vhub, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %126) #5, !srcloc !11
  br label %204

130:                                              ; preds = %25
  %131 = zext i16 %29 to i32
  %132 = and i32 %131, 15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %204, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 10
  %136 = load i32, ptr %135, align 8
  %137 = icmp ult i32 %132, %136
  br i1 %137, label %138, label %204

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 9
  %140 = load ptr, ptr %139, align 4
  %141 = add nsw i32 %132, -1
  %142 = getelementptr ptr, ptr %140, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %204, label %145

145:                                              ; preds = %138
  %146 = icmp eq i16 %27, 0
  br i1 %146, label %147, label %204

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.ast_vhub_ep, ptr %143, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %149 = load i8, ptr %148, align 4
  %150 = and i8 %149, 16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %204, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.usb_ep, ptr %143, i32 0, i32 9
  %154 = load ptr, ptr %153, align 4
  %155 = icmp ne ptr %154, null
  %156 = and i8 %149, 2
  %157 = icmp eq i8 %156, 0
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %204

159:                                              ; preds = %152
  %160 = and i8 %149, 1
  %161 = zext i8 %160 to i32
  %162 = lshr i32 %131, 7
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, %161
  br i1 %164, label %165, label %204

165:                                              ; preds = %159
  %166 = or i8 %149, 4
  store i8 %166, ptr %148, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %143) #5
  br label %204

167:                                              ; preds = %25
  %168 = zext i16 %29 to i32
  %169 = and i32 %168, 15
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %204, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 10
  %173 = load i32, ptr %172, align 8
  %174 = icmp ult i32 %169, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.ast_vhub_dev, ptr %4, i32 0, i32 9
  %177 = load ptr, ptr %176, align 4
  %178 = add nsw i32 %169, -1
  %179 = getelementptr ptr, ptr %177, i32 %178
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %204, label %182

182:                                              ; preds = %175
  %183 = icmp eq i16 %27, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.ast_vhub_ep, ptr %180, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %186 = load i8, ptr %185, align 4
  %187 = and i8 %186, 16
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %204, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.usb_ep, ptr %180, i32 0, i32 9
  %191 = load ptr, ptr %190, align 4
  %192 = icmp ne ptr %191, null
  %193 = and i8 %186, 2
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %204

196:                                              ; preds = %189
  %197 = and i8 %186, 1
  %198 = zext i8 %197 to i32
  %199 = lshr i32 %168, 7
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, %198
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = and i8 %186, -5
  store i8 %203, ptr %185, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %180) #5
  br label %204

204:                                              ; preds = %202, %196, %189, %184, %182, %175, %171, %167, %165, %159, %152, %147, %145, %138, %134, %130, %118, %116, %115, %103, %101, %100, %96, %86, %79, %74, %67, %59, %57, %46, %37, %25, %8, %2
  %205 = phi i32 [ %58, %57 ], [ %56, %46 ], [ 0, %37 ], [ -1, %2 ], [ -1, %8 ], [ 2, %25 ], [ %99, %96 ], [ -1, %59 ], [ -1, %67 ], [ -1, %86 ], [ -1, %79 ], [ -1, %74 ], [ 0, %101 ], [ 0, %103 ], [ 2, %100 ], [ 0, %116 ], [ 0, %118 ], [ 2, %115 ], [ 0, %165 ], [ 0, %130 ], [ -1, %138 ], [ -1, %134 ], [ 2, %145 ], [ -1, %159 ], [ -1, %152 ], [ -1, %147 ], [ 0, %202 ], [ 0, %167 ], [ -1, %175 ], [ -1, %171 ], [ 2, %182 ], [ -1, %196 ], [ -1, %189 ], [ -1, %184 ]
  ret i32 %205
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ast_vhub_simple_reply(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.ast_vhub, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5
  tail call void %16(ptr noundef %17) #5
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %18, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %19) #5
  br label %20

20:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.ast_vhub, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5
  tail call void %16(ptr noundef %17) #5
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %18, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %19) #5
  br label %20

20:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_dev_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %4, label %9, label %30

9:                                                ; preds = %1
  br i1 %8, label %65, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 512, %12
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.ast_vhub, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %19 = xor i32 %13, -1
  %20 = and i32 %18, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.ast_vhub, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %25 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #5, !srcloc !11
  %27 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %27, align 4
  %28 = load i8, ptr %5, align 4
  %29 = and i8 %28, -5
  store i8 %29, ptr %5, align 4
  br label %65

30:                                               ; preds = %1
  br i1 %8, label %31, label %32

31:                                               ; preds = %30
  tail call fastcc void @ast_vhub_dev_enable(ptr noundef %0)
  br label %65

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.ast_vhub, ptr %33, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %37 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %2, align 8
  tail call void @usb_gadget_udc_reset(ptr noundef %37, ptr noundef %38) #5
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.ast_vhub, ptr %39, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %40) #5
  %41 = load i8, ptr %5, align 4
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = shl i32 512, %46
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.ast_vhub, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %53 = xor i32 %47, -1
  %54 = and i32 %52, %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.ast_vhub, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %54) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %59 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #5, !srcloc !11
  %61 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5, i32 5
  store i32 0, ptr %61, align 4
  %62 = load i8, ptr %5, align 4
  %63 = and i8 %62, -5
  store i8 %63, ptr %5, align 4
  br label %64

64:                                               ; preds = %44, %32
  tail call fastcc void @ast_vhub_dev_enable(ptr noundef %0)
  br label %65

65:                                               ; preds = %64, %31, %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ast_vhub_dev_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  tail call void @ast_vhub_reset_ep0(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, i32 47, i32 45
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %11 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  %13 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = shl i32 512, %14
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.ast_vhub, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %21 = or i32 %20, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.ast_vhub, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %26 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 8, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !11
  %30 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 10
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 9
  br label %35

35:                                               ; preds = %50, %33
  %36 = phi i32 [ %31, %33 ], [ %51, %50 ]
  %37 = phi i32 [ 0, %33 ], [ %52, %50 ]
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.ast_vhub_ep, ptr %40, i32 0, i32 7, i32 0, i32 4, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = and i8 %44, -13
  store i8 %48, ptr %43, align 4
  tail call void @ast_vhub_update_epn_stall(ptr noundef nonnull %40) #5
  %49 = load i32, ptr %30, align 8
  br label %50

50:                                               ; preds = %47, %42, %35
  %51 = phi i32 [ %36, %42 ], [ %49, %47 ], [ %36, %35 ]
  %52 = add nuw i32 %37, 1
  %53 = icmp ult i32 %52, %51
  br i1 %53, label %35, label %54

54:                                               ; preds = %50, %6
  %55 = load i8, ptr %2, align 4
  %56 = and i8 %55, -7
  %57 = or i8 %56, 4
  store i8 %57, ptr %2, align 4
  br label %58

58:                                               ; preds = %54, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_del_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ast_vhub, ptr %2, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.ast_vhub, ptr %10, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %4) #5
  br label %21

12:                                               ; preds = %1
  %13 = and i8 %6, -2
  store i8 %13, ptr %5, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.ast_vhub, ptr %14, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %4) #5
  %16 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 5
  tail call void @usb_del_gadget_udc(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  tail call void @device_unregister(ptr noundef %18) #5
  %19 = getelementptr inbounds %struct.ast_vhub_dev, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_init_dev(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 2
  store i32 %1, ptr %8, align 8
  %9 = add i32 %1, 1
  %10 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %7, i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %9) #5
  %11 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 3
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  %15 = shl i32 %1, 4
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 8
  tail call void @ast_vhub_init_ep0(ptr noundef %0, ptr noundef %18, ptr noundef %5) #5
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 30)
  %22 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 10
  store i32 %21, ptr %22, align 8
  %23 = shl nuw nsw i32 %21, 2
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #6
  %25 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 9
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %82, label %27

27:                                               ; preds = %2
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 472) #7
  %30 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 4
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %79, label %32

32:                                               ; preds = %27
  tail call void @device_initialize(ptr noundef nonnull %29) #5
  %33 = load ptr, ptr %30, align 8
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 33
  store ptr @ast_vhub_dev_release, ptr %34, align 4
  %35 = load ptr, ptr %30, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  store ptr %7, ptr %36, align 4
  %37 = load ptr, ptr %30, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi ptr [ %42, %41 ], [ %39, %32 ]
  %45 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef %44, i32 noundef %9) #5
  %46 = load ptr, ptr %30, align 8
  %47 = tail call i32 @device_add(ptr noundef %46) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5
  %51 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 4
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 4, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 2
  store ptr @ast_vhub_udc_ops, ptr %53, align 4
  %54 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 3
  store ptr %18, ptr %54, align 8
  %55 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 10
  store ptr @.str.2, ptr %55, align 8
  %56 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i32 3, i32 2
  %61 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 6
  store i32 %60, ptr %61, align 8
  %62 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 5
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 25
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 5, i32 11, i32 25
  store ptr %65, ptr %66, align 8
  %67 = load ptr, ptr %30, align 8
  %68 = tail call i32 @usb_add_gadget_udc(ptr noundef %67, ptr noundef %50) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %49
  %71 = getelementptr %struct.ast_vhub_port, ptr %4, i32 %1, i32 2, i32 7
  %72 = load i8, ptr %71, align 4
  %73 = or i8 %72, 1
  store i8 %73, ptr %71, align 4
  br label %82

74:                                               ; preds = %49
  %75 = load ptr, ptr %30, align 8
  tail call void @device_del(ptr noundef %75) #5
  br label %76

76:                                               ; preds = %74, %43
  %77 = phi i32 [ %47, %43 ], [ %68, %74 ]
  %78 = load ptr, ptr %30, align 8
  tail call void @put_device(ptr noundef %78) #5
  br label %79

79:                                               ; preds = %76, %27
  %80 = phi i32 [ %77, %76 ], [ -12, %27 ]
  %81 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %81) #5
  br label %82

82:                                               ; preds = %79, %70, %2
  %83 = phi i32 [ %80, %79 ], [ 0, %70 ], [ -12, %2 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_init_ep0(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ast_vhub_dev_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_update_epn_stall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_reset_ep0(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_get_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 2047
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr i8, ptr %0, i32 572
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  tail call void @ast_vhub_hub_wake_all(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ 0, %10 ], [ -22, %1 ]
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.ast_vhub, ptr %14, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %5) #5
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_pullup(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %1, 0
  tail call void @ast_vhub_device_connect(ptr noundef %7, i32 noundef %9, i1 noundef zeroext %10) #5
  %11 = getelementptr i8, ptr %0, i32 572
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %0, i32 744
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 740
  br label %21

21:                                               ; preds = %30, %19
  %22 = phi i32 [ %17, %19 ], [ %31, %30 ]
  %23 = phi i32 [ 0, %19 ], [ %32, %30 ]
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr ptr, ptr %24, i32 %23
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  tail call void @ast_vhub_nuke(ptr noundef nonnull %26, i32 noundef -108) #5
  %29 = load i32, ptr %16, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %22, %21 ], [ %29, %28 ]
  %32 = add nuw i32 %23, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %21, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %11, align 4
  %36 = and i8 %35, 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %34, %15
  %39 = load i32, ptr %8, align 8
  %40 = shl i32 512, %39
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.ast_vhub, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %46 = xor i32 %40, -1
  %47 = and i32 %45, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.ast_vhub, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %52 = getelementptr i8, ptr %0, i32 -20
  %53 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #5, !srcloc !11
  %54 = getelementptr i8, ptr %0, i32 36
  store i32 0, ptr %54, align 4
  %55 = load i8, ptr %11, align 4
  %56 = and i8 %55, -5
  store i8 %56, ptr %11, align 4
  br label %57

57:                                               ; preds = %38, %34, %2
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.ast_vhub, ptr %58, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %6) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_start(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr i8, ptr %0, i32 568
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 8192
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.ast_vhub, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %6) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ast_vhub_udc_stop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ast_vhub, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr i8, ptr %0, i32 568
  store ptr null, ptr %6, align 8
  %7 = getelementptr %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 0, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 744
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 740
  br label %13

13:                                               ; preds = %22, %11
  %14 = phi i32 [ %9, %11 ], [ %23, %22 ]
  %15 = phi i32 [ 0, %11 ], [ %24, %22 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr ptr, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  tail call void @ast_vhub_nuke(ptr noundef nonnull %18, i32 noundef -108) #5
  %21 = load i32, ptr %8, align 8
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %14, %13 ], [ %21, %20 ]
  %24 = add nuw i32 %15, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %13, label %26

26:                                               ; preds = %22, %1
  %27 = getelementptr i8, ptr %0, i32 572
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 -16
  %33 = load i32, ptr %32, align 8
  %34 = shl i32 512, %33
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.ast_vhub, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %40 = xor i32 %34, -1
  %41 = and i32 %39, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.ast_vhub, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %46 = getelementptr i8, ptr %0, i32 -20
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #5, !srcloc !11
  store i32 0, ptr %7, align 4
  %48 = load i8, ptr %27, align 4
  %49 = and i8 %48, -5
  store i8 %49, ptr %27, align 4
  br label %50

50:                                               ; preds = %31, %26
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.ast_vhub, ptr %51, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ast_vhub_udc_match_ep(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -12
  %12 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %0, ptr noundef %11, ptr noundef %1, ptr noundef %2) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %61

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 3
  %18 = zext i8 %17 to i32
  switch i32 %18, label %34 [
    i32 0, label %61
    i32 1, label %19
    i32 2, label %24
    i32 3, label %29
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, 3
  %23 = select i1 %22, i32 1023, i32 1024
  br label %35

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = icmp ult i32 %26, 3
  %28 = select i1 %27, i32 64, i32 512
  br label %35

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 8
  %32 = icmp ult i32 %31, 3
  %33 = select i1 %32, i32 64, i32 1024
  br label %35

34:                                               ; preds = %14
  unreachable

35:                                               ; preds = %29, %24, %19
  %36 = phi i32 [ %23, %19 ], [ %28, %24 ], [ %33, %29 ]
  %37 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 1
  %39 = and i16 %38, 2047
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %61, label %42

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %0, i32 744
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %0, i32 740
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %54, %46
  %50 = phi i32 [ 0, %46 ], [ %55, %54 ]
  %51 = getelementptr ptr, ptr %48, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = add nuw i32 %50, 1
  %56 = icmp eq i32 %55, %44
  br i1 %56, label %61, label %49

57:                                               ; preds = %49
  %58 = trunc i32 %50 to i8
  %59 = add i8 %58, 1
  %60 = tail call ptr @ast_vhub_alloc_epn(ptr noundef %4, i8 noundef zeroext %59) #5
  br label %61

61:                                               ; preds = %57, %54, %42, %35, %14, %10
  %62 = phi ptr [ null, %14 ], [ null, %35 ], [ %60, %57 ], [ null, %42 ], [ null, %54 ], [ %11, %10 ]
  ret ptr %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_hub_wake_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_device_connect(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_nuke(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_vhub_alloc_epn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 3841188}
!9 = !{i64 2153473653}
!10 = !{i64 2153473842}
!11 = !{i64 3840770}
!12 = !{i64 2153479049}
!13 = !{i64 2153479266}
!14 = !{i64 2153476782}
!15 = !{i64 2153477674}
!16 = !{i64 2148938575}
!17 = !{i64 2148934399}
!18 = !{i64 2148934474, i64 2148934501, i64 2148934548, i64 2148934570, i64 2148934598, i64 2148934618}
!19 = !{i64 2148961578}
!20 = !{i64 2153475782}
!21 = !{i64 2153475975}
!22 = !{i64 2153476292}
!23 = !{i64 2153474231}
!24 = !{i64 2153474734}
!25 = !{i64 2153474927}
!26 = !{i64 2153475257}
!27 = !{i64 2153483574}
