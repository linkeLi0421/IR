; ModuleID = '/llk/IR/drivers/usb/gadget/udc/bdc/bdc_udc.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_udc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
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
%struct.bdc_scratchpad = type { i32, ptr, i32 }
%struct.srr = type { ptr, i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, ptr, %struct.bd_transfer, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.bd_transfer = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdc_sr = type { [4 x i32] }

@bdc_gadget_ops = internal constant %struct.usb_gadget_ops { ptr null, ptr @bdc_udc_wakeup, ptr @bdc_udc_set_selfpowered, ptr null, ptr null, ptr @bdc_udc_pullup, ptr null, ptr null, ptr @bdc_udc_start, ptr @bdc_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"bdc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to request irq #%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bdc init ep fail: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to register udc\0A\00", align 1
@bdc_gadget_ep0_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 512, i8 0, i8 0, i8 0 }>, align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"fail to enable %s\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"UNDEFINED SPEED\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"EP0 config failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"can't wakeup from link state %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s is already bound to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s bdc run fail\0A\00", align 1
@__func__.bdc_udc_start = private unnamed_addr constant [14 x i8] c"bdc_udc_start\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Global irq pending but SRR IP is 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"SR:%d not handled\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"err in bdc reinit\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_sr_uspc(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %7 = and i32 %6, 134217728
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, -2105540608
  %11 = icmp eq i32 %10, -2147483648
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = and i32 %6, 8388623
  %14 = icmp eq i32 %13, 8388608
  br label %15

15:                                               ; preds = %12, %9, %2
  %16 = phi i32 [ 0, %2 ], [ 134217728, %9 ], [ 134217728, %12 ]
  %17 = phi i1 [ false, %2 ], [ false, %9 ], [ %14, %12 ]
  %18 = phi i1 [ false, %2 ], [ true, %9 ], [ false, %12 ]
  %19 = and i32 %6, -2113929216
  %20 = icmp eq i32 %19, -2113929216
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 19
  %23 = load i8, ptr %22, align 1, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @bdc_softconn(ptr noundef %0) #3
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef 2) #3
  br label %26

26:                                               ; preds = %25, %21
  %27 = or i32 %16, -2147483648
  br label %126

28:                                               ; preds = %15
  %29 = and i32 %6, 1090519040
  %30 = icmp ne i32 %29, 0
  %31 = or i1 %30, %18
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr ptr, ptr %34, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.bdc_ep, ptr %36, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @bdc_ep_disable(ptr noundef nonnull %36) #3
  br label %45

45:                                               ; preds = %43, %38, %32
  %46 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.usb_gadget_driver, ptr %47, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %55 = load i16, ptr %54, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %57 = load ptr, ptr %46, align 8
  %58 = getelementptr inbounds %struct.usb_gadget_driver, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %0) #3
  tail call void @_raw_spin_lock(ptr noundef %54) #3
  br label %60

60:                                               ; preds = %53, %49, %45
  %61 = zext i1 %18 to i8
  %62 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 16
  store i8 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 18
  store i8 %61, ptr %67, align 2
  %68 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 25
  store i8 0, ptr %68, align 8
  %69 = or i32 %16, 1073741824
  br label %126

70:                                               ; preds = %28
  %71 = and i32 %6, 75497472
  %72 = icmp eq i32 %71, 75497472
  br i1 %72, label %73, label %126

73:                                               ; preds = %70
  %74 = and i32 %6, 15
  switch i32 %74, label %124 [
    i32 3, label %75
    i32 0, label %95
    i32 15, label %112
  ]

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %124, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.usb_gadget_driver, ptr %81, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %124, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %87 = load i16, ptr %86, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %86, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %89 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, 131072
  store i32 %91, ptr %89, align 4
  %92 = load ptr, ptr %80, align 8
  %93 = getelementptr inbounds %struct.usb_gadget_driver, ptr %92, i32 0, i32 6
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %0) #3
  tail call void @_raw_spin_lock(ptr noundef %86) #3
  br label %124

95:                                               ; preds = %73
  %96 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 65536
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %95
  %101 = and i32 %97, -65537
  store i32 %101, ptr %96, align 4
  %102 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = tail call i32 @bdc_function_wake_fh(ptr noundef %0, i8 noundef zeroext 0) #3
  %107 = load i32, ptr %96, align 4
  %108 = or i32 %107, 262144
  store i32 %108, ptr %96, align 4
  %109 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 29
  %110 = load ptr, ptr @system_wq, align 4
  %111 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %110, ptr noundef %109, i32 noundef 250) #3
  br label %124

112:                                              ; preds = %73
  %113 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 131072
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.usb_gadget_driver, ptr %119, i32 0, i32 7
  %121 = load ptr, ptr %120, align 4
  tail call void %121(ptr noundef %0) #3
  %122 = load i32, ptr %113, align 4
  %123 = and i32 %122, -131073
  store i32 %123, ptr %113, align 4
  br label %124

124:                                              ; preds = %117, %112, %105, %100, %95, %85, %79, %75, %73
  %125 = or i32 %16, 67108864
  br label %126

126:                                              ; preds = %124, %70, %60, %26
  %127 = phi i32 [ %27, %26 ], [ %69, %60 ], [ %125, %124 ], [ %16, %70 ]
  br i1 %17, label %128, label %205

128:                                              ; preds = %126
  %129 = load ptr, ptr %3, align 4
  %130 = getelementptr i8, ptr %129, i32 32
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %132 = lshr i32 %131, 20
  %133 = and i32 %132, 7
  switch i32 %133, label %173 [
    i32 4, label %134
    i32 3, label %149
    i32 1, label %157
    i32 2, label %165
  ]

134:                                              ; preds = %128
  store i16 512, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %135 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.usb_ep, ptr %136, i32 0, i32 7
  %138 = load i56, ptr %137, align 2
  %139 = and i56 %138, -65536
  %140 = or i56 %139, 512
  store i56 %140, ptr %137, align 2
  %141 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 5, ptr %141, align 4
  %142 = load ptr, ptr %3, align 4
  %143 = getelementptr i8, ptr %142, i32 40
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %145 = and i32 %144, -131328
  %146 = or i32 %145, 131320
  %147 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %148 = getelementptr i8, ptr %147, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #3, !srcloc !16
  br label %176

149:                                              ; preds = %128
  store i16 64, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %150 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.usb_ep, ptr %151, i32 0, i32 7
  %153 = load i56, ptr %152, align 2
  %154 = and i56 %153, -65536
  %155 = or i56 %154, 64
  store i56 %155, ptr %152, align 2
  %156 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 3, ptr %156, align 4
  br label %176

157:                                              ; preds = %128
  store i16 64, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %158 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.usb_ep, ptr %159, i32 0, i32 7
  %161 = load i56, ptr %160, align 2
  %162 = and i56 %161, -65536
  %163 = or i56 %162, 64
  store i56 %163, ptr %160, align 2
  %164 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 2, ptr %164, align 4
  br label %176

165:                                              ; preds = %128
  store i16 8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bdc_gadget_ep0_desc, i32 0, i32 4), align 1
  %166 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.usb_ep, ptr %167, i32 0, i32 7
  %169 = load i56, ptr %168, align 2
  %170 = and i56 %169, -65536
  %171 = or i56 %170, 8
  store i56 %171, ptr %168, align 2
  %172 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 1, ptr %172, align 4
  br label %176

173:                                              ; preds = %128
  %174 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.5) #4
  br label %201

176:                                              ; preds = %165, %157, %149, %134
  %177 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr ptr, ptr %178, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.bdc_ep, ptr %180, i32 0, i32 7
  store ptr @bdc_gadget_ep0_desc, ptr %181, align 4
  %182 = load ptr, ptr %177, align 8
  %183 = getelementptr ptr, ptr %182, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = tail call i32 @bdc_config_ep(ptr noundef %0, ptr noundef %184) #3
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %189 = load ptr, ptr %188, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.6) #4
  br label %190

190:                                              ; preds = %187, %176
  %191 = load ptr, ptr %177, align 8
  %192 = getelementptr ptr, ptr %191, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.usb_ep, ptr %193, i32 0, i32 9
  store ptr @bdc_gadget_ep0_desc, ptr %194, align 4
  %195 = load ptr, ptr %177, align 8
  %196 = getelementptr ptr, ptr %195, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.bdc_ep, ptr %197, i32 0, i32 8
  %199 = load i32, ptr %198, align 4
  %200 = or i32 %199, 1
  store i32 %200, ptr %198, align 4
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef 5) #3
  br label %201

201:                                              ; preds = %190, %173
  %202 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, -131073
  store i32 %204, ptr %202, align 4
  br label %205

205:                                              ; preds = %201, %126
  %206 = load ptr, ptr %3, align 4
  %207 = getelementptr i8, ptr %206, i32 32
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %209 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %210 = getelementptr i8, ptr %209, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %127) #3, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_softconn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_udc_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  store ptr @bdc_gadget_ops, ptr %2, align 4
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -2
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 10
  store ptr @.str, ptr %11, align 8
  %12 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 21
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %13, ptr noundef nonnull @bdc_udc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %0) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %5, align 4
  %18 = load i32, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %14) #4
  br label %61

19:                                               ; preds = %1
  %20 = tail call i32 @bdc_init_ep(ptr noundef %0) #3
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %5, align 4
  br i1 %21, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.2, i32 noundef %20) #4
  br label %61

24:                                               ; preds = %19
  %25 = tail call i32 @usb_add_gadget_udc(ptr noundef %22, ptr noundef %0) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3) #4
  br label %59

29:                                               ; preds = %24
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef 0) #3
  %30 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr ptr, ptr %31, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.bdc_ep, ptr %33, i32 0, i32 7
  store ptr @bdc_gadget_ep0_desc, ptr %34, align 4
  %35 = load ptr, ptr %30, align 8
  %36 = getelementptr ptr, ptr %35, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @bdc_ep_enable(ptr noundef %37) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load ptr, ptr %5, align 4
  %42 = load ptr, ptr %30, align 8
  %43 = getelementptr ptr, ptr %42, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.bdc_ep, ptr %44, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.4, ptr noundef %45) #4
  tail call void @usb_del_gadget_udc(ptr noundef %0) #3
  br label %59

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 29
  store i32 -32, ptr %47, align 8
  %48 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 29, i32 0, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 29, i32 0, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 29, i32 0, i32 2
  store ptr @bdc_func_wake_timer, ptr %50, align 4
  %51 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 29, i32 1
  tail call void @init_timer_key(ptr noundef %51, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #3
  %52 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 64
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %56 = or i32 %55, 2
  %57 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %58 = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #3, !srcloc !16
  br label %61

59:                                               ; preds = %40, %27
  %60 = phi i32 [ %25, %27 ], [ %38, %40 ]
  tail call void @bdc_free_ep(ptr noundef %0) #3
  br label %61

61:                                               ; preds = %59, %46, %23, %16
  %62 = phi i32 [ %14, %16 ], [ %20, %23 ], [ %60, %59 ], [ 0, %46 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_udc_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %11 = load i16, ptr %3, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %89

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 520
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.10) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %22 = load i16, ptr %3, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %89

24:                                               ; preds = %13
  %25 = lshr i32 %16, 24
  %26 = lshr i32 %16, 16
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 11, i32 2
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %25, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 11
  %36 = getelementptr %struct.bdc, ptr %1, i32 0, i32 26, i32 1
  %37 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 26
  %38 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  br label %42

39:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %40 = load i16, ptr %3, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %89

42:                                               ; preds = %55, %34
  %43 = phi i32 [ %32, %34 ], [ %60, %55 ]
  %44 = load ptr, ptr %35, align 8
  %45 = getelementptr %struct.bdc_sr, ptr %44, i32 %43
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !17
  %46 = getelementptr [4 x i32], ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 15
  switch i32 %48, label %53 [
    i32 0, label %49
    i32 4, label %51
  ]

49:                                               ; preds = %42
  %50 = load ptr, ptr %37, align 4
  tail call void %50(ptr noundef %1, ptr noundef %45) #3
  br label %55

51:                                               ; preds = %42
  %52 = load ptr, ptr %36, align 4
  tail call void %52(ptr noundef %1, ptr noundef %45) #3
  br label %55

53:                                               ; preds = %42
  %54 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.11, i32 noundef %48) #4
  br label %55

55:                                               ; preds = %53, %51, %49
  %56 = load i16, ptr %30, align 2
  %57 = add i16 %56, 1
  %58 = icmp eq i16 %57, 64
  %59 = select i1 %58, i16 0, i16 %57
  store i16 %59, ptr %30, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %25, %60
  br i1 %61, label %62, label %42

62:                                               ; preds = %55, %29
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr i8, ptr %63, i32 520
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %66 = and i32 %65, -16711710
  %67 = load i16, ptr %30, align 2
  %68 = zext i16 %67 to i32
  %69 = shl nuw i32 %68, 16
  %70 = or i32 %66, %69
  %71 = or i32 %70, 1
  %72 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %73 = getelementptr i8, ptr %72, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #3, !srcloc !16
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr i8, ptr %74, i32 520
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %77 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 18
  %78 = load i8, ptr %77, align 2, !range !10
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %62
  %81 = tail call i32 @bdc_reinit(ptr noundef %1) #3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.bdc, ptr %1, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.12) #4
  br label %86

86:                                               ; preds = %83, %80, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %87 = load i16, ptr %3, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %89

89:                                               ; preds = %86, %39, %19, %10
  %90 = phi i32 [ 1, %39 ], [ 1, %86 ], [ 0, %19 ], [ 0, %10 ]
  ret i32 %90
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_init_ep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdc_func_wake_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -296
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 262144
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -872
  %10 = tail call i32 @bdc_function_wake_fh(ptr noundef %9, i8 noundef zeroext 0) #3
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %0, i32 noundef 250) #3
  br label %13

13:                                               ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_free_ep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_udc_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr ptr, ptr %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @bdc_ep_disable(ptr noundef %7) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  tail call void @usb_del_gadget_udc(ptr noundef %0) #3
  tail call void @bdc_free_ep(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_function_wake_fh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_config_ep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_udc_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #3
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %13) #4
  br label %33

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, ptr %2, align 4
  %24 = or i32 %23, 65536
  store i32 %24, ptr %2, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = and i32 %12, -416
  %27 = or i32 %26, 16
  %28 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %29 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #3, !srcloc !16
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  br label %33

33:                                               ; preds = %25, %15
  %34 = phi i32 [ -22, %15 ], [ 0, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #3
  br label %35

35:                                               ; preds = %33, %1
  %36 = phi i32 [ %34, %33 ], [ -95, %1 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_udc_set_selfpowered(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = select i1 %3, i32 0, i32 8192
  %7 = and i32 %5, -8193
  %8 = or i32 %7, %6
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #3
  %11 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -2
  %14 = zext i1 %3 to i32
  %15 = or i32 %13, %14
  store i32 %15, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_udc_pullup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @bdc_softdisconn(ptr noundef nonnull %0) #3
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 19
  store i8 0, ptr %9, align 1
  br label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 19
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %16 = and i32 %15, 33554432
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  tail call void @bdc_softconn(ptr noundef nonnull %0) #3
  br label %19

19:                                               ; preds = %18, %10, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #3
  br label %20

20:                                               ; preds = %19, %2
  %21 = phi i32 [ 0, %19 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_udc_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.usb_gadget_driver, ptr %6, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef %12, ptr noundef %14) #4
  br label %24

15:                                               ; preds = %2
  %16 = tail call i32 @bdc_run(ptr noundef %0) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.bdc_udc_start) #4
  br label %24

21:                                               ; preds = %15
  store ptr %1, ptr %5, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 6
  store ptr %22, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %18, %8
  %25 = phi i32 [ -16, %8 ], [ %16, %18 ], [ 0, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #3
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_udc_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #3
  %4 = tail call i32 @bdc_stop(ptr noundef %0) #3
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 1
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 6
  store ptr null, ptr %6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_softdisconn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3829321}
!9 = !{i64 2154164439}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148939911}
!12 = !{i64 2148935735}
!13 = !{i64 2148935810, i64 2148935837, i64 2148935884, i64 2148935906, i64 2148935934, i64 2148935954}
!14 = !{i64 2148962914}
!15 = !{i64 2154164791}
!16 = !{i64 3828903}
!17 = !{i64 2154184122}
