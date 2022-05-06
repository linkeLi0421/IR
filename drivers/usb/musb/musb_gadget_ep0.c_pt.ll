; ModuleID = '/llk/IR/drivers/usb/musb/musb_gadget_ep0.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_gadget_ep0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
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
%struct.musb_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, i8, i8, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [32 x i8] c"csr %04x, count %d, ep0stage %s\00", align 1
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013%s %d: SetupEnd came in a wrong ep0stage %s\0A\00", align 1
@__func__.musb_g_ep0_irq = private unnamed_addr constant [15 x i8] c"musb_g_ep0_irq\00", align 1
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"entering TESTMODE\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%s %d: SETUP packet len %d != 8 ?\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\015%s: peripheral reset irq lost!\0A\00", align 1
@musb_driver_name = external dso_local constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"handled %d, csr %04x, ep0stage %s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stall (%d)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"drivers/usb/musb/musb_gadget_ep0.c\00", align 1
@musb_g_ep0_ops = dso_local local_unnamed_addr constant %struct.usb_ep_ops { ptr @musb_g_ep0_enable, ptr @musb_g_ep0_disable, ptr null, ptr @musb_alloc_request, ptr @musb_free_request, ptr @musb_g_ep0_queue, ptr @musb_g_ep0_dequeue, ptr @musb_g_ep0_halt, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"in/status\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"out/status\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"odd; csr0 %04x\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"SETUP req%02x.%02x v%04x i%04x l%d\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"restarting the request\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"HNP: Setting HR\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"ep0 request queued in state %d\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"queue to %s (%s), length=%d\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"IN/TX\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"OUT/RX\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"ep0 can't halt in state %d\00", align 1
@switch.table.musb_g_ep0_irq = private unnamed_addr constant [7 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.12], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_g_ep0_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.usb_ctrlrequest, align 8
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %5, i8 noundef zeroext 0) #7
  %11 = load ptr, ptr @musb_readw, align 4
  %12 = tail call zeroext i16 %11(ptr noundef %8, i32 noundef 2) #7
  %13 = load ptr, ptr @musb_readb, align 4
  %14 = tail call zeroext i8 %13(ptr noundef %8, i32 noundef 8) #7
  %15 = zext i16 %12 to i32
  %16 = zext i8 %14 to i32
  %17 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 51
  %18 = load i8, ptr %17, align 4
  %19 = icmp ult i8 %18, 7
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = sext i8 %18 to i32
  %22 = getelementptr inbounds [7 x ptr], ptr @switch.table.musb_g_ep0_irq, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = phi ptr [ %23, %20 ], [ @.str.15, %1 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %16, ptr noundef nonnull %25) #7
  %26 = and i32 %15, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %494

28:                                               ; preds = %24
  %29 = and i32 %15, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @musb_writew, align 4
  %33 = and i16 %12, -5
  tail call void %32(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %33) #7
  store i8 0, ptr %17, align 4
  %34 = load ptr, ptr @musb_readw, align 4
  %35 = tail call zeroext i16 %34(ptr noundef %8, i32 noundef 2) #7
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i32 [ 1, %31 ], [ 0, %28 ]
  %38 = phi i16 [ %35, %31 ], [ %12, %28 ]
  %39 = and i16 %38, 16
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @musb_writew, align 4
  tail call void %42(ptr noundef %8, i32 noundef 2, i16 noundef zeroext 128) #7
  %43 = load i8, ptr %17, align 4
  switch i8 %43, label %50 [
    i8 2, label %44
    i8 3, label %45
    i8 0, label %51
    i8 1, label %46
    i8 5, label %49
    i8 4, label %48
    i8 6, label %47
  ]

44:                                               ; preds = %41
  store i8 5, ptr %17, align 4
  br label %54

45:                                               ; preds = %41
  store i8 4, ptr %17, align 4
  br label %54

46:                                               ; preds = %41
  br label %51

47:                                               ; preds = %41
  br label %51

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %49, %48, %47, %46, %41
  %52 = phi ptr [ @.str.15, %50 ], [ @.str.14, %49 ], [ @.str.13, %48 ], [ @.str.12, %47 ], [ @.str.9, %46 ], [ @.str.8, %41 ]
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.musb_g_ep0_irq, i32 noundef 687, ptr noundef nonnull %52) #8
  br label %54

54:                                               ; preds = %51, %45, %44
  %55 = load ptr, ptr @musb_readw, align 4
  %56 = tail call zeroext i16 %55(ptr noundef %8, i32 noundef 2) #7
  br label %57

57:                                               ; preds = %54, %36
  %58 = phi i32 [ 1, %54 ], [ %37, %36 ]
  %59 = phi i16 [ %56, %54 ], [ %38, %36 ]
  %60 = load i8, ptr %17, align 4
  switch i8 %60, label %492 [
    i8 2, label %61
    i8 3, label %65
    i8 4, label %114
    i8 5, label %136
    i8 0, label %149
    i8 1, label %150
    i8 6, label %494
  ]

61:                                               ; preds = %57
  %62 = and i16 %59, 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %494

64:                                               ; preds = %61
  tail call fastcc void @ep0_txstate(ptr noundef %0)
  br label %494

65:                                               ; preds = %57
  %66 = and i16 %59, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %494, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %7, align 4
  %70 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15, i32 10
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  %73 = getelementptr i8, ptr %71, i32 -56
  %74 = icmp eq ptr %73, null
  %75 = or i1 %72, %74
  br i1 %75, label %109, label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr %73, align 4
  %78 = getelementptr i8, ptr %71, i32 -4
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %77, i32 %79
  %81 = getelementptr i8, ptr %71, i32 -52
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 %82, %79
  %84 = load ptr, ptr @musb_readb, align 4
  %85 = tail call zeroext i8 %84(ptr noundef %69, i32 noundef 8) #7
  %86 = zext i8 %85 to i16
  %87 = zext i8 %85 to i32
  %88 = icmp ult i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = getelementptr i8, ptr %71, i32 -8
  store i32 -75, ptr %90, align 4
  %91 = trunc i32 %83 to i16
  br label %92

92:                                               ; preds = %89, %76
  %93 = phi i16 [ %91, %89 ], [ %86, %76 ]
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = zext i16 %93 to i32
  tail call void @musb_read_fifo(ptr noundef %6, i16 noundef zeroext %93, ptr noundef %80) #7
  %97 = load i32, ptr %78, align 4
  %98 = add i32 %97, %96
  store i32 %98, ptr %78, align 4
  %99 = icmp ult i16 %93, 64
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %81, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %100, %95, %92
  store i8 4, ptr %17, align 4
  %104 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 50
  store i16 72, ptr %104, align 2
  %105 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15
  tail call void @musb_g_giveback(ptr noundef %105, ptr noundef nonnull %73, i32 noundef 0) #7
  %106 = load i16, ptr %104, align 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %494, label %108

108:                                              ; preds = %103
  store i16 0, ptr %104, align 2
  br label %109

109:                                              ; preds = %108, %100, %68
  %110 = phi i16 [ 72, %108 ], [ 96, %68 ], [ 64, %100 ]
  %111 = load ptr, ptr %9, align 4
  %112 = load ptr, ptr %4, align 8
  tail call void %111(ptr noundef %112, i8 noundef zeroext 0) #7
  %113 = load ptr, ptr @musb_writew, align 4
  tail call void %113(ptr noundef %69, i32 noundef 2, i16 noundef zeroext %110) #7
  br label %494

114:                                              ; preds = %57
  %115 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %116 = load i24, ptr %115, align 4
  %117 = and i24 %116, 8192
  %118 = icmp eq i24 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = and i24 %116, -8193
  store i24 %120, ptr %115, align 4
  %121 = load ptr, ptr @musb_writeb, align 4
  %122 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 48
  %123 = load i8, ptr %122, align 1
  tail call void %121(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %123) #7
  br label %136

124:                                              ; preds = %114
  %125 = and i24 %116, 16384
  %126 = icmp eq i24 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %128 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 49
  %129 = load i8, ptr %128, align 8
  %130 = icmp eq i8 %129, 8
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  tail call void @musb_load_testpacket(ptr noundef %0) #7
  %132 = load i8, ptr %128, align 8
  br label %133

133:                                              ; preds = %131, %127
  %134 = phi i8 [ %132, %131 ], [ %129, %127 ]
  %135 = load ptr, ptr @musb_writeb, align 4
  tail call void %135(ptr noundef %5, i32 noundef 15, i8 noundef zeroext %134) #7
  br label %136

136:                                              ; preds = %133, %124, %119, %57
  %137 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15, i32 10
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %137
  %140 = getelementptr i8, ptr %138, i32 -56
  %141 = icmp eq ptr %140, null
  %142 = or i1 %139, %141
  br i1 %142, label %145, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15
  tail call void @musb_g_giveback(ptr noundef %144, ptr noundef nonnull %140, i32 noundef 0) #7
  br label %145

145:                                              ; preds = %143, %136
  %146 = and i16 %59, 1
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  store i8 0, ptr %17, align 4
  br label %494

149:                                              ; preds = %57
  store i8 1, ptr %17, align 4
  br label %150

150:                                              ; preds = %149, %145, %57
  %151 = phi i32 [ %58, %57 ], [ 1, %149 ], [ %58, %145 ]
  %152 = zext i16 %59 to i32
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %494, label %155

155:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %156 = icmp eq i8 %14, 8
  br i1 %156, label %159, label %157

157:                                              ; preds = %155
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.musb_g_ep0_irq, i32 noundef 779, i32 noundef %16) #8
  br label %490

159:                                              ; preds = %155
  %160 = load ptr, ptr %7, align 4
  call void @musb_read_fifo(ptr noundef %6, i16 noundef zeroext 8, ptr noundef nonnull %3) #7
  %161 = load i8, ptr %3, align 8
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 2
  %167 = load i16, ptr %166, align 2
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 3
  %170 = load i16, ptr %169, align 4
  %171 = zext i16 %170 to i32
  %172 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 4
  %173 = load i16, ptr %172, align 2
  %174 = zext i16 %173 to i32
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %162, i32 noundef %165, i32 noundef %168, i32 noundef %171, i32 noundef %174) #7
  %175 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15, i32 10
  %176 = load volatile ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, %175
  %178 = getelementptr i8, ptr %176, i32 -56
  %179 = icmp eq ptr %178, null
  %180 = or i1 %177, %179
  br i1 %180, label %183, label %181

181:                                              ; preds = %159
  %182 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15
  call void @musb_g_giveback(ptr noundef %182, ptr noundef nonnull %178, i32 noundef 0) #7
  br label %183

183:                                              ; preds = %181, %159
  %184 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %185 = load i24, ptr %184, align 4
  %186 = and i24 %185, -8193
  store i24 %186, ptr %184, align 4
  %187 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 50
  store i16 64, ptr %187, align 2
  %188 = load i16, ptr %172, align 2
  %189 = icmp eq i16 %188, 0
  %190 = load i8, ptr %3, align 8
  %191 = icmp sgt i8 %190, -1
  br i1 %189, label %192, label %195

192:                                              ; preds = %183
  br i1 %191, label %194, label %193

193:                                              ; preds = %192
  store i16 66, ptr %187, align 2
  br label %194

194:                                              ; preds = %193, %192
  store i8 6, ptr %17, align 4
  br label %209

195:                                              ; preds = %183
  br i1 %191, label %208, label %196

196:                                              ; preds = %195
  store i8 2, ptr %17, align 4
  %197 = load ptr, ptr @musb_writew, align 4
  call void %197(ptr noundef %160, i32 noundef 2, i16 noundef zeroext 64) #7
  %198 = load ptr, ptr @musb_readw, align 4
  %199 = call zeroext i16 %198(ptr noundef %160, i32 noundef 2) #7
  %200 = and i16 %199, 1
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %202, %196
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !10
  %203 = load ptr, ptr @musb_readw, align 4
  %204 = call zeroext i16 %203(ptr noundef %160, i32 noundef 2) #7
  %205 = and i16 %204, 1
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %202

207:                                              ; preds = %202, %196
  store i16 0, ptr %187, align 2
  br label %209

208:                                              ; preds = %195
  store i8 3, ptr %17, align 4
  br label %209

209:                                              ; preds = %208, %207, %194
  %210 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 5
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %220, !prof !11

213:                                              ; preds = %209
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @musb_driver_name) #8
  %215 = load ptr, ptr @musb_readb, align 4
  %216 = call zeroext i8 %215(ptr noundef %5, i32 noundef 1) #7
  %217 = and i8 %216, 16
  %218 = icmp eq i8 %217, 0
  %219 = select i1 %218, i32 2, i32 3
  store i32 %219, ptr %210, align 4
  br label %220

220:                                              ; preds = %213, %209
  %221 = phi i32 [ %219, %213 ], [ %211, %209 ]
  %222 = load i8, ptr %17, align 4
  switch i8 %222, label %450 [
    i8 6, label %223
    i8 2, label %388
    i8 0, label %455
    i8 1, label %448
    i8 5, label %465
    i8 3, label %449
    i8 4, label %447
  ]

223:                                              ; preds = %220
  %224 = load ptr, ptr %4, align 8
  %225 = load i8, ptr %3, align 8
  %226 = and i8 %225, 31
  %227 = and i8 %225, 96
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %381

229:                                              ; preds = %223
  %230 = load i8, ptr %163, align 1
  switch i8 %230, label %381 [
    i8 5, label %231
    i8 1, label %238
    i8 3, label %294
  ]

231:                                              ; preds = %229
  %232 = load i24, ptr %184, align 4
  %233 = or i24 %232, 8192
  store i24 %233, ptr %184, align 4
  %234 = load i16, ptr %166, align 2
  %235 = trunc i16 %234 to i8
  %236 = and i8 %235, 127
  %237 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 48
  store i8 %236, ptr %237, align 1
  br label %385

238:                                              ; preds = %229
  %239 = zext i8 %226 to i32
  switch i32 %239, label %293 [
    i32 0, label %240
    i32 1, label %381
    i32 2, label %246
  ]

240:                                              ; preds = %238
  %241 = load i16, ptr %166, align 2
  %242 = icmp eq i16 %241, 1
  br i1 %242, label %243, label %381

243:                                              ; preds = %240
  %244 = load i24, ptr %184, align 4
  %245 = and i24 %244, -1025
  store i24 %245, ptr %184, align 4
  br label %385

246:                                              ; preds = %238
  %247 = load i16, ptr %169, align 4
  %248 = trunc i16 %247 to i8
  %249 = and i8 %248, 15
  %250 = icmp ne i8 %249, 0
  %251 = load i16, ptr %166, align 2
  %252 = icmp eq i16 %251, 0
  %253 = select i1 %250, i1 %252, i1 false
  br i1 %253, label %254, label %381

254:                                              ; preds = %246
  %255 = zext i8 %249 to i32
  %256 = getelementptr %struct.musb_hw_ep, ptr %6, i32 %255, i32 2
  %257 = load ptr, ptr %256, align 4
  %258 = and i16 %247, 128
  %259 = icmp eq i16 %258, 0
  %260 = getelementptr %struct.musb_hw_ep, ptr %6, i32 %255, i32 15
  %261 = getelementptr %struct.musb_hw_ep, ptr %6, i32 %255, i32 16
  %262 = select i1 %259, ptr %261, ptr %260
  %263 = getelementptr inbounds %struct.musb_ep, ptr %262, i32 0, i32 8
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %381, label %266

266:                                              ; preds = %254
  %267 = getelementptr inbounds %struct.musb_ep, ptr %262, i32 0, i32 11
  %268 = load i8, ptr %267, align 4
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %385

270:                                              ; preds = %266
  %271 = load ptr, ptr %9, align 4
  call void %271(ptr noundef %224, i8 noundef zeroext %249) #7
  %272 = load ptr, ptr @musb_readw, align 4
  %273 = select i1 %259, i32 6, i32 2
  %274 = select i1 %259, i16 -230, i16 -248
  %275 = select i1 %259, i16 133, i16 198
  %276 = call zeroext i16 %272(ptr noundef %257, i32 noundef %273) #7
  %277 = and i16 %276, %274
  %278 = or i16 %277, %275
  %279 = load ptr, ptr @musb_writew, align 4
  call void %279(ptr noundef %257, i32 noundef %273, i16 noundef zeroext %278) #7
  %280 = getelementptr inbounds %struct.musb_ep, ptr %262, i32 0, i32 10
  %281 = load volatile ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, %280
  %283 = getelementptr i8, ptr %281, i32 -56
  %284 = select i1 %282, ptr null, ptr %283
  %285 = getelementptr inbounds %struct.musb_ep, ptr %262, i32 0, i32 12
  %286 = load i8, ptr %285, align 1
  %287 = icmp eq i8 %286, 0
  %288 = icmp ne ptr %284, null
  %289 = select i1 %287, i1 %288, i1 false
  br i1 %289, label %290, label %291

290:                                              ; preds = %270
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.18) #7
  call void @musb_ep_restart(ptr noundef %0, ptr noundef nonnull %284) #7
  br label %291

291:                                              ; preds = %290, %270
  %292 = load ptr, ptr %9, align 4
  call void %292(ptr noundef %224, i8 noundef zeroext 0) #7
  br label %385

293:                                              ; preds = %238
  br label %381

294:                                              ; preds = %229
  %295 = zext i8 %226 to i32
  switch i32 %295, label %380 [
    i32 0, label %296
    i32 1, label %381
    i32 2, label %344
  ]

296:                                              ; preds = %294
  %297 = load i16, ptr %166, align 2
  switch i16 %297, label %343 [
    i16 1, label %298
    i16 2, label %301
    i16 3, label %322
    i16 4, label %329
    i16 5, label %336
    i16 6, label %381
  ]

298:                                              ; preds = %296
  %299 = load i24, ptr %184, align 4
  %300 = or i24 %299, 1024
  store i24 %300, ptr %184, align 4
  br label %385

301:                                              ; preds = %296
  %302 = icmp eq i32 %221, 3
  br i1 %302, label %303, label %343

303:                                              ; preds = %301
  %304 = load i16, ptr %169, align 4
  %305 = and i16 %304, 255
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %307, label %343

307:                                              ; preds = %303
  %308 = lshr i16 %304, 8
  %309 = trunc i16 %308 to i8
  switch i8 %309, label %343 [
    i8 1, label %317
    i8 2, label %310
    i8 3, label %311
    i8 4, label %312
    i8 -64, label %313
    i8 -63, label %314
    i8 -62, label %315
    i8 -61, label %316
  ]

310:                                              ; preds = %307
  br label %317

311:                                              ; preds = %307
  br label %317

312:                                              ; preds = %307
  br label %317

313:                                              ; preds = %307
  br label %317

314:                                              ; preds = %307
  br label %317

315:                                              ; preds = %307
  br label %317

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %316, %315, %314, %313, %312, %311, %310, %307
  %318 = phi i8 [ 4, %310 ], [ 1, %311 ], [ 8, %312 ], [ 16, %313 ], [ 32, %314 ], [ 64, %315 ], [ -128, %316 ], [ 2, %307 ]
  %319 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 49
  store i8 %318, ptr %319, align 8
  %320 = load i24, ptr %184, align 4
  %321 = or i24 %320, 16384
  store i24 %321, ptr %184, align 4
  br label %385

322:                                              ; preds = %296
  %323 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %324 = load i32, ptr %323, align 4
  %325 = and i32 %324, 2
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %343, label %327

327:                                              ; preds = %322
  %328 = or i32 %324, 8
  store i32 %328, ptr %323, align 4
  call fastcc void @musb_try_b_hnp_enable(ptr noundef %0) #7
  br label %385

329:                                              ; preds = %296
  %330 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %331 = load i32, ptr %330, align 4
  %332 = and i32 %331, 2
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %329
  %335 = or i32 %331, 16
  store i32 %335, ptr %330, align 4
  br label %385

336:                                              ; preds = %296
  %337 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, 2
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %336
  %342 = or i32 %338, 32
  store i32 %342, ptr %337, align 4
  br label %385

343:                                              ; preds = %336, %329, %322, %307, %303, %301, %296
  br label %381

344:                                              ; preds = %294
  %345 = load i16, ptr %169, align 4
  %346 = trunc i16 %345 to i8
  %347 = and i8 %346, 15
  %348 = icmp ne i8 %347, 0
  %349 = load i16, ptr %166, align 2
  %350 = icmp eq i16 %349, 0
  %351 = select i1 %348, i1 %350, i1 false
  br i1 %351, label %352, label %381

352:                                              ; preds = %344
  %353 = zext i8 %347 to i32
  %354 = getelementptr %struct.musb_hw_ep, ptr %6, i32 %353, i32 2
  %355 = load ptr, ptr %354, align 4
  %356 = and i16 %345, 128
  %357 = icmp eq i16 %356, 0
  %358 = getelementptr %struct.musb_hw_ep, ptr %6, i32 %353, i32 15
  %359 = getelementptr %struct.musb_hw_ep, ptr %6, i32 %353, i32 16
  %360 = select i1 %357, ptr %359, ptr %358
  %361 = getelementptr inbounds %struct.musb_ep, ptr %360, i32 0, i32 8
  %362 = load ptr, ptr %361, align 4
  %363 = icmp eq ptr %362, null
  br i1 %363, label %381, label %364

364:                                              ; preds = %352
  %365 = load ptr, ptr %9, align 4
  call void %365(ptr noundef %224, i8 noundef zeroext %347) #7
  %366 = load ptr, ptr @musb_readw, align 4
  br i1 %357, label %374, label %367

367:                                              ; preds = %364
  %368 = call zeroext i16 %366(ptr noundef %355, i32 noundef 2) #7
  %369 = shl i16 %368, 2
  %370 = and i16 %369, 8
  %371 = or i16 %368, %370
  %372 = or i16 %371, 246
  %373 = load ptr, ptr @musb_writew, align 4
  call void %373(ptr noundef %355, i32 noundef 2, i16 noundef zeroext %372) #7
  br label %378

374:                                              ; preds = %364
  %375 = call zeroext i16 %366(ptr noundef %355, i32 noundef 6) #7
  %376 = or i16 %375, 245
  %377 = load ptr, ptr @musb_writew, align 4
  call void %377(ptr noundef %355, i32 noundef 6, i16 noundef zeroext %376) #7
  br label %378

378:                                              ; preds = %374, %367
  %379 = load ptr, ptr %9, align 4
  call void %379(ptr noundef %224, i8 noundef zeroext 0) #7
  br label %385

380:                                              ; preds = %294
  br label %381

381:                                              ; preds = %380, %352, %344, %343, %296, %294, %293, %254, %246, %240, %238, %229, %223
  %382 = phi i32 [ 0, %223 ], [ 0, %229 ], [ -22, %352 ], [ -22, %344 ], [ 0, %296 ], [ -22, %254 ], [ -22, %246 ], [ -22, %240 ], [ -22, %238 ], [ 0, %293 ], [ -22, %343 ], [ -22, %294 ], [ 0, %380 ]
  %383 = load i16, ptr %187, align 2
  %384 = or i16 %383, 8
  store i16 %384, ptr %187, align 2
  br label %451

385:                                              ; preds = %378, %341, %334, %327, %317, %298, %291, %266, %243, %231
  %386 = load i16, ptr %187, align 2
  %387 = or i16 %386, 8
  br label %460

388:                                              ; preds = %220
  %389 = load i8, ptr %3, align 8
  %390 = and i8 %389, 96
  %391 = icmp eq i8 %390, 0
  %392 = load i8, ptr %163, align 1
  %393 = icmp eq i8 %392, 0
  %394 = select i1 %391, i1 %393, i1 false
  br i1 %394, label %395, label %465

395:                                              ; preds = %388
  %396 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 0, ptr %2, align 2, !annotation !8
  %397 = and i8 %389, 31
  %398 = zext i8 %397 to i32
  switch i32 %398, label %445 [
    i32 0, label %399
    i32 1, label %416
    i32 2, label %417
  ]

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %401 = load i32, ptr %400, align 4
  %402 = lshr i32 %401, 13
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = load i24, ptr %184, align 4
  %406 = lshr i24 %405, 9
  %407 = trunc i24 %406 to i8
  %408 = and i8 %407, 2
  %409 = or i8 %408, %404
  store i8 %409, ptr %2, align 2
  %410 = and i32 %401, 2
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %457, label %412

412:                                              ; preds = %399
  %413 = trunc i32 %401 to i8
  %414 = and i8 %413, 56
  %415 = or i8 %409, %414
  store i8 %415, ptr %2, align 2
  br label %457

416:                                              ; preds = %395
  store i8 0, ptr %2, align 2
  br label %457

417:                                              ; preds = %395
  %418 = load i16, ptr %169, align 4
  %419 = trunc i16 %418 to i8
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i8 0, ptr %2, align 2
  br label %457

422:                                              ; preds = %417
  %423 = and i8 %419, 15
  %424 = zext i8 %423 to i32
  %425 = and i16 %418, 128
  %426 = icmp eq i16 %425, 0
  %427 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %424, i32 15
  %428 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %424, i32 16
  %429 = select i1 %426, ptr %428, ptr %427
  %430 = getelementptr inbounds %struct.musb_ep, ptr %429, i32 0, i32 8
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %445, label %433

433:                                              ; preds = %422
  %434 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %424, i32 2
  %435 = load ptr, ptr %434, align 4
  %436 = load ptr, ptr %9, align 4
  call void %436(ptr noundef %396, i8 noundef zeroext %423) #7
  %437 = load ptr, ptr @musb_readw, align 4
  %438 = select i1 %426, i32 6, i32 2
  %439 = select i1 %426, i16 32, i16 16
  %440 = call zeroext i16 %437(ptr noundef %435, i32 noundef %438) #7
  %441 = and i16 %440, %439
  %442 = load ptr, ptr %9, align 4
  call void %442(ptr noundef %396, i8 noundef zeroext 0) #7
  %443 = icmp ne i16 %441, 0
  %444 = zext i1 %443 to i8
  store i8 %444, ptr %2, align 2
  br label %457

445:                                              ; preds = %422, %395
  %446 = phi i32 [ 0, %395 ], [ -22, %422 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  br label %451

447:                                              ; preds = %220
  br label %465

448:                                              ; preds = %220
  br label %455

449:                                              ; preds = %220
  br label %455

450:                                              ; preds = %220
  br label %455

451:                                              ; preds = %445, %381
  %452 = phi i32 [ %446, %445 ], [ %382, %381 ]
  %453 = phi ptr [ @.str.10, %445 ], [ @.str.12, %381 ]
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %452, i32 noundef %152, ptr noundef nonnull %453) #7
  %454 = icmp slt i32 %452, 0
  br i1 %454, label %483, label %467

455:                                              ; preds = %450, %449, %448, %220
  %456 = phi ptr [ @.str.15, %450 ], [ @.str.11, %449 ], [ @.str.9, %448 ], [ @.str.8, %220 ]
  br label %465

457:                                              ; preds = %433, %421, %416, %412, %399
  %458 = load i16, ptr %172, align 2
  %459 = call i16 @llvm.umin.i16(i16 %458, i16 2) #7
  call void @musb_write_fifo(ptr noundef %6, i16 noundef zeroext %459, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  br label %460

460:                                              ; preds = %457, %385
  %461 = phi i16 [ 10, %457 ], [ %387, %385 ]
  %462 = phi i8 [ 5, %457 ], [ 4, %385 ]
  %463 = phi ptr [ @.str.14, %457 ], [ @.str.13, %385 ]
  store i16 %461, ptr %187, align 2
  store i8 %462, ptr %17, align 4
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef %152, ptr noundef nonnull %463) #7
  %464 = load i16, ptr %187, align 2
  br label %487

465:                                              ; preds = %455, %447, %388, %220
  %466 = phi ptr [ @.str.13, %447 ], [ %456, %455 ], [ @.str.14, %220 ], [ @.str.10, %388 ]
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %152, ptr noundef nonnull %466) #7
  br label %467

467:                                              ; preds = %465, %451
  %468 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 53
  %469 = load ptr, ptr %468, align 8
  %470 = icmp eq ptr %469, null
  br i1 %470, label %480, label %471

471:                                              ; preds = %467
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %472 = load i16, ptr %0, align 4
  %473 = add i16 %472, 1
  store i16 %473, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  %474 = load ptr, ptr %468, align 8
  %475 = getelementptr inbounds %struct.usb_gadget_driver, ptr %474, i32 0, i32 4
  %476 = load ptr, ptr %475, align 4
  %477 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52
  %478 = call i32 %476(ptr noundef %477, ptr noundef nonnull %3) #7
  call void @_raw_spin_lock(ptr noundef %0) #7
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %480, label %490

480:                                              ; preds = %471, %467
  %481 = phi i32 [ %478, %471 ], [ -95, %467 ]
  %482 = load ptr, ptr %9, align 4
  call void %482(ptr noundef %5, i8 noundef zeroext 0) #7
  br label %483

483:                                              ; preds = %480, %451
  %484 = phi i32 [ %452, %451 ], [ %481, %480 ]
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %484) #7
  %485 = load i16, ptr %187, align 2
  %486 = or i16 %485, 32
  store i16 %486, ptr %187, align 2
  store i8 0, ptr %17, align 4
  br label %487

487:                                              ; preds = %483, %460
  %488 = phi i16 [ %464, %460 ], [ %486, %483 ]
  %489 = load ptr, ptr @musb_writew, align 4
  call void %489(ptr noundef %8, i32 noundef 2, i16 noundef zeroext %488) #7
  store i16 0, ptr %187, align 2
  br label %490

490:                                              ; preds = %487, %471, %157
  %491 = phi i32 [ %151, %157 ], [ 1, %487 ], [ 1, %471 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %494

492:                                              ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 879, i32 noundef 9, ptr noundef null) #7
  %493 = load ptr, ptr @musb_writew, align 4
  tail call void %493(ptr noundef %8, i32 noundef 2, i16 noundef zeroext 32) #7
  store i8 0, ptr %17, align 4
  br label %494

494:                                              ; preds = %492, %490, %150, %148, %109, %103, %65, %64, %61, %57, %24
  %495 = phi i32 [ 1, %24 ], [ %58, %492 ], [ %491, %490 ], [ %151, %150 ], [ 1, %148 ], [ %58, %65 ], [ 1, %64 ], [ %58, %61 ], [ 1, %57 ], [ 1, %103 ], [ 1, %109 ]
  ret i32 %495
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep0_txstate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15, i32 10
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = getelementptr i8, ptr %5, i32 -56
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr @musb_readw, align 4
  %12 = tail call zeroext i16 %11(ptr noundef %3, i32 noundef 2) #7
  %13 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %13) #7
  br label %50

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %5, i32 -4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = getelementptr i8, ptr %5, i32 -52
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %18
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 64)
  %24 = trunc i32 %23 to i16
  tail call void @musb_write_fifo(ptr noundef %15, i16 noundef zeroext %24, ptr noundef %19) #7
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, %23
  store i32 %26, ptr %17, align 4
  %27 = icmp ult i32 %22, 64
  br i1 %27, label %36, label %28

28:                                               ; preds = %14
  %29 = load i32, ptr %20, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %5, i32 -32
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 262144
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31, %14
  %37 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 51
  store i8 5, ptr %37, align 4
  %38 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 50
  store i16 10, ptr %38, align 2
  %39 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 15
  tail call void @musb_g_giveback(ptr noundef %39, ptr noundef nonnull %7, i32 noundef 0) #7
  %40 = load i16, ptr %38, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  store i16 0, ptr %38, align 2
  br label %43

43:                                               ; preds = %42, %31, %28
  %44 = phi i16 [ 10, %42 ], [ 2, %31 ], [ 2, %28 ]
  %45 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %48 = load ptr, ptr %47, align 8
  tail call void %46(ptr noundef %48, i8 noundef zeroext 0) #7
  %49 = load ptr, ptr @musb_writew, align 4
  tail call void %49(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %44) #7
  br label %50

50:                                               ; preds = %43, %36, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_load_testpacket(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_g_ep0_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_g_ep0_disable(ptr nocapture noundef readnone %0) #4 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @musb_alloc_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_free_request(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_g_ep0_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %62

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 35, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 3
  store ptr %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %14, align 4
  %15 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 6
  %16 = load i8, ptr %15, align 2
  %17 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  store i8 %16, ptr %17, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %19 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %60

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 51
  %24 = load i8, ptr %23, align 4
  switch i8 %24, label %41 [
    i8 3, label %25
    i8 2, label %25
    i8 6, label %25
  ]

25:                                               ; preds = %22, %22, %22
  %26 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1
  %27 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %26, ptr %27, align 4
  store ptr %19, ptr %26, align 4
  %29 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 4
  %30 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 1
  %31 = load i8, ptr %15, align 2
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr @.str.23, ptr @.str.22
  %34 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef %30, ptr noundef nonnull %33, i32 noundef %35) #7
  %36 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 27
  %39 = load ptr, ptr %38, align 8
  tail call void %37(ptr noundef %39, i8 noundef zeroext 0) #7
  %40 = load i8, ptr %23, align 4
  switch i8 %40, label %54 [
    i8 2, label %43
    i8 6, label %44
  ]

41:                                               ; preds = %22
  %42 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef %42) #7
  br label %60

43:                                               ; preds = %25
  tail call fastcc void @ep0_txstate(ptr noundef %9)
  br label %60

44:                                               ; preds = %25
  %45 = load i32, ptr %34, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  store i8 4, ptr %23, align 4
  %48 = load ptr, ptr @musb_writew, align 4
  %49 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 50
  %50 = load i16, ptr %49, align 2
  %51 = or i16 %50, 8
  tail call void %48(ptr noundef %11, i32 noundef 2, i16 noundef zeroext %51) #7
  store i16 0, ptr %49, align 2
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr inbounds %struct.musb, ptr %52, i32 0, i32 35, i32 0, i32 15
  tail call void @musb_g_giveback(ptr noundef %53, ptr noundef nonnull %1, i32 noundef 0) #7
  br label %60

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 50
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @musb_writew, align 4
  tail call void %59(ptr noundef %11, i32 noundef 2, i16 noundef zeroext %56) #7
  store i16 0, ptr %55, align 2
  br label %60

60:                                               ; preds = %58, %54, %47, %44, %43, %41, %7
  %61 = phi i32 [ -22, %41 ], [ 0, %43 ], [ 0, %47 ], [ 0, %58 ], [ 0, %54 ], [ -16, %7 ], [ -22, %44 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %18) #7
  br label %62

62:                                               ; preds = %60, %3
  %63 = phi i32 [ %61, %60 ], [ -22, %3 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_g_ep0_dequeue(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_g_ep0_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 35, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %14 = getelementptr inbounds %struct.musb_ep, ptr %0, i32 0, i32 10
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %10, i8 noundef zeroext 0) #7
  %20 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 50
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 51
  %23 = load i8, ptr %22, align 4
  switch i8 %23, label %31 [
    i8 2, label %24
    i8 6, label %24
    i8 3, label %24
    i8 4, label %27
    i8 5, label %27
  ]

24:                                               ; preds = %17, %17, %17
  %25 = load ptr, ptr @musb_readw, align 4
  %26 = tail call zeroext i16 %25(ptr noundef %12, i32 noundef 2) #7
  br label %27

27:                                               ; preds = %24, %17, %17
  %28 = phi i16 [ %21, %17 ], [ %21, %17 ], [ %26, %24 ]
  %29 = or i16 %28, 32
  %30 = load ptr, ptr @musb_writew, align 4
  tail call void %30(ptr noundef %12, i32 noundef 2, i16 noundef zeroext %29) #7
  store i8 0, ptr %22, align 4
  store i16 0, ptr %20, align 2
  br label %33

31:                                               ; preds = %17
  %32 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %32) #7
  br label %33

33:                                               ; preds = %31, %27, %6
  %34 = phi i32 [ -22, %31 ], [ 0, %27 ], [ -16, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %13) #7
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i32 [ %34, %33 ], [ -22, %2 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_write_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_read_fifo(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_giveback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_ep_restart(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_try_b_hnp_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.19) #7
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = tail call zeroext i8 %4(ptr noundef %3, i32 noundef 96) #7
  %6 = load ptr, ptr @musb_writeb, align 4
  %7 = or i8 %5, 2
  tail call void %6(ptr noundef %3, i32 noundef 96, i8 noundef zeroext %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 2153911565}
!10 = !{i64 2153911407}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148929523}
!13 = !{i64 2148925347}
!14 = !{i64 2148925422, i64 2148925449, i64 2148925496, i64 2148925518, i64 2148925546, i64 2148925566}
!15 = !{i64 2148952526}
