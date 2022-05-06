; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_fweh_queue_item = type <{ %struct.list_head, i32, i8, [6 x i8], %struct.brcmf_event_msg_be, i8, i32, [0 x i8] }>
%struct.brcmf_event_msg_be = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_if_event = type { i8, i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.95, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.possible_net_t = type {}
%struct.anon.95 = type { i64, i64, i8 }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event = type { %struct.ethhdr, %struct.brcm_ethhdr, %struct.brcmf_event_msg_be }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.brcm_ethhdr = type { i16, i16, i8, [3 x i8], i16 }

@.str = private unnamed_addr constant [8 x i8] c"nodebug\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: event code %d already registered\0A\00", align 1
@__func__.brcmf_fweh_register = private unnamed_addr constant [20 x i8] c"brcmf_fweh_register\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"event_msgs\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: Set event_msgs error (%d)\0A\00", align 1
@__func__.brcmf_fweh_activate_events = private unnamed_addr constant [27 x i8] c"brcmf_fweh_activate_events\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: event handler failed (%d)\0A\00", align 1
@__func__.brcmf_fweh_event_worker = private unnamed_addr constant [24 x i8] c"brcmf_fweh_event_worker\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: invalid interface index: %u\0A\00", align 1
@__func__.brcmf_fweh_handle_if_event = private unnamed_addr constant [27 x i8] c"brcmf_fweh_handle_if_event\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: unhandled event %d ignored\0A\00", align 1
@__func__.brcmf_fweh_call_event_handler = private unnamed_addr constant [30 x i8] c"brcmf_fweh_call_event_handler\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: no interface object\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @brcmf_fweh_event_name(i32 noundef %0) local_unnamed_addr #0 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_fweh_p2pdev_setup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = zext i1 %1 to i8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 14
  store i8 %3, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_attach(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1, i32 2
  store ptr @brcmf_fweh_event_worker, ptr %5, align 4
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 3
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_fweh_event_worker(ptr noundef %0) #5 {
  %2 = alloca %struct.brcmf_event_msg, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false), !annotation !8
  %3 = getelementptr i8, ptr %0, i32 -8508
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr i8, ptr %0, i32 20
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 2
  %12 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 3
  %13 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 5
  %15 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 6
  %16 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 7
  %17 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 8
  %18 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 9
  %19 = getelementptr inbounds %struct.brcmf_event_msg, ptr %2, i32 0, i32 10
  %20 = getelementptr i8, ptr %0, i32 -8348
  %21 = getelementptr i8, ptr %0, i32 -4
  %22 = getelementptr i8, ptr %0, i32 -8504
  %23 = getelementptr i8, ptr %0, i32 244
  %24 = getelementptr i8, ptr %0, i32 -8500
  %25 = getelementptr i8, ptr %0, i32 -8492
  br label %28

26:                                               ; preds = %201, %1
  %27 = phi i32 [ %5, %1 ], [ %202, %201 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %27) #12
  br label %205

28:                                               ; preds = %201, %9
  %29 = phi ptr [ %7, %9 ], [ %203, %201 ]
  %30 = phi i32 [ %5, %9 ], [ %202, %201 ]
  %31 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %30) #12
  %35 = icmp eq ptr %29, null
  br i1 %35, label %205, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4
  %38 = load i16, ptr %37, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  store i16 %39, ptr %2, align 4
  %40 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 1
  %41 = load i16, ptr %40, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  store i16 %42, ptr %10, align 2
  %43 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %11, align 4
  %45 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 3
  %46 = load i32, ptr %45, align 1
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  store i32 %47, ptr %12, align 4
  %48 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 4
  %49 = load i32, ptr %48, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  store i32 %50, ptr %13, align 4
  %51 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 5
  %52 = load i32, ptr %51, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  store i32 %53, ptr %14, align 4
  %54 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 6
  %55 = load i32, ptr %54, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  store i32 %56, ptr %15, align 4
  %57 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %16, ptr noundef align 1 dereferenceable(6) %57, i32 6, i1 false)
  %58 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %17, ptr noundef align 1 dereferenceable(16) %58, i32 16, i1 false)
  %59 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 9
  %60 = load i8, ptr %59, align 1
  store i8 %60, ptr %18, align 2
  %61 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4, i32 10
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr %19, align 1
  %63 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 7
  %64 = load i32, ptr %43, align 4
  switch i32 %64, label %167 [
    i32 54, label %65
    i32 92, label %170
  ]

65:                                               ; preds = %36
  %66 = getelementptr inbounds %struct.brcmf_if_event, ptr %63, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 1, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  switch i8 %72, label %201 [
    i8 4, label %76
    i8 0, label %73
  ]

73:                                               ; preds = %70
  %74 = load i8, ptr %21, align 4, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %201, label %76

76:                                               ; preds = %73, %70, %65
  %77 = xor i1 %69, true
  %78 = load i8, ptr %63, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ugt i8 %78, 15
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = call i32 @net_ratelimit() #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %201, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %24, align 4
  %86 = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 56
  %87 = load i8, ptr %63, align 1
  %88 = zext i8 %87 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcmf_fweh_handle_if_event, i32 noundef %88) #13
  br label %201

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.brcmf_if_event, ptr %63, i32 0, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.brcmf_if_event, ptr %63, i32 0, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 1
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = call ptr @brcmf_add_if(ptr noundef %3, i32 noundef %92, i32 noundef %79, i1 noundef zeroext %77, ptr noundef %17, ptr noundef %16) #12
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %201, label %101

101:                                              ; preds = %98
  br i1 %69, label %102, label %108

102:                                              ; preds = %101
  %103 = load ptr, ptr %22, align 4
  %104 = getelementptr inbounds %struct.brcmf_proto, ptr %103, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void %105(ptr noundef %99) #12
  br label %108

108:                                              ; preds = %107, %102, %101
  %109 = load ptr, ptr %23, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = call i32 @brcmf_net_attach(ptr noundef %99, i1 noundef zeroext false) #12
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %201, label %114

114:                                              ; preds = %111, %108, %89
  %115 = phi ptr [ %99, %108 ], [ %99, %111 ], [ %94, %89 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %161, label %117

117:                                              ; preds = %114
  %118 = load i8, ptr %95, align 1
  %119 = icmp eq i8 %118, 3
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load ptr, ptr %22, align 4
  %122 = getelementptr inbounds %struct.brcmf_proto, ptr %121, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  call void %123(ptr noundef nonnull %115) #12
  br label %126

126:                                              ; preds = %125, %120
  %127 = load i32, ptr %11, align 4
  %128 = load ptr, ptr %115, align 4
  %129 = getelementptr %struct.brcmf_pub, ptr %128, i32 0, i32 14, i32 4, i32 %127
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = call i32 %130(ptr noundef nonnull %115, ptr noundef nonnull %2, ptr noundef %63) #12
  br label %154

134:                                              ; preds = %126
  %135 = call i32 @net_ratelimit() #12
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %24, align 4
  %139 = getelementptr inbounds %struct.wiphy, ptr %138, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_fweh_call_event_handler, i32 noundef %127) #13
  br label %154

140:                                              ; preds = %117
  %141 = load i32, ptr %11, align 4
  %142 = load ptr, ptr %115, align 4
  %143 = getelementptr %struct.brcmf_pub, ptr %142, i32 0, i32 14, i32 4, i32 %141
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = call i32 %144(ptr noundef nonnull %115, ptr noundef nonnull %2, ptr noundef %63) #12
  br label %154

148:                                              ; preds = %140
  %149 = call i32 @net_ratelimit() #12
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %24, align 4
  %153 = getelementptr inbounds %struct.wiphy, ptr %152, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_fweh_call_event_handler, i32 noundef %141) #13
  br label %154

154:                                              ; preds = %151, %148, %146, %137, %134, %132
  %155 = load i8, ptr %95, align 1
  %156 = icmp eq i8 %155, 2
  br i1 %156, label %157, label %201

157:                                              ; preds = %154
  %158 = load ptr, ptr %25, align 4
  %159 = call zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef %158) #12
  br i1 %159, label %201, label %160

160:                                              ; preds = %157
  call void @brcmf_remove_interface(ptr noundef nonnull %115, i1 noundef zeroext false) #12
  br label %201

161:                                              ; preds = %114
  %162 = call i32 @net_ratelimit() #12
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %201, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %24, align 4
  %166 = getelementptr inbounds %struct.wiphy, ptr %165, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcmf_fweh_call_event_handler) #13
  br label %201

167:                                              ; preds = %36
  %168 = zext i8 %62 to i32
  %169 = getelementptr [16 x ptr], ptr %20, i32 0, i32 %168
  br label %170

170:                                              ; preds = %167, %36
  %171 = phi ptr [ %169, %167 ], [ %20, %36 ]
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %185, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %172, align 4
  %176 = getelementptr %struct.brcmf_pub, ptr %175, i32 0, i32 14, i32 4, i32 %64
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %174
  %180 = call i32 @net_ratelimit() #12
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %24, align 4
  %184 = getelementptr inbounds %struct.wiphy, ptr %183, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_fweh_call_event_handler, i32 noundef %64) #13
  br label %194

185:                                              ; preds = %170
  %186 = call i32 @net_ratelimit() #12
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %24, align 4
  %190 = getelementptr inbounds %struct.wiphy, ptr %189, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcmf_fweh_call_event_handler) #13
  br label %194

191:                                              ; preds = %174
  %192 = call i32 %177(ptr noundef nonnull %172, ptr noundef nonnull %2, ptr noundef %63) #12
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191, %188, %185, %182, %179
  %195 = call i32 @net_ratelimit() #12
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %24, align 4
  %199 = getelementptr inbounds %struct.wiphy, ptr %198, i32 0, i32 56
  %200 = load i32, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.brcmf_fweh_event_worker, i32 noundef %200) #13
  br label %201

201:                                              ; preds = %197, %194, %191, %164, %161, %160, %157, %154, %111, %98, %84, %81, %73, %70
  call void @kfree(ptr noundef nonnull %29) #12
  %202 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %203 = load volatile ptr, ptr %6, align 4
  %204 = icmp eq ptr %203, %6
  br i1 %204, label %26, label %28

205:                                              ; preds = %28, %26
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_detach(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1
  %7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 310, i32 noundef 9, ptr noundef null) #12
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(556) %13, i8 0, i32 556, i1 false)
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fweh_register(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 4, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @net_ratelimit() #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.brcmf_fweh_register, i32 noundef %1) #13
  br label %15

14:                                               ; preds = %3
  store ptr %2, ptr %4, align 4
  br label %15

15:                                               ; preds = %14, %10, %7
  %16 = phi i32 [ 0, %14 ], [ -28, %7 ], [ -28, %10 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @brcmf_fweh_unregister(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 4, i32 %1
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fweh_activate_events(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca [18 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %2, i8 0, i64 18, i1 false)
  br label %4

4:                                                ; preds = %17, %1
  %5 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %6 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 14, i32 4, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = and i32 %5, 7
  %11 = shl nuw nsw i32 1, %10
  %12 = lshr i32 %5, 3
  %13 = getelementptr i8, ptr %2, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = trunc i32 %11 to i8
  %16 = or i8 %14, %15
  store i8 %16, ptr %13, align 1
  br label %17

17:                                               ; preds = %9, %4
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 139
  br i1 %19, label %20, label %4

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %2, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, 64
  store i8 %23, ptr %21, align 1
  %24 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 18) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = call i32 @net_ratelimit() #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.brcmf_fweh_activate_events, i32 noundef %24) #13
  br label %33

33:                                               ; preds = %29, %26, %20
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #12
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fweh_process_event(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.brcmf_event, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.brcmf_event, ptr %1, i32 0, i32 2, i32 2
  %7 = load i32, ptr %6, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  %9 = getelementptr inbounds %struct.brcmf_event, ptr %1, i32 0, i32 2, i32 6
  %10 = load i32, ptr %9, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  %12 = getelementptr %struct.brcmf_event, ptr %1, i32 1
  %13 = icmp ugt i32 %8, 138
  br i1 %13, label %49, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %7, 905969664
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 4, i32 %8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt i32 %11, 8192
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %49, label %24

22:                                               ; preds = %14
  %23 = icmp ugt i32 %11, 8192
  br i1 %23, label %49, label %24

24:                                               ; preds = %22, %16
  %25 = add nuw nsw i32 %11, 72
  %26 = icmp ugt i32 %25, %2
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = or i32 %3, 256
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef %28) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 1
  store i32 %8, ptr %32, align 8
  %33 = getelementptr inbounds %struct.brcmf_event, ptr %1, i32 0, i32 2, i32 9
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 2
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(48) %36, ptr noundef align 1 dereferenceable(48) %5, i32 48, i1 false)
  %37 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %37, ptr align 1 %12, i32 %11, i1 false)
  %38 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 6
  store i32 %11, ptr %38, align 4
  %39 = getelementptr inbounds %struct.brcmf_fweh_queue_item, ptr %29, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %39, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %40 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 2
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #12
  %42 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 3
  %43 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 3, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %29, ptr %43, align 4
  store ptr %42, ptr %29, align 64
  %45 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %29, ptr %44, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #12
  %46 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 14, i32 1
  %47 = load ptr, ptr @system_wq, align 4
  %48 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %46) #12
  br label %49

49:                                               ; preds = %31, %27, %24, %22, %16, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_add_if(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_net_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_cfg80211_vif_event_armed(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_remove_interface(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
