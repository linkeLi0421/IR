; ModuleID = '/llk/IR/sound/usb/clock.c_pt.bc'
source_filename = "../sound/usb/clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac3_clock_source_descriptor = type <{ i8, i8, i8, i8, i8, i32, i8, i16 }>
%struct.uac3_clock_selector_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_clock_multiplier_descriptor = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.uac_clock_source_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [49 x i8] c"%s(): recursive clock topology detected, id %d.\0A\00", align 1
@__func__.__uac_clock_find_source = private unnamed_addr constant [24 x i8] c"__uac_clock_find_source\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"clock source %d is not valid, cannot use\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s(): selector reported illegal value, id %d, ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"found and selected valid clock source %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s(): cannot get clock validity for id %d\0A\00", align 1
@__func__.uac_clock_source_is_valid = private unnamed_addr constant [26 x i8] c"uac_clock_source_is_valid\00", align 1
@__func__.uac_clock_source_is_valid_quirk = private unnamed_addr constant [32 x i8] c"uac_clock_source_is_valid_quirk\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"setting selector (id %d) unexpected length %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"setting selector (id %d) to %x failed (current: %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%d:%d: cannot get freq (v2/v3): err %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%d:%d: cannot set freq %d to ep %#x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%d:%d: cannot get freq at ep %#x\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"failed to read current rate; disabling the check\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"current rate %d is different from the runtime rate %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%d:%d: cannot set freq %d (v2/v3): err %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_clock_find_source(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %12 [
    i8 32, label %7
    i8 48, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 26
  %9 = load i8, ptr %8, align 8
  %10 = zext i8 %9 to i32
  %11 = call fastcc i32 @__uac_clock_find_source(ptr noundef %0, ptr noundef %1, i32 noundef %10, ptr noundef nonnull %4, i1 noundef zeroext %2)
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uac_clock_find_source(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %8 = load i8, ptr %7, align 1
  %9 = and i32 %2, 255
  %10 = tail call i32 @_test_and_set_bit(i32 noundef %9, ptr noundef %3) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  br label %21

14:                                               ; preds = %165
  %15 = zext i8 %167 to i32
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %9, %5 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__uac_clock_find_source, i32 noundef %17) #6
  br label %172

21:                                               ; preds = %165, %12
  %22 = phi i32 [ %9, %12 ], [ %168, %165 ]
  %23 = phi i8 [ %8, %12 ], [ %169, %165 ]
  %24 = phi i32 [ %2, %12 ], [ %168, %165 ]
  %25 = load ptr, ptr %13, align 4
  %26 = icmp eq i8 %23, 48
  %27 = select i1 %26, i8 11, i8 10
  %28 = getelementptr inbounds %struct.usb_host_interface, ptr %25, i32 0, i32 2
  %29 = getelementptr inbounds %struct.usb_host_interface, ptr %25, i32 0, i32 1
  %30 = trunc i32 %24 to i8
  br label %31

31:                                               ; preds = %37, %21
  %32 = phi ptr [ null, %21 ], [ %35, %37 ]
  %33 = load ptr, ptr %28, align 4
  %34 = load i32, ptr %29, align 4
  %35 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %33, i32 noundef %34, ptr noundef %32, i8 noundef zeroext %27) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %35, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, %30
  br i1 %40, label %41, label %31

41:                                               ; preds = %37
  %42 = and i32 %24, 255
  br i1 %4, label %43, label %172

43:                                               ; preds = %41
  %44 = tail call fastcc zeroext i1 @uac_clock_source_is_valid(ptr noundef %0, ptr noundef %1, i32 noundef %42)
  br i1 %44, label %172, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.1, i32 noundef %42) #6
  br label %172

49:                                               ; preds = %31
  %50 = load ptr, ptr %13, align 4
  %51 = select i1 %26, i8 12, i8 11
  %52 = getelementptr inbounds %struct.usb_host_interface, ptr %50, i32 0, i32 2
  %53 = getelementptr inbounds %struct.usb_host_interface, ptr %50, i32 0, i32 1
  br label %54

54:                                               ; preds = %60, %49
  %55 = phi ptr [ null, %49 ], [ %58, %60 ]
  %56 = load ptr, ptr %52, align 4
  %57 = load i32, ptr %53, align 4
  %58 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %56, i32 noundef %57, ptr noundef %55, i8 noundef zeroext %51) #5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %150, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %58, i32 0, i32 3
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, %30
  br i1 %63, label %64, label %54

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %58, i32 0, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %24, 255
  %69 = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %58, i32 0, i32 5
  %70 = icmp eq i8 %66, 1
  br i1 %70, label %103, label %71

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  %72 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %73, align 8
  %75 = shl i32 %74, 8
  %76 = or i32 %75, -2147483520
  %77 = load ptr, ptr %13, align 4
  %78 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %77, i32 0, i32 2
  %79 = load i8, ptr %78, align 2
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %68, 8
  %82 = or i32 %81, %80
  %83 = trunc i32 %82 to i16
  %84 = call i32 @snd_usb_ctl_msg(ptr noundef %73, i32 noundef %76, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %83, ptr noundef nonnull %6, i16 noundef zeroext 1) #5
  %85 = icmp slt i32 %84, 0
  %86 = load i8, ptr %6, align 1
  %87 = zext i8 %86 to i32
  %88 = select i1 %85, i32 %84, i32 %87
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  br i1 %85, label %89, label %93

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 26
  %91 = load i8, ptr %90, align 1, !range !9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %172, label %126

93:                                               ; preds = %71
  %94 = icmp sgt i32 %88, %67
  %95 = icmp eq i32 %88, 0
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load ptr, ptr %72, align 4
  %99 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.__uac_clock_find_source, i32 noundef %68, i32 noundef %88) #6
  %100 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 26
  %101 = load i8, ptr %100, align 1, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %172, label %126

103:                                              ; preds = %93, %64
  %104 = phi i32 [ %87, %93 ], [ 1, %64 ]
  %105 = add nsw i32 %104, -1
  %106 = getelementptr i8, ptr %69, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = call fastcc i32 @__uac_clock_find_source(ptr noundef %0, ptr noundef %1, i32 noundef %108, ptr noundef %3, i1 noundef zeroext %4)
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %172

116:                                              ; preds = %111
  %117 = trunc i32 %104 to i8
  %118 = call fastcc i32 @uac_clock_selector_set_val(ptr noundef %0, i32 noundef %22, i8 noundef zeroext %117)
  %119 = icmp slt i32 %118, 0
  %120 = select i1 %119, i32 %118, i32 %109
  br label %172

121:                                              ; preds = %103
  br i1 %4, label %122, label %172

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 26
  %124 = load i8, ptr %123, align 1, !range !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %172, label %126

126:                                              ; preds = %122, %97, %89
  %127 = phi i32 [ %104, %122 ], [ 0, %89 ], [ 0, %97 ]
  %128 = icmp eq i8 %66, 0
  br i1 %128, label %172, label %129

129:                                              ; preds = %147, %126
  %130 = phi i32 [ %148, %147 ], [ 1, %126 ]
  %131 = icmp eq i32 %130, %127
  br i1 %131, label %147, label %132

132:                                              ; preds = %129
  %133 = add nsw i32 %130, -1
  %134 = getelementptr i8, ptr %69, i32 %133
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = call fastcc i32 @__uac_clock_find_source(ptr noundef %0, ptr noundef %1, i32 noundef %136, ptr noundef %3, i1 noundef zeroext true)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %132
  %140 = trunc i32 %130 to i8
  %141 = call fastcc i32 @uac_clock_selector_set_val(ptr noundef %0, i32 noundef %22, i8 noundef zeroext %140)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.usb_device, ptr %145, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.3, i32 noundef %137) #6
  br label %172

147:                                              ; preds = %139, %132, %129
  %148 = add nuw nsw i32 %130, 1
  %149 = icmp eq i32 %130, %67
  br i1 %149, label %172, label %129

150:                                              ; preds = %54
  %151 = load ptr, ptr %13, align 4
  %152 = select i1 %26, i8 13, i8 12
  %153 = getelementptr inbounds %struct.usb_host_interface, ptr %151, i32 0, i32 2
  %154 = getelementptr inbounds %struct.usb_host_interface, ptr %151, i32 0, i32 1
  br label %155

155:                                              ; preds = %161, %150
  %156 = phi ptr [ null, %150 ], [ %159, %161 ]
  %157 = load ptr, ptr %153, align 4
  %158 = load i32, ptr %154, align 4
  %159 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %157, i32 noundef %158, ptr noundef %156, i8 noundef zeroext %152) #5
  %160 = icmp eq ptr %159, null
  br i1 %160, label %172, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.uac_clock_multiplier_descriptor, ptr %159, i32 0, i32 3
  %163 = load i8, ptr %162, align 1
  %164 = icmp eq i8 %163, %30
  br i1 %164, label %165, label %155

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.uac_clock_multiplier_descriptor, ptr %159, i32 0, i32 4
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = load i8, ptr %7, align 1
  %170 = tail call i32 @_test_and_set_bit(i32 noundef %168, ptr noundef %3) #5
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %21, label %14

172:                                              ; preds = %155, %147, %143, %126, %122, %121, %116, %111, %97, %89, %45, %43, %41, %16
  %173 = phi i32 [ -22, %16 ], [ -6, %45 ], [ %137, %143 ], [ %42, %43 ], [ %42, %41 ], [ %84, %89 ], [ -22, %97 ], [ %109, %111 ], [ %109, %122 ], [ %109, %121 ], [ %120, %116 ], [ -6, %126 ], [ -6, %147 ], [ -22, %155 ]
  ret i32 %173
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_set_sample_rate_v2v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %7 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i8 %8, 48
  %12 = select i1 %11, i8 11, i8 10
  %13 = getelementptr inbounds %struct.usb_host_interface, ptr %10, i32 0, i32 2
  %14 = getelementptr inbounds %struct.usb_host_interface, ptr %10, i32 0, i32 1
  br label %15

15:                                               ; preds = %21, %4
  %16 = phi ptr [ null, %4 ], [ %19, %21 ]
  %17 = load ptr, ptr %13, align 4
  %18 = load i32, ptr %14, align 4
  %19 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %17, i32 noundef %18, ptr noundef %16, i8 noundef zeroext %12) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %19, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %15

26:                                               ; preds = %21
  %27 = load i8, ptr %7, align 1
  %28 = icmp eq i8 %27, 48
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %19, i32 0, i32 5
  %31 = load i32, ptr %30, align 1
  br label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %19, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %31, %29 ], [ %35, %32 ]
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %36
  store i32 %3, ptr %6, align 4
  %41 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 8
  %44 = shl i32 %43, 8
  %45 = or i32 %44, -2147483648
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %46, i32 0, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = shl i32 %2, 8
  %51 = or i32 %50, %49
  %52 = trunc i32 %51 to i16
  %53 = call i32 @snd_usb_ctl_msg(ptr noundef %42, i32 noundef %45, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext %52, ptr noundef nonnull %6, i16 noundef zeroext 4) #5
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %57 = load i8, ptr %56, align 8
  %58 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %59 = load i8, ptr %58, align 1
  %60 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %61 = load i32, ptr %60, align 8
  %62 = shl i32 %61, 8
  %63 = or i32 %62, -2147483520
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = or i32 %50, %67
  %69 = trunc i32 %68 to i16
  %70 = call i32 @snd_usb_ctl_msg(ptr noundef %60, i32 noundef %63, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %69, ptr noundef nonnull %5, i16 noundef zeroext 4) #5
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = zext i8 %59 to i32
  %74 = zext i8 %57 to i32
  %75 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.7, i32 noundef %74, i32 noundef %73, i32 noundef %70) #6
  br label %78

76:                                               ; preds = %55
  %77 = load i32, ptr %5, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ 0, %72 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  br label %80

80:                                               ; preds = %78, %40, %36, %15
  %81 = phi i32 [ %79, %78 ], [ 0, %36 ], [ %53, %40 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_init_sample_rate(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 4
  %6 = alloca [8 x i32], align 4
  %7 = alloca [3 x i8], align 1
  %8 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %10 [
    i8 32, label %99
    i8 48, label %92
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #5
  %13 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 10
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %10
  %18 = trunc i32 %2 to i8
  store i8 %18, ptr %7, align 1
  %19 = lshr i32 %2, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  store i8 %20, ptr %21, align 1
  %22 = lshr i32 %2, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  %25 = load i32, ptr %12, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, -2147483648
  %28 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 11
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i16
  %31 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %27, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext %30, ptr noundef nonnull %7, i16 noundef zeroext 3) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %35 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %36 = load i8, ptr %35, align 8
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, ptr %28, align 1
  %42 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.8, i32 noundef %37, i32 noundef %40, i32 noundef %2, i32 noundef %42) #6
  br label %90

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 16
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %90, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %12, align 8
  %54 = shl i32 %53, 8
  %55 = or i32 %54, -2147483520
  %56 = load i8, ptr %28, align 1
  %57 = zext i8 %56 to i16
  %58 = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %55, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext %57, ptr noundef nonnull %7, i16 noundef zeroext 3) #5
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %62 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %63 = load i8, ptr %62, align 8
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, ptr %28, align 1
  %69 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.9, i32 noundef %64, i32 noundef %67, i32 noundef %69) #6
  %70 = load i32, ptr %49, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %49, align 4
  br label %90

72:                                               ; preds = %52
  %73 = load i8, ptr %7, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %21, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = or i32 %77, %74
  %79 = load i8, ptr %24, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 16
  %82 = or i32 %78, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.10) #6
  store i32 3, ptr %49, align 4
  br label %90

86:                                               ; preds = %72
  %87 = icmp eq i32 %82, %2
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.11, i32 noundef %82, i32 noundef %2) #6
  br label %90

90:                                               ; preds = %88, %86, %84, %60, %48, %43, %33, %10
  %91 = phi i32 [ %31, %33 ], [ 0, %60 ], [ 0, %84 ], [ 0, %10 ], [ 0, %43 ], [ 0, %48 ], [ 0, %88 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #5
  br label %166

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  %95 = icmp sgt i32 %94, 31
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = icmp eq i32 %2, 48000
  %98 = select i1 %97, i32 0, i32 -6
  br label %166

99:                                               ; preds = %92, %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false) #5
  %100 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 26
  %101 = load i8, ptr %100, align 8
  %102 = zext i8 %101 to i32
  %103 = call fastcc i32 @__uac_clock_find_source(ptr noundef %0, ptr noundef %1, i32 noundef %102, ptr noundef nonnull %6, i1 noundef zeroext true) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i64 32, i1 false) #5
  switch i8 %106, label %115 [
    i8 32, label %107
    i8 48, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = load i8, ptr %100, align 8
  %109 = zext i8 %108 to i32
  %110 = call fastcc i32 @__uac_clock_find_source(ptr noundef %0, ptr noundef %1, i32 noundef %109, ptr noundef nonnull %5, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  %111 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 64
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %166

115:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  %116 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 64
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 -22, i32 0
  br label %166

121:                                              ; preds = %107
  %122 = icmp slt i32 %110, 0
  br i1 %122, label %166, label %123

123:                                              ; preds = %121, %99
  %124 = phi i32 [ %110, %121 ], [ %103, %99 ]
  %125 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %126 = load i8, ptr %125, align 8
  %127 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %128 = load i8, ptr %127, align 1
  %129 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %131 = load i32, ptr %130, align 8
  %132 = shl i32 %131, 8
  %133 = or i32 %132, -2147483520
  %134 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %135, i32 0, i32 2
  %137 = load i8, ptr %136, align 2
  %138 = zext i8 %137 to i32
  %139 = shl i32 %124, 8
  %140 = or i32 %139, %138
  %141 = trunc i32 %140 to i16
  %142 = call i32 @snd_usb_ctl_msg(ptr noundef %130, i32 noundef %133, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %141, ptr noundef nonnull %4, i16 noundef zeroext 4) #5
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %123
  %145 = zext i8 %128 to i32
  %146 = zext i8 %126 to i32
  %147 = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %147, ptr noundef nonnull @.str.7, i32 noundef %146, i32 noundef %145, i32 noundef %142) #6
  br label %150

148:                                              ; preds = %123
  %149 = load i32, ptr %4, align 4
  br label %150

150:                                              ; preds = %148, %144
  %151 = phi i32 [ 0, %144 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %152 = icmp eq i32 %151, %2
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  %154 = call i32 @snd_usb_set_sample_rate_v2v3(ptr noundef %0, ptr noundef %1, i32 noundef %124, i32 noundef %2) #5
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load ptr, ptr %129, align 4
  %158 = getelementptr inbounds %struct.usb_device, ptr %157, i32 0, i32 15
  %159 = load i8, ptr %125, align 8
  %160 = zext i8 %159 to i32
  %161 = load i8, ptr %127, align 1
  %162 = zext i8 %161 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.12, i32 noundef %160, i32 noundef %162, i32 noundef %2, i32 noundef %154) #6
  br label %166

163:                                              ; preds = %153, %150
  %164 = call fastcc zeroext i1 @uac_clock_source_is_valid(ptr noundef %0, ptr noundef %1, i32 noundef %124) #5
  %165 = select i1 %164, i32 0, i32 -6
  br label %166

166:                                              ; preds = %163, %156, %121, %115, %107, %96, %90
  %167 = phi i32 [ %91, %90 ], [ %98, %96 ], [ %154, %156 ], [ 0, %107 ], [ %110, %121 ], [ %165, %163 ], [ %120, %115 ]
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @uac_clock_source_is_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 19
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i8 %9, 48
  %13 = select i1 %12, i8 11, i8 10
  %14 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 2
  %15 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 1
  br label %16

16:                                               ; preds = %22, %3
  %17 = phi ptr [ null, %3 ], [ %20, %22 ]
  %18 = load ptr, ptr %14, align 4
  %19 = load i32, ptr %15, align 4
  %20 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %18, i32 noundef %19, ptr noundef %17, i8 noundef zeroext %13) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %122, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %20, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %16

27:                                               ; preds = %22
  %28 = load i8, ptr %8, align 1
  %29 = icmp eq i8 %28, 48
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %20, i32 0, i32 5
  %32 = load i32, ptr %31, align 1
  br label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %20, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %32, %30 ], [ %36, %33 ]
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %122, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %7, align 8
  %43 = shl i32 %42, 8
  %44 = or i32 %43, -2147483520
  %45 = load ptr, ptr %10, align 4
  %46 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %45, i32 0, i32 2
  %47 = load i8, ptr %46, align 2
  %48 = zext i8 %47 to i32
  %49 = shl i32 %2, 8
  %50 = or i32 %49, %48
  %51 = trunc i32 %50 to i16
  %52 = call i32 @snd_usb_ctl_msg(ptr noundef %7, i32 noundef %44, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %51, ptr noundef nonnull %5, i16 noundef zeroext 1) #5
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.uac_clock_source_is_valid, i32 noundef %2) #6
  br label %122

56:                                               ; preds = %41
  %57 = load i8, ptr %5, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %122

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %60 = load ptr, ptr %6, align 4
  %61 = load i8, ptr %8, align 1
  %62 = load ptr, ptr %10, align 4
  %63 = icmp eq i8 %61, 48
  %64 = select i1 %63, i8 11, i8 10
  %65 = getelementptr inbounds %struct.usb_host_interface, ptr %62, i32 0, i32 2
  %66 = getelementptr inbounds %struct.usb_host_interface, ptr %62, i32 0, i32 1
  br label %67

67:                                               ; preds = %73, %59
  %68 = phi ptr [ null, %59 ], [ %71, %73 ]
  %69 = load ptr, ptr %65, align 4
  %70 = load i32, ptr %66, align 4
  %71 = call ptr @snd_usb_find_csint_desc(ptr noundef %69, i32 noundef %70, ptr noundef %68, i8 noundef zeroext %64) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %120, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %71, i32 0, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, %2
  br i1 %77, label %78, label %67

78:                                               ; preds = %73
  %79 = load i8, ptr %8, align 1
  %80 = icmp eq i8 %79, 32
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 24
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 26
  %87 = load i8, ptr %86, align 8
  %88 = icmp eq i8 %87, %75
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %71, i32 0, i32 4
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 3
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %89, %85, %81, %78
  %95 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 134021124
  br i1 %97, label %98, label %120

98:                                               ; preds = %113, %94
  %99 = phi i32 [ %116, %113 ], [ 0, %94 ]
  call void @msleep(i32 noundef 100) #5
  %100 = load i32, ptr %60, align 8
  %101 = shl i32 %100, 8
  %102 = or i32 %101, -2147483520
  %103 = load ptr, ptr %10, align 4
  %104 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %103, i32 0, i32 2
  %105 = load i8, ptr %104, align 2
  %106 = zext i8 %105 to i32
  %107 = or i32 %49, %106
  %108 = trunc i32 %107 to i16
  %109 = call i32 @snd_usb_ctl_msg(ptr noundef %60, i32 noundef %102, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %108, ptr noundef nonnull %4, i16 noundef zeroext 1) #5
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.uac_clock_source_is_valid_quirk, i32 noundef %2) #6
  br label %120

113:                                              ; preds = %98
  %114 = load i8, ptr %4, align 1
  %115 = icmp ne i8 %114, 0
  %116 = add nuw nsw i32 %99, 1
  %117 = xor i1 %115, true
  %118 = icmp ult i32 %99, 49
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %98, label %120

120:                                              ; preds = %113, %111, %94, %89, %67
  %121 = phi i1 [ true, %89 ], [ false, %94 ], [ false, %111 ], [ %115, %113 ], [ false, %67 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %122

122:                                              ; preds = %120, %56, %54, %37, %16
  %123 = phi i1 [ false, %54 ], [ %121, %120 ], [ true, %37 ], [ true, %56 ], [ false, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i1 %123
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uac_clock_selector_set_val(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %2, ptr %5, align 1
  %6 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %8, 8
  %10 = or i32 %9, -2147483648
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl i32 %1, 8
  %17 = or i32 %16, %15
  %18 = trunc i32 %17 to i16
  %19 = call i32 @snd_usb_ctl_msg(ptr noundef %7, i32 noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext %18, ptr noundef nonnull %5, i16 noundef zeroext 1) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %3
  %22 = icmp eq i32 %19, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %19) #6
  br label %49

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %27 = load ptr, ptr %6, align 4
  %28 = load i32, ptr %27, align 8
  %29 = shl i32 %28, 8
  %30 = or i32 %29, -2147483520
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = or i32 %16, %34
  %36 = trunc i32 %35 to i16
  %37 = call i32 @snd_usb_ctl_msg(ptr noundef %27, i32 noundef %30, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %36, ptr noundef nonnull %4, i16 noundef zeroext 1) #5
  %38 = icmp slt i32 %37, 0
  %39 = load i8, ptr %4, align 1
  %40 = zext i8 %39 to i32
  %41 = select i1 %38, i32 %37, i32 %40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br i1 %38, label %49, label %42

42:                                               ; preds = %26
  %43 = load i8, ptr %5, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %44, i32 noundef %41) #6
  br label %49

49:                                               ; preds = %46, %42, %26, %23, %3
  %50 = phi i32 [ -22, %23 ], [ -22, %46 ], [ %19, %3 ], [ %37, %26 ], [ %40, %42 ]
  ret i32 %50
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
