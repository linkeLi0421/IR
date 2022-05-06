; ModuleID = '/llk/IR/drivers/usb/gadget/udc/aspeed-vhub/hub.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/aspeed-vhub/hub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.ast_vhub_full_cdesc = type { %struct.usb_config_descriptor, %struct.usb_interface_descriptor, %struct.usb_endpoint_descriptor }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.64 }>
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { [4 x i8], [4 x i8] }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.usb_string = type { i8, ptr }
%struct.ast_vhub_ep = type { %struct.usb_ep, %struct.list_head, i32, ptr, ptr, ptr, i32, %union.anon }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, i32, i8, %struct.ast_vhub_req }
%struct.ast_vhub_req = type { %struct.usb_request, %struct.list_head, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ast_vhub = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, ptr, ptr, i32, %struct.ast_vhub_ep, i8, ptr, i32, i32, ptr, i32, i8, i32, %struct.usb_device_descriptor, %struct.ast_vhub_full_cdesc, %struct.usb_hub_descriptor, %struct.list_head, %struct.usb_qualifier_descriptor }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget_string_container = type { %struct.list_head, [0 x ptr] }
%struct.usb_string_descriptor = type { i8, i8, [1 x i16] }
%struct.ast_vhub_port = type { i16, i16, %struct.ast_vhub_dev }
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
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ast_vhub_dev_desc = internal unnamed_addr constant %struct.usb_device_descriptor { i8 18, i8 1, i16 512, i8 9, i8 0, i8 1, i8 64, i16 7531, i16 263, i16 256, i8 3, i8 2, i8 1, i8 1 }, align 1
@ast_vhub_conf_desc = internal unnamed_addr constant %struct.ast_vhub_full_cdesc { %struct.usb_config_descriptor <{ i8 9, i8 2, i16 25, i8 1, i8 1, i8 0, i8 -32, i8 0 }>, %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 9, i8 0, i8 0, i8 0 }, %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -127, i8 3, i16 1, i8 12, i8 0, i8 0 }> }, align 1
@ast_vhub_hub_desc = internal unnamed_addr constant %struct.usb_hub_descriptor <{ i8 9, i8 41, i8 5, i16 2, i8 10, i8 0, %union.anon.64 { %struct.anon.65 { [4 x i8] c"\00\FF\00\00", [4 x i8] zeroinitializer } } }>, align 1
@.str = private unnamed_addr constant [13 x i8] c"vhub-strings\00", align 1
@ast_vhub_qual_desc = internal unnamed_addr constant %struct.usb_qualifier_descriptor { i8 10, i8 6, i16 512, i8 9, i8 0, i8 0, i8 64, i8 1, i8 0 }, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"vhub-vendor-id\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vhub-product-id\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"vhub-device-revision\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"serial-number\00", align 1
@ast_vhub_str_array = internal unnamed_addr constant [4 x %struct.usb_string] [%struct.usb_string { i8 1, ptr @.str.8 }, %struct.usb_string { i8 2, ptr @.str.9 }, %struct.usb_string { i8 3, ptr @.str.10 }, %struct.usb_string zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"USB Virtual Hub\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Aspeed\00", align 1
@switch.table.ast_vhub_class_hub_request = private unnamed_addr constant [3 x i16] [i16 514, i16 2, i16 1026], align 2
@switch.table.ast_vhub_class_hub_request.11 = private unnamed_addr constant [3 x i16] [i16 -1041, i16 -1553, i16 -529], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_std_hub_request(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = and i32 %18, 134217728
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2, i32 3
  store i32 %21, ptr %11, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i8, ptr %1, align 1
  %24 = zext i8 %23 to i16
  %25 = shl nuw i16 %24, 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = or i16 %25, %28
  switch i16 %29, label %157 [
    i16 5, label %30
    i16 -32768, label %35
    i16 -32512, label %43
    i16 -32256, label %45
    i16 3, label %56
    i16 1, label %74
    i16 515, label %92
    i16 513, label %114
    i16 -32760, label %137
    i16 9, label %139
    i16 -32762, label %142
    i16 -32758, label %150
    i16 11, label %152
  ]

30:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %31 = zext i16 %6 to i32
  %32 = getelementptr inbounds %struct.ast_vhub, ptr %4, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #6, !srcloc !11
  br label %157

35:                                               ; preds = %22
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.ast_vhub, ptr %36, i32 0, i32 15
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 1, i32 3
  %42 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 2, i32 noundef %41, i32 noundef 0) #6
  br label %157

43:                                               ; preds = %22
  %44 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #6
  br label %157

45:                                               ; preds = %22
  %46 = trunc i16 %8 to i4
  switch i4 %46, label %157 [
    i4 1, label %47
    i4 0, label %53
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.ast_vhub, ptr %48, i32 0, i32 9
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi i32 [ %52, %47 ], [ 0, %45 ]
  %55 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 2, i32 noundef %54, i32 noundef 0) #6
  br label %157

56:                                               ; preds = %22
  switch i16 %6, label %157 [
    i16 1, label %57
    i16 2, label %62
  ]

57:                                               ; preds = %56
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.ast_vhub, ptr %58, i32 0, i32 15
  %60 = load i8, ptr %59, align 4
  %61 = or i8 %60, 2
  store i8 %61, ptr %59, align 4
  br label %157

62:                                               ; preds = %56
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.ast_vhub, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %67 = and i32 %66, -1793
  %68 = and i16 %8, 1792
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.ast_vhub, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %70) #6, !srcloc !11
  br label %157

74:                                               ; preds = %22
  switch i16 %6, label %157 [
    i16 1, label %75
    i16 2, label %80
  ]

75:                                               ; preds = %74
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.ast_vhub, ptr %76, i32 0, i32 15
  %78 = load i8, ptr %77, align 4
  %79 = and i8 %78, -3
  store i8 %79, ptr %77, align 4
  br label %157

80:                                               ; preds = %74
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr inbounds %struct.ast_vhub, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %85 = and i32 %84, -1793
  %86 = and i16 %8, 1792
  %87 = zext i16 %86 to i32
  %88 = or i32 %85, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr inbounds %struct.ast_vhub, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %88) #6, !srcloc !11
  br label %157

92:                                               ; preds = %22
  %93 = and i16 %8, 15
  %94 = icmp ult i16 %93, 2
  %95 = icmp eq i16 %6, 0
  %96 = and i1 %95, %94
  br i1 %96, label %97, label %157

97:                                               ; preds = %92
  %98 = icmp eq i16 %93, 0
  br i1 %98, label %157, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr %3, align 4
  %101 = getelementptr inbounds %struct.ast_vhub, ptr %100, i32 0, i32 9
  %102 = load i8, ptr %101, align 4
  %103 = or i8 %102, 1
  store i8 %103, ptr %101, align 4
  %104 = load ptr, ptr %3, align 4
  %105 = getelementptr inbounds %struct.ast_vhub, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 56
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %109 = or i32 %108, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %110 = load ptr, ptr %3, align 4
  %111 = getelementptr inbounds %struct.ast_vhub, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %109) #6, !srcloc !11
  br label %157

114:                                              ; preds = %22
  %115 = and i16 %8, 15
  %116 = icmp ult i16 %115, 2
  %117 = icmp eq i16 %6, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %157

119:                                              ; preds = %114
  %120 = icmp eq i16 %115, 0
  br i1 %120, label %157, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr inbounds %struct.ast_vhub, ptr %122, i32 0, i32 9
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, -2
  store i8 %125, ptr %123, align 4
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr inbounds %struct.ast_vhub, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 56
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %131 = and i32 %130, -7
  %132 = or i32 %131, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %133 = load ptr, ptr %3, align 4
  %134 = getelementptr inbounds %struct.ast_vhub, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %132) #6, !srcloc !11
  br label %157

137:                                              ; preds = %22
  %138 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 1, i32 noundef 1) #6
  br label %157

139:                                              ; preds = %22
  %140 = icmp ne i16 %6, 1
  %141 = sext i1 %140 to i32
  br label %157

142:                                              ; preds = %22
  %143 = lshr i16 %6, 8
  %144 = trunc i16 %143 to i8
  switch i8 %144, label %157 [
    i8 1, label %145
    i8 2, label %145
    i8 6, label %145
    i8 7, label %145
    i8 3, label %147
  ]

145:                                              ; preds = %142, %142, %142, %142
  %146 = tail call fastcc i32 @ast_vhub_rep_desc(ptr noundef %0, i8 noundef zeroext %144, i16 noundef zeroext %10)
  br label %157

147:                                              ; preds = %142
  %148 = trunc i16 %6 to i8
  %149 = tail call fastcc i32 @ast_vhub_rep_string(ptr noundef %0, i8 noundef zeroext %148, i16 noundef zeroext %8, i16 noundef zeroext %10)
  br label %157

150:                                              ; preds = %22
  %151 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 1, i32 noundef 0) #6
  br label %157

152:                                              ; preds = %22
  %153 = icmp ne i16 %6, 0
  %154 = icmp ne i16 %8, 0
  %155 = select i1 %153, i1 true, i1 %154
  %156 = sext i1 %155 to i32
  br label %157

157:                                              ; preds = %152, %150, %147, %145, %142, %139, %137, %121, %119, %114, %99, %97, %92, %80, %75, %74, %62, %57, %56, %53, %45, %43, %35, %30, %22
  %158 = phi i32 [ %151, %150 ], [ %149, %147 ], [ %146, %145 ], [ %138, %137 ], [ %44, %43 ], [ %42, %35 ], [ 0, %30 ], [ %141, %139 ], [ -1, %142 ], [ %156, %152 ], [ -1, %22 ], [ %55, %53 ], [ -1, %45 ], [ 0, %57 ], [ 0, %62 ], [ -1, %56 ], [ 0, %75 ], [ 0, %80 ], [ -1, %74 ], [ 0, %99 ], [ -1, %92 ], [ 0, %97 ], [ 0, %121 ], [ -1, %114 ], [ 0, %119 ]
  ret i32 %158
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ast_vhub_simple_reply(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_rep_desc(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  switch i8 %1, label %32 [
    i8 1, label %6
    i8 7, label %10
    i8 2, label %10
    i8 41, label %16
    i8 6, label %20
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %8, ptr noundef align 4 dereferenceable(18) %9, i32 18, i1 false)
  br label %24

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(25) %12, ptr noundef align 2 dereferenceable(25) %13, i32 25, i1 false)
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 1
  store i8 %1, ptr %15, align 1
  br label %24

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %18, ptr noundef align 1 dereferenceable(9) %19, i32 9, i1 false)
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ast_vhub, ptr %5, i32 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %22, ptr noundef align 4 dereferenceable(10) %23, i32 10, i1 false)
  br label %24

24:                                               ; preds = %20, %16, %10, %6
  %25 = phi i32 [ 10, %20 ], [ 9, %16 ], [ 25, %10 ], [ 18, %6 ]
  %26 = zext i16 %2 to i32
  %27 = icmp ult i32 %25, %26
  %28 = trunc i32 %25 to i16
  %29 = select i1 %27, i16 %28, i16 %2
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @ast_vhub_reply(ptr noundef %0, ptr noundef null, i32 noundef %30) #6
  br label %32

32:                                               ; preds = %24, %3
  %33 = phi i32 [ %31, %24 ], [ -1, %3 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ast_vhub_rep_string(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %5, i8 0, i32 256, i1 false), !annotation !16
  %6 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = icmp eq i8 %1, 0
  %10 = getelementptr inbounds %struct.ast_vhub, ptr %7, i32 0, i32 20
  br i1 %9, label %11, label %32

11:                                               ; preds = %4
  %12 = load ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %28, label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %21, %14 ], [ %12, %11 ]
  %16 = phi i32 [ %19, %14 ], [ 0, %11 ]
  %17 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %15, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = add nuw nsw i32 %16, 1
  %20 = getelementptr %struct.usb_string_descriptor, ptr %5, i32 0, i32 2, i32 %16
  store i16 %18, ptr %20, align 1
  %21 = load ptr, ptr %15, align 4
  %22 = icmp eq ptr %21, %10
  %23 = icmp ugt i32 %16, 125
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %14

25:                                               ; preds = %14
  %26 = shl nuw nsw i32 %19, 1
  %27 = add nuw nsw i32 %26, 2
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i32 [ 2, %11 ], [ %27, %25 ]
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %5, align 1
  %31 = getelementptr inbounds %struct.usb_string_descriptor, ptr %5, i32 0, i32 1
  store i8 3, ptr %31, align 1
  br label %44

32:                                               ; preds = %36, %4
  %33 = phi ptr [ %34, %36 ], [ %10, %4 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %10
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %34, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, %2
  br i1 %39, label %40, label %32

40:                                               ; preds = %36
  %41 = icmp eq ptr %37, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %40
  %43 = call i32 @usb_gadget_get_string(ptr noundef nonnull %37, i32 noundef %8, ptr noundef nonnull %5) #6
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi i32 [ %29, %28 ], [ %43, %42 ]
  %46 = icmp ugt i32 %45, 63
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr nonnull align 1 %5, i32 %45, i1 false)
  %50 = zext i16 %3 to i32
  %51 = call i32 @llvm.umin.i32(i32 %45, i32 %50)
  %52 = call i32 @ast_vhub_reply(ptr noundef %0, ptr noundef null, i32 noundef %51) #6
  br label %53

53:                                               ; preds = %47, %44, %40, %32
  %54 = phi i32 [ %52, %47 ], [ -1, %40 ], [ -1, %44 ], [ -1, %32 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #6
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_device_connect(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.ast_vhub_port, ptr %5, i32 %1
  %7 = load i16, ptr %6, align 8
  br i1 %2, label %8, label %29

8:                                                ; preds = %3
  %9 = or i16 %7, 1
  store i16 %9, ptr %6, align 8
  %10 = xor i16 %9, %7
  %11 = and i16 %10, 63
  %12 = getelementptr %struct.ast_vhub_port, ptr %5, i32 %1, i32 1
  store i16 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %17 = add i32 %1, 1
  %18 = shl nuw i32 1, %17
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr %struct.ast_vhub_port, ptr %19, i32 %1, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  %23 = or i32 %16, %18
  %24 = xor i32 %18, -1
  %25 = and i32 %16, %24
  %26 = select i1 %22, i32 %25, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !11
  br label %49

29:                                               ; preds = %3
  %30 = and i16 %7, -4
  store i16 %30, ptr %6, align 8
  %31 = and i16 %7, 3
  %32 = getelementptr %struct.ast_vhub_port, ptr %5, i32 %1, i32 1
  store i16 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 60
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %37 = add i32 %1, 1
  %38 = shl nuw i32 1, %37
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr %struct.ast_vhub_port, ptr %39, i32 %1, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 0
  %43 = or i32 %36, %38
  %44 = xor i32 %38, -1
  %45 = and i32 %36, %44
  %46 = select i1 %42, i32 %45, i32 %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr i8, ptr %47, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #6, !srcloc !11
  br label %49

49:                                               ; preds = %29, %8
  %50 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %58 = or i32 %57, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #6, !srcloc !11
  br label %60

60:                                               ; preds = %54, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_wake_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_class_hub_request(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %4 = load i16, ptr %3, align 1
  %5 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %8 = load i16, ptr %7, align 1
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = or i16 %11, %14
  switch i16 %15, label %216 [
    i16 -24576, label %16
    i16 -23808, label %18
    i16 -24570, label %46
    i16 8195, label %57
    i16 8193, label %57
    i16 8963, label %60
    i16 8961, label %160
    i16 8968, label %217
    i16 8969, label %217
    i16 8971, label %217
    i16 -23798, label %214
  ]

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %217

18:                                               ; preds = %2
  %19 = trunc i16 %6 to i8
  %20 = and i8 %19, 15
  %21 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %217, label %24

24:                                               ; preds = %18
  %25 = zext i8 %20 to i32
  %26 = getelementptr inbounds %struct.ast_vhub, ptr %22, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %25
  br i1 %28, label %217, label %29

29:                                               ; preds = %24
  %30 = add nsw i8 %20, -1
  %31 = getelementptr inbounds %struct.ast_vhub, ptr %22, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = zext i8 %30 to i32
  %34 = getelementptr %struct.ast_vhub_port, ptr %32, i32 %33
  %35 = load i16, ptr %34, align 8
  %36 = getelementptr %struct.ast_vhub_port, ptr %32, i32 %33, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = or i16 %35, 256
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 255
  %41 = lshr i32 %39, 8
  %42 = zext i16 %37 to i32
  %43 = and i32 %42, 255
  %44 = lshr i32 %42, 8
  %45 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 4, i32 noundef %40, i32 noundef %41, i32 noundef %43, i32 noundef %44) #6
  br label %217

46:                                               ; preds = %2
  %47 = icmp eq i16 %4, 10496
  br i1 %47, label %48, label %217

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ast_vhub, ptr %50, i32 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %52, ptr noundef align 1 dereferenceable(9) %53, i32 9, i1 false) #6
  %54 = tail call i16 @llvm.umin.i16(i16 %8, i16 9)
  %55 = zext i16 %54 to i32
  %56 = tail call i32 @ast_vhub_reply(ptr noundef %0, ptr noundef null, i32 noundef %55) #6
  br label %217

57:                                               ; preds = %2, %2
  %58 = icmp ugt i16 %4, 1
  %59 = sext i1 %58 to i32
  br label %217

60:                                               ; preds = %2
  %61 = trunc i16 %6 to i8
  %62 = and i8 %61, 15
  %63 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq i8 %62, 0
  br i1 %65, label %217, label %66

66:                                               ; preds = %60
  %67 = zext i8 %62 to i32
  %68 = getelementptr inbounds %struct.ast_vhub, ptr %64, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %69, %67
  br i1 %70, label %217, label %71

71:                                               ; preds = %66
  %72 = add nsw i8 %62, -1
  %73 = getelementptr inbounds %struct.ast_vhub, ptr %64, i32 0, i32 10
  %74 = load ptr, ptr %73, align 4
  %75 = zext i8 %72 to i32
  %76 = getelementptr %struct.ast_vhub_port, ptr %74, i32 %75
  switch i16 %4, label %159 [
    i16 2, label %77
    i16 4, label %84
    i16 8, label %136
    i16 21, label %217
    i16 22, label %217
  ]

77:                                               ; preds = %71
  %78 = load i16, ptr %76, align 8
  %79 = and i16 %78, 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %217, label %81

81:                                               ; preds = %77
  %82 = or i16 %78, 4
  store i16 %82, ptr %76, align 8
  %83 = getelementptr %struct.ast_vhub_port, ptr %74, i32 %75, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %83) #6
  br label %217

84:                                               ; preds = %71
  %85 = load i16, ptr %76, align 8
  %86 = and i16 %85, -23
  %87 = or i16 %86, 16
  store i16 %87, ptr %76, align 8
  %88 = getelementptr %struct.ast_vhub_port, ptr %74, i32 %75, i32 2, i32 6
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %217, label %91

91:                                               ; preds = %84
  %92 = getelementptr %struct.ast_vhub_port, ptr %74, i32 %75, i32 2
  tail call void @ast_vhub_dev_reset(ptr noundef %92) #6
  %93 = load ptr, ptr %88, align 8
  %94 = getelementptr inbounds %struct.usb_gadget_driver, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.ast_vhub, ptr %64, i32 0, i32 16
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %96, %99
  %101 = select i1 %97, i1 true, i1 %100
  %102 = select i1 %101, i32 %99, i32 %95
  %103 = trunc i32 %102 to i16
  %104 = add i16 %103, -1
  %105 = icmp ult i16 %104, 3
  br i1 %105, label %106, label %217

106:                                              ; preds = %91
  %107 = sext i16 %104 to i32
  %108 = getelementptr inbounds [3 x i16], ptr @switch.table.ast_vhub_class_hub_request, i32 0, i32 %107
  %109 = load i16, ptr %108, align 2
  %110 = sext i16 %104 to i32
  %111 = getelementptr inbounds [3 x i16], ptr @switch.table.ast_vhub_class_hub_request.11, i32 0, i32 %110
  %112 = load i16, ptr %111, align 2
  %113 = load ptr, ptr %73, align 4
  %114 = getelementptr %struct.ast_vhub_port, ptr %113, i32 %75
  %115 = load i16, ptr %114, align 8
  %116 = and i16 %115, %112
  %117 = or i16 %116, %109
  store i16 %117, ptr %114, align 8
  %118 = xor i16 %116, %115
  %119 = and i16 %118, 61
  %120 = getelementptr %struct.ast_vhub_port, ptr %113, i32 %75, i32 1
  store i16 %119, ptr %120, align 2
  %121 = getelementptr inbounds %struct.ast_vhub, ptr %64, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 60
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %125 = shl nuw nsw i32 2, %75
  %126 = load ptr, ptr %73, align 4
  %127 = getelementptr %struct.ast_vhub_port, ptr %126, i32 %75, i32 1
  %128 = load i16, ptr %127, align 2
  %129 = icmp eq i16 %128, 0
  %130 = or i32 %124, %125
  %131 = xor i32 %125, -1
  %132 = and i32 %124, %131
  %133 = select i1 %129, i32 %132, i32 %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %134 = load ptr, ptr %121, align 4
  %135 = getelementptr i8, ptr %134, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #6, !srcloc !11
  br label %217

136:                                              ; preds = %71
  %137 = load i16, ptr %76, align 8
  %138 = and i16 %137, 1
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %217, label %140

140:                                              ; preds = %136
  %141 = getelementptr %struct.ast_vhub_port, ptr %74, i32 %75, i32 1
  %142 = load i16, ptr %141, align 2
  %143 = or i16 %142, 1
  store i16 %143, ptr %141, align 2
  %144 = getelementptr inbounds %struct.ast_vhub, ptr %64, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %145, i32 60
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %148 = shl nuw nsw i32 2, %75
  %149 = load ptr, ptr %73, align 4
  %150 = getelementptr %struct.ast_vhub_port, ptr %149, i32 %75, i32 1
  %151 = load i16, ptr %150, align 2
  %152 = icmp eq i16 %151, 0
  %153 = or i32 %147, %148
  %154 = xor i32 %148, -1
  %155 = and i32 %147, %154
  %156 = select i1 %152, i32 %155, i32 %153
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %157 = load ptr, ptr %144, align 4
  %158 = getelementptr i8, ptr %157, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #6, !srcloc !11
  br label %217

159:                                              ; preds = %71
  br label %217

160:                                              ; preds = %2
  %161 = trunc i16 %6 to i8
  %162 = and i8 %161, 15
  %163 = getelementptr inbounds %struct.ast_vhub_ep, ptr %0, i32 0, i32 4
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq i8 %162, 0
  br i1 %165, label %217, label %166

166:                                              ; preds = %160
  %167 = zext i8 %162 to i32
  %168 = getelementptr inbounds %struct.ast_vhub, ptr %164, i32 0, i32 11
  %169 = load i32, ptr %168, align 4
  %170 = icmp ult i32 %169, %167
  br i1 %170, label %217, label %171

171:                                              ; preds = %166
  %172 = add nsw i8 %162, -1
  %173 = getelementptr inbounds %struct.ast_vhub, ptr %164, i32 0, i32 10
  %174 = load ptr, ptr %173, align 4
  %175 = zext i8 %172 to i32
  switch i16 %4, label %213 [
    i16 1, label %176
    i16 2, label %181
    i16 8, label %217
    i16 22, label %217
    i16 16, label %189
    i16 17, label %189
    i16 18, label %189
    i16 19, label %189
    i16 20, label %189
  ]

176:                                              ; preds = %171
  %177 = getelementptr %struct.ast_vhub_port, ptr %174, i32 %175
  %178 = load i16, ptr %177, align 8
  %179 = and i16 %178, -7
  store i16 %179, ptr %177, align 8
  %180 = getelementptr %struct.ast_vhub_port, ptr %174, i32 %175, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %180) #6
  br label %217

181:                                              ; preds = %171
  %182 = getelementptr %struct.ast_vhub_port, ptr %174, i32 %175
  %183 = load i16, ptr %182, align 8
  %184 = and i16 %183, 4
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %217, label %186

186:                                              ; preds = %181
  %187 = and i16 %183, -5
  store i16 %187, ptr %182, align 8
  %188 = getelementptr %struct.ast_vhub_port, ptr %174, i32 %175, i32 2
  tail call void @ast_vhub_dev_resume(ptr noundef %188) #6
  br label %217

189:                                              ; preds = %171, %171, %171, %171, %171
  %190 = zext i16 %4 to i32
  %191 = add nsw i32 %190, -16
  %192 = shl nuw nsw i32 1, %191
  %193 = getelementptr %struct.ast_vhub_port, ptr %174, i32 %175, i32 1
  %194 = load i16, ptr %193, align 2
  %195 = trunc i32 %192 to i16
  %196 = xor i16 %195, -1
  %197 = and i16 %194, %196
  store i16 %197, ptr %193, align 2
  %198 = getelementptr inbounds %struct.ast_vhub, ptr %164, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr i8, ptr %199, i32 60
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %202 = shl nuw nsw i32 2, %175
  %203 = load ptr, ptr %173, align 4
  %204 = getelementptr %struct.ast_vhub_port, ptr %203, i32 %175, i32 1
  %205 = load i16, ptr %204, align 2
  %206 = icmp eq i16 %205, 0
  %207 = or i32 %201, %202
  %208 = xor i32 %202, -1
  %209 = and i32 %201, %208
  %210 = select i1 %206, i32 %209, i32 %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %211 = load ptr, ptr %198, align 4
  %212 = getelementptr i8, ptr %211, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #6, !srcloc !11
  br label %217

213:                                              ; preds = %171
  br label %217

214:                                              ; preds = %2
  %215 = tail call i32 (ptr, i32, ...) @__ast_vhub_simple_reply(ptr noundef %0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %217

216:                                              ; preds = %2
  br label %217

217:                                              ; preds = %216, %214, %213, %189, %186, %181, %176, %171, %171, %166, %160, %159, %140, %136, %106, %91, %84, %81, %77, %71, %71, %66, %60, %57, %48, %46, %29, %24, %18, %16, %2, %2, %2
  %218 = phi i32 [ -1, %216 ], [ %215, %214 ], [ %56, %48 ], [ %17, %16 ], [ -1, %46 ], [ %59, %57 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ %45, %29 ], [ -1, %24 ], [ -1, %18 ], [ -1, %159 ], [ 0, %81 ], [ -1, %66 ], [ -1, %60 ], [ 0, %77 ], [ 0, %140 ], [ 0, %136 ], [ 0, %71 ], [ 0, %71 ], [ 0, %84 ], [ 0, %91 ], [ 0, %106 ], [ -1, %213 ], [ 0, %189 ], [ 0, %186 ], [ 0, %176 ], [ -1, %166 ], [ -1, %160 ], [ 0, %181 ], [ 0, %171 ], [ 0, %171 ]
  ret i32 %218
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_suspend(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = or i8 %3, 1
  store i8 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 10
  br label %13

13:                                               ; preds = %24, %11
  %14 = phi i32 [ %9, %11 ], [ %25, %24 ]
  %15 = phi i32 [ 0, %11 ], [ %26, %24 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %22) #6
  %23 = load i32, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i32 [ %23, %21 ], [ %14, %13 ]
  %26 = add nuw i32 %15, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %13, label %28

28:                                               ; preds = %24, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_resume(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = and i8 %3, -2
  store i8 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 10
  br label %13

13:                                               ; preds = %24, %11
  %14 = phi i32 [ %9, %11 ], [ %25, %24 ]
  %15 = phi i32 [ 0, %11 ], [ %26, %24 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15, i32 2
  tail call void @ast_vhub_dev_resume(ptr noundef %22) #6
  %23 = load i32, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i32 [ %23, %21 ], [ %14, %13 ]
  %26 = add nuw i32 %15, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %13, label %28

28:                                               ; preds = %24, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ast_vhub_hub_reset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %7 = load i8, ptr %6, align 4
  store i32 0, ptr %2, align 4
  %8 = and i8 %7, -4
  store i8 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 10
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %22, %14 ]
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 1
  store i16 %19, ptr %17, align 8
  %20 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr %struct.ast_vhub_port, ptr %16, i32 %15, i32 2
  tail call void @ast_vhub_dev_suspend(ptr noundef %21) #6
  %22 = add nuw i32 %15, 1
  %23 = load i32, ptr %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %14, label %25

25:                                               ; preds = %14, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %26 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 5) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #6, !srcloc !11
  br label %35

35:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ast_vhub_init_hub(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x %struct.usb_string], align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 16
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 4
  store i32 -32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 4, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 4, i32 2
  store ptr @ast_vhub_wake_work, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(18) %13, ptr noundef nonnull align 1 dereferenceable(18) @ast_vhub_dev_desc, i32 18, i1 false) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !16
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, ptr %4, align 4
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 17, i32 7
  store i16 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, ptr %4, align 4
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 17, i32 8
  store i16 %25, ptr %26, align 2
  br label %27

27:                                               ; preds = %23, %20
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, ptr %4, align 4
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 17, i32 9
  store i16 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %35 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 15
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 17, i32 2
  store i16 256, ptr %40, align 2
  %41 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 17, i32 5
  store i8 0, ptr %41, align 2
  br label %42

42:                                               ; preds = %39, %34
  %43 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(27) %43, ptr noundef nonnull align 1 dereferenceable(27) @ast_vhub_conf_desc, i32 27, i1 false) #6
  %44 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %44, ptr noundef nonnull align 1 dereferenceable(15) @ast_vhub_hub_desc, i32 15, i1 false) #6
  %45 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 19, i32 2
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 20
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 20, i32 1
  store ptr %49, ptr %50, align 4
  %51 = call ptr @of_get_child_by_name(ptr noundef %12, ptr noundef nonnull @.str) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %123, label %53

53:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #6, !annotation !16
  %54 = call ptr @of_get_next_child(ptr noundef nonnull %51, ptr noundef null) #6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %121, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds [4 x %struct.usb_string], ptr %3, i32 0, i32 0, i32 1
  br label %58

58:                                               ; preds = %118, %56
  %59 = phi ptr [ %54, %56 ], [ %119, %118 ]
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %118

62:                                               ; preds = %58
  %63 = load i32, ptr %2, align 4
  %64 = trunc i32 %63 to i16
  %65 = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %64) #6
  br i1 %65, label %66, label %118

66:                                               ; preds = %62
  %67 = load i32, ptr %2, align 4
  %68 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store ptr %68, ptr %57, align 4
  store i8 3, ptr %3, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ 1, %70 ], [ 0, %66 ]
  %73 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr [4 x %struct.usb_string], ptr %3, i32 0, i32 %72
  %77 = getelementptr [4 x %struct.usb_string], ptr %3, i32 0, i32 %72, i32 1
  store ptr %73, ptr %77, align 4
  store i8 2, ptr %76, align 4
  %78 = add nuw nsw i32 %72, 1
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %78, %75 ], [ %72, %71 ]
  %81 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr [4 x %struct.usb_string], ptr %3, i32 0, i32 %80
  %85 = getelementptr [4 x %struct.usb_string], ptr %3, i32 0, i32 %80, i32 1
  store ptr %81, ptr %85, align 4
  store i8 1, ptr %84, align 4
  %86 = add nuw nsw i32 %80, 1
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %86, %83 ], [ %80, %79 ]
  %89 = trunc i32 %67 to i16
  %90 = getelementptr [4 x %struct.usb_string], ptr %3, i32 0, i32 %88
  store i8 0, ptr %90, align 4
  %91 = getelementptr [4 x %struct.usb_string], ptr %3, i32 0, i32 %88, i32 1
  store ptr null, ptr %91, align 4
  %92 = load ptr, ptr %0, align 4
  %93 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3
  %94 = call noalias ptr @devm_kmalloc(ptr noundef %93, i32 noundef 48, i32 noundef 3520) #6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %87
  %97 = getelementptr %struct.usb_gadget_string_container, ptr %94, i32 2
  %98 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %94, i32 1, i32 0, i32 1
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %115, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %94, i32 0, i32 1
  store i16 %89, ptr %101, align 4
  %102 = icmp eq ptr %97, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %103, %100
  %104 = phi ptr [ %108, %103 ], [ %3, %100 ]
  %105 = phi ptr [ %107, %103 ], [ %97, %100 ]
  %106 = load i64, ptr %104, align 4
  store i64 %106, ptr %105, align 4
  %107 = getelementptr %struct.usb_string, ptr %105, i32 1
  %108 = getelementptr %struct.usb_string, ptr %104, i32 1
  %109 = getelementptr %struct.usb_string, ptr %104, i32 1, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %103

112:                                              ; preds = %103, %100
  %113 = load ptr, ptr %50, align 4
  store ptr %94, ptr %50, align 4
  store ptr %49, ptr %94, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %113, ptr %114, align 4
  store volatile ptr %94, ptr %113, align 4
  br label %118

115:                                              ; preds = %96, %87
  %116 = phi ptr [ %94, %96 ], [ inttoptr (i32 -12 to ptr), %87 ]
  %117 = ptrtoint ptr %116 to i32
  call void @of_node_put(ptr noundef nonnull %59) #6
  br label %121

118:                                              ; preds = %112, %62, %58
  %119 = call ptr @of_get_next_child(ptr noundef nonnull %51, ptr noundef nonnull %59) #6
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %58

121:                                              ; preds = %118, %115, %53
  %122 = phi i32 [ %117, %115 ], [ 0, %53 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %142

123:                                              ; preds = %42
  %124 = load ptr, ptr %0, align 4
  %125 = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  %126 = call noalias ptr @devm_kmalloc(ptr noundef %125, i32 noundef 48, i32 noundef 3520) #6
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = getelementptr %struct.usb_gadget_string_container, ptr %126, i32 2
  %130 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %126, i32 1, i32 0, i32 1
  store ptr %129, ptr %130, align 4
  %131 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %135

132:                                              ; preds = %128, %123
  %133 = phi ptr [ %126, %128 ], [ inttoptr (i32 -12 to ptr), %123 ]
  %134 = ptrtoint ptr %133 to i32
  br label %142

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.usb_gadget_string_container, ptr %126, i32 0, i32 1
  store i16 1033, ptr %136, align 4
  %137 = icmp eq ptr %129, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %129, ptr noundef nonnull align 4 dereferenceable(24) @ast_vhub_str_array, i32 24, i1 false) #6
  br label %139

139:                                              ; preds = %138, %135
  %140 = load ptr, ptr %50, align 4
  store ptr %126, ptr %50, align 4
  store ptr %49, ptr %126, align 4
  %141 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %140, ptr %141, align 4
  store volatile ptr %126, ptr %140, align 4
  br label %142

142:                                              ; preds = %139, %132, %121
  %143 = phi i32 [ %122, %121 ], [ %134, %132 ], [ 0, %139 ]
  %144 = getelementptr inbounds %struct.ast_vhub, ptr %0, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %144, ptr noundef nonnull align 1 dereferenceable(10) @ast_vhub_qual_desc, i32 10, i1 false) #6
  ret i32 %143
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ast_vhub_wake_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #6
  %4 = getelementptr i8, ptr %0, i32 200
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 196
  %9 = getelementptr i8, ptr %0, i32 -12
  br label %10

10:                                               ; preds = %37, %7
  %11 = phi i32 [ %5, %7 ], [ %38, %37 ]
  %12 = phi i32 [ 0, %7 ], [ %39, %37 ]
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.ast_vhub_port, ptr %13, i32 %12
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %10
  %19 = and i16 %15, -5
  store i16 %19, ptr %14, align 8
  %20 = getelementptr %struct.ast_vhub_port, ptr %13, i32 %12, i32 1
  store i16 %16, ptr %20, align 2
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 60
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %24 = shl i32 2, %12
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr %struct.ast_vhub_port, ptr %25, i32 %12, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  %29 = or i32 %23, %24
  %30 = xor i32 %24, -1
  %31 = and i32 %23, %30
  %32 = select i1 %28, i32 %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !11
  %35 = getelementptr %struct.ast_vhub_port, ptr %13, i32 %12, i32 2
  tail call void @ast_vhub_dev_resume(ptr noundef %35) #6
  %36 = load i32, ptr %4, align 4
  br label %37

37:                                               ; preds = %18, %10
  %38 = phi i32 [ %11, %10 ], [ %36, %18 ]
  %39 = add nuw i32 %12, 1
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %10, label %41

41:                                               ; preds = %37, %1
  %42 = getelementptr i8, ptr %0, i32 -12
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %45 = or i32 %44, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %46 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #6, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_vhub_reply(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_get_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_vhub_dev_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_validate_langid(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!8 = !{i64 3854355}
!9 = !{i64 2153511929}
!10 = !{i64 2153512242}
!11 = !{i64 3853937}
!12 = !{i64 2153488674}
!13 = !{i64 2153489567}
!14 = !{i64 2153490090}
!15 = !{i64 2153490311}
!16 = !{!"auto-init"}
!17 = !{i64 2153514106}
!18 = !{i64 2153514296}
!19 = !{i64 2153514836}
!20 = !{i64 2153515051}
!21 = !{i64 2153520216}
!22 = !{i64 2153520529}
!23 = !{i64 2153520878}
!24 = !{i64 2153521227}
