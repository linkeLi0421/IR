; ModuleID = '/llk/IR/sound/usb/implicit.c_pt.bc'
source_filename = "../sound/usb/implicit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_usb_implicit_fb_match = type { i32, i32, i32, i32, i32 }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.66, i8, i8, ptr }
%struct.anon.66 = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@playback_implicit_fb_quirks = internal constant [17 x %struct.snd_usb_implicit_fb_match] [%struct.snd_usb_implicit_fb_match { i32 77141257, i32 0, i32 0, i32 0, i32 1 }, %struct.snd_usb_implicit_fb_match { i32 123936816, i32 0, i32 0, i32 0, i32 1 }, %struct.snd_usb_implicit_fb_match { i32 123936817, i32 0, i32 0, i32 0, i32 1 }, %struct.snd_usb_implicit_fb_match { i32 123936896, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 123936897, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 610697232, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 837353473, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 837353474, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 77141807, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 228196575, i32 0, i32 129, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 586153990, i32 0, i32 129, i32 3, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 377942057, i32 0, i32 130, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 610697219, i32 0, i32 134, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 77141802, i32 0, i32 134, i32 2, i32 2 }, %struct.snd_usb_implicit_fb_match { i32 134021124, i32 1, i32 0, i32 0, i32 0 }, %struct.snd_usb_implicit_fb_match { i32 134021124, i32 255, i32 132, i32 0, i32 2 }, %struct.snd_usb_implicit_fb_match zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_usb_parse_implicit_fb_quirk(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 11
  %5 = load i8, ptr %4, align 1
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %128, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -65536
  %11 = icmp eq i32 %10, 92405760
  br i1 %11, label %12, label %89

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -1
  br i1 %15, label %16, label %89

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 7
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %24, label %89

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %89, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %89

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = icmp slt i8 %37, 0
  %39 = and i8 %32, 12
  %40 = icmp eq i8 %39, 4
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %89

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -1
  %47 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %46, i32 noundef %49) #4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %89, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 5
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 6
  %58 = load i8, ptr %57, align 2
  %59 = icmp eq i8 %58, 2
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 2
  br i1 %63, label %64, label %89

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 4
  %66 = load i8, ptr %65, align 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.usb_host_interface, ptr %50, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 3
  %74 = icmp eq i8 %73, 1
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = icmp slt i8 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 2
  %81 = load i8, ptr %80, align 2
  %82 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %77, ptr %82, align 8
  %83 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %81, ptr %83, align 1
  %84 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %50, i32 0, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %85, ptr %86, align 2
  %87 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 0, ptr %87, align 1
  %88 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %88, align 1
  br label %406

89:                                               ; preds = %75, %68, %64, %60, %52, %42, %35, %28, %24, %20, %12, %7
  %90 = load i32, ptr %8, align 4
  %91 = lshr i32 %90, 16
  %92 = trunc i32 %91 to i16
  switch i16 %92, label %406 [
    i16 11123, label %93
    i16 2276, label %93
  ]

93:                                               ; preds = %89, %89
  %94 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 5
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, -1
  br i1 %96, label %97, label %406

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 4
  %99 = load i8, ptr %98, align 4
  %100 = icmp eq i8 %99, 2
  br i1 %100, label %101, label %406

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %103, i32 0, i32 3
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, 3
  %107 = icmp eq i8 %106, 1
  br i1 %107, label %108, label %406

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %103, i32 0, i32 2
  %110 = load i8, ptr %109, align 1
  %111 = icmp sgt i8 %110, -1
  %112 = and i8 %105, 12
  %113 = icmp eq i8 %112, 4
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %406

115:                                              ; preds = %108
  %116 = getelementptr %struct.usb_host_endpoint, ptr %103, i32 1, i32 0, i32 3
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 3
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %406

120:                                              ; preds = %115
  %121 = getelementptr %struct.usb_host_endpoint, ptr %103, i32 1, i32 0, i32 2
  %122 = load i8, ptr %121, align 1
  %123 = icmp sgt i8 %122, -1
  br i1 %123, label %406, label %124

124:                                              ; preds = %120
  %125 = and i8 %117, 28
  %126 = icmp eq i8 %125, 4
  %127 = zext i1 %126 to i32
  br label %406

128:                                              ; preds = %3
  %129 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 12
  %130 = load i8, ptr %129, align 2
  %131 = and i8 %130, 12
  %132 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 5
  %133 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %147, %128
  %136 = phi i32 [ 77141257, %128 ], [ %149, %147 ]
  %137 = phi ptr [ @playback_implicit_fb_quirks, %128 ], [ %148, %147 ]
  %138 = icmp eq i32 %136, %134
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %137, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load i8, ptr %132, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %141, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143, %135
  %148 = getelementptr %struct.snd_usb_implicit_fb_match, ptr %137, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %182, label %135

151:                                              ; preds = %143, %139
  %152 = icmp eq ptr %137, null
  br i1 %152, label %182, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %137, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  switch i32 %155, label %182 [
    i32 1, label %156
    i32 0, label %406
    i32 2, label %158
  ]

156:                                              ; preds = %153
  %157 = tail call fastcc i32 @add_generic_implicit_fb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %406

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %137, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.snd_usb_implicit_fb_match, ptr %137, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = tail call ptr @usb_ifnum_to_if(ptr noundef %164, i32 noundef %162) #4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %406, label %167

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.usb_interface, ptr %165, i32 0, i32 2
  %169 = load i32, ptr %168, align 8
  %170 = icmp ult i32 %169, 2
  br i1 %170, label %406, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %165, align 8
  %173 = trunc i32 %160 to i8
  %174 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %173, ptr %174, align 8
  %175 = trunc i32 %162 to i8
  %176 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %175, ptr %176, align 1
  %177 = getelementptr %struct.usb_host_interface, ptr %172, i32 1, i32 0, i32 3
  %178 = load i8, ptr %177, align 1
  %179 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %178, ptr %179, align 2
  %180 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 0, ptr %180, align 1
  %181 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %181, align 1
  br label %406

182:                                              ; preds = %153, %151, %147
  %183 = icmp eq i8 %131, 4
  br i1 %183, label %184, label %244

184:                                              ; preds = %182
  %185 = load i8, ptr %132, align 1
  %186 = icmp eq i8 %185, 1
  br i1 %186, label %187, label %244

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 7
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 32
  br i1 %190, label %191, label %244

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 4
  %193 = load i8, ptr %192, align 4
  %194 = icmp eq i8 %193, 1
  br i1 %194, label %195, label %244

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %197 = load i8, ptr %196, align 2
  %198 = zext i8 %197 to i32
  %199 = add nuw nsw i32 %198, 1
  %200 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 3
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %199, i32 noundef %202) #4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %244, label %205

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %203, i32 0, i32 5
  %207 = load i8, ptr %206, align 1
  %208 = icmp eq i8 %207, 1
  br i1 %208, label %209, label %244

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %203, i32 0, i32 6
  %211 = load i8, ptr %210, align 2
  %212 = icmp eq i8 %211, 2
  br i1 %212, label %213, label %244

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %203, i32 0, i32 7
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, 32
  br i1 %216, label %217, label %244

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %203, i32 0, i32 4
  %219 = load i8, ptr %218, align 4
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %244, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.usb_host_interface, ptr %203, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %223, i32 0, i32 3
  %225 = load i8, ptr %224, align 1
  %226 = and i8 %225, 3
  %227 = icmp eq i8 %226, 1
  br i1 %227, label %228, label %244

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %223, i32 0, i32 2
  %230 = load i8, ptr %229, align 1
  %231 = icmp slt i8 %230, 0
  %232 = and i8 %225, 48
  %233 = icmp eq i8 %232, 32
  %234 = select i1 %231, i1 %233, i1 false
  br i1 %234, label %235, label %244

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %230, ptr %236, align 8
  %237 = trunc i32 %199 to i8
  %238 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %237, ptr %238, align 1
  %239 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %203, i32 0, i32 3
  %240 = load i8, ptr %239, align 1
  %241 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %240, ptr %241, align 2
  %242 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 0, ptr %242, align 1
  %243 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %243, align 1
  br label %406

244:                                              ; preds = %228, %221, %217, %213, %209, %205, %195, %191, %187, %184, %182
  %245 = load i32, ptr %133, align 4
  %246 = and i32 %245, -65536
  %247 = icmp eq i32 %246, 92405760
  br i1 %247, label %248, label %331

248:                                              ; preds = %244
  %249 = load i8, ptr %132, align 1
  %250 = icmp eq i8 %249, -1
  br i1 %250, label %251, label %331

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 6
  %253 = load i8, ptr %252, align 2
  %254 = icmp eq i8 %253, 2
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 7
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %257, 2
  br i1 %258, label %259, label %331

259:                                              ; preds = %255, %251
  %260 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 4
  %261 = load i8, ptr %260, align 4
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %331, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 3
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %265, i32 0, i32 3
  %267 = load i8, ptr %266, align 1
  %268 = and i8 %267, 3
  %269 = icmp eq i8 %268, 1
  br i1 %269, label %270, label %331

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %265, i32 0, i32 2
  %272 = load i8, ptr %271, align 1
  %273 = icmp sgt i8 %272, -1
  %274 = and i8 %267, 12
  %275 = icmp eq i8 %274, 4
  %276 = select i1 %273, i1 %275, i1 false
  br i1 %276, label %277, label %331

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %279 = load i8, ptr %278, align 2
  %280 = zext i8 %279 to i32
  %281 = add nuw nsw i32 %280, 1
  %282 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 3
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i32
  %285 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %281, i32 noundef %284) #4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %331, label %287

287:                                              ; preds = %277
  %288 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %285, i32 0, i32 5
  %289 = load i8, ptr %288, align 1
  %290 = icmp eq i8 %289, -1
  br i1 %290, label %291, label %331

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %285, i32 0, i32 6
  %293 = load i8, ptr %292, align 2
  %294 = icmp eq i8 %293, 2
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %285, i32 0, i32 7
  %297 = load i8, ptr %296, align 1
  %298 = icmp eq i8 %297, 2
  br i1 %298, label %299, label %331

299:                                              ; preds = %295, %291
  %300 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %285, i32 0, i32 4
  %301 = load i8, ptr %300, align 4
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %331, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.usb_host_interface, ptr %285, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %305, i32 0, i32 3
  %307 = load i8, ptr %306, align 1
  %308 = and i8 %307, 3
  %309 = icmp eq i8 %308, 1
  br i1 %309, label %310, label %331

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %305, i32 0, i32 2
  %312 = load i8, ptr %311, align 1
  %313 = icmp slt i8 %312, 0
  %314 = and i8 %307, 12
  %315 = icmp eq i8 %314, 4
  %316 = select i1 %313, i1 %315, i1 false
  br i1 %316, label %317, label %331

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %319 = load i32, ptr %318, align 4
  %320 = or i32 %319, 16
  store i32 %320, ptr %318, align 4
  %321 = load i8, ptr %311, align 1
  %322 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %285, i32 0, i32 2
  %323 = load i8, ptr %322, align 2
  %324 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %321, ptr %324, align 8
  %325 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %323, ptr %325, align 1
  %326 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %285, i32 0, i32 3
  %327 = load i8, ptr %326, align 1
  %328 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %327, ptr %328, align 2
  %329 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 0, ptr %329, align 1
  %330 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %330, align 1
  br label %406

331:                                              ; preds = %310, %303, %299, %295, %287, %277, %270, %263, %259, %255, %248, %244
  %332 = load i32, ptr %133, align 4
  %333 = lshr i32 %332, 16
  %334 = trunc i32 %333 to i16
  switch i16 %334, label %400 [
    i16 11123, label %335
    i16 2276, label %335
  ]

335:                                              ; preds = %331, %331
  %336 = load i8, ptr %132, align 1
  %337 = icmp eq i8 %336, -1
  br i1 %337, label %338, label %400

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 4
  %340 = load i8, ptr %339, align 4
  %341 = icmp eq i8 %340, 2
  br i1 %341, label %342, label %400

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 3
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %344, i32 0, i32 3
  %346 = load i8, ptr %345, align 1
  %347 = and i8 %346, 3
  %348 = icmp eq i8 %347, 1
  br i1 %348, label %349, label %400

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %344, i32 0, i32 2
  %351 = load i8, ptr %350, align 1
  %352 = icmp sgt i8 %351, -1
  %353 = and i8 %346, 12
  %354 = icmp eq i8 %353, 4
  %355 = select i1 %352, i1 %354, i1 false
  br i1 %355, label %356, label %400

356:                                              ; preds = %349
  %357 = getelementptr %struct.usb_host_endpoint, ptr %344, i32 1, i32 0, i32 3
  %358 = load i8, ptr %357, align 1
  %359 = and i8 %358, 3
  %360 = icmp eq i8 %359, 1
  br i1 %360, label %361, label %400

361:                                              ; preds = %356
  %362 = getelementptr %struct.usb_host_endpoint, ptr %344, i32 1, i32 0, i32 2
  %363 = load i8, ptr %362, align 1
  %364 = icmp slt i8 %363, 0
  %365 = and i8 %358, 28
  %366 = icmp eq i8 %365, 4
  %367 = select i1 %364, i1 %366, i1 false
  br i1 %367, label %368, label %400

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 12
  %370 = load i32, ptr %369, align 4
  %371 = or i32 %370, 16
  store i32 %371, ptr %369, align 4
  %372 = load ptr, ptr %343, align 4
  %373 = getelementptr %struct.usb_host_endpoint, ptr %372, i32 1, i32 0, i32 2
  %374 = load i8, ptr %373, align 2
  %375 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %376 = load i8, ptr %375, align 2
  %377 = icmp eq ptr %2, null
  br i1 %377, label %378, label %391

378:                                              ; preds = %368
  %379 = zext i8 %376 to i32
  %380 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  %382 = tail call ptr @usb_ifnum_to_if(ptr noundef %381, i32 noundef %379) #4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %406, label %384

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.usb_interface, ptr %382, i32 0, i32 2
  %386 = load i32, ptr %385, align 8
  %387 = icmp ult i32 %386, 2
  br i1 %387, label %406, label %388

388:                                              ; preds = %384
  %389 = load ptr, ptr %382, align 8
  %390 = getelementptr %struct.usb_host_interface, ptr %389, i32 1
  br label %391

391:                                              ; preds = %388, %368
  %392 = phi ptr [ %2, %368 ], [ %390, %388 ]
  %393 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %374, ptr %393, align 8
  %394 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %376, ptr %394, align 1
  %395 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %392, i32 0, i32 3
  %396 = load i8, ptr %395, align 1
  %397 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %396, ptr %397, align 2
  %398 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 1, ptr %398, align 1
  %399 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %399, align 1
  br label %406

400:                                              ; preds = %361, %356, %349, %342, %338, %335, %331
  %401 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 25
  %402 = load i8, ptr %401, align 4, !range !8
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %400
  %405 = tail call fastcc i32 @add_generic_implicit_fb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %406

406:                                              ; preds = %404, %400, %391, %384, %378, %317, %235, %171, %167, %158, %156, %153, %124, %120, %115, %108, %101, %97, %93, %89, %79
  %407 = phi i32 [ 1, %79 ], [ 0, %89 ], [ 0, %93 ], [ 0, %97 ], [ 0, %108 ], [ 0, %120 ], [ 0, %101 ], [ 0, %115 ], [ %127, %124 ], [ %405, %404 ], [ %157, %156 ], [ %155, %153 ], [ 1, %235 ], [ 1, %317 ], [ 0, %400 ], [ 1, %171 ], [ 0, %167 ], [ 0, %158 ], [ 1, %391 ], [ 0, %384 ], [ 0, %378 ]
  ret i32 %407
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_usb_find_implicit_fb_sync_format(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 6
  %6 = load i8, ptr %5, align 8
  %7 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 7
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %12, %14
  %16 = select i1 %15, ptr %1, ptr null
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi ptr [ null, %4 ], [ %16, %10 ]
  %19 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  %20 = load i8, ptr %19, align 8
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %0, i32 0, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %118, label %27

27:                                               ; preds = %38, %17
  %28 = phi ptr [ %39, %38 ], [ %25, %17 ]
  %29 = getelementptr i8, ptr %28, i32 -292
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %23
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %28, i32 -288
  %34 = getelementptr [2 x %struct.snd_usb_substream], ptr %33, i32 0, i32 %3
  %35 = getelementptr inbounds %struct.snd_usb_substream, ptr %34, i32 0, i32 19
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %21
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %27
  %39 = load ptr, ptr %28, align 4
  %40 = icmp eq ptr %39, %24
  br i1 %40, label %118, label %27

41:                                               ; preds = %32
  %42 = icmp eq ptr %34, null
  br i1 %42, label %118, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.snd_usb_substream, ptr %34, i32 0, i32 26
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %118, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 1, i32 1, i32 0, i32 1
  br label %56

56:                                               ; preds = %111, %47
  %57 = phi ptr [ %45, %47 ], [ %116, %111 ]
  %58 = phi ptr [ %18, %47 ], [ %115, %111 ]
  %59 = phi i32 [ 0, %47 ], [ %114, %111 ]
  br i1 %54, label %65, label %60

60:                                               ; preds = %65, %56
  %61 = phi i32 [ 0, %56 ], [ 32, %65 ]
  %62 = phi i32 [ %53, %56 ], [ %66, %65 ]
  %63 = tail call i32 @llvm.cttz.i32(i32 %62, i1 true) #4, !range !9
  %64 = or i32 %63, %61
  br label %68

65:                                               ; preds = %56
  %66 = load i32, ptr %55, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %60

68:                                               ; preds = %65, %60
  %69 = phi i32 [ %64, %60 ], [ 0, %65 ]
  %70 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %111, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = zext i32 %69 to i64
  %77 = shl nuw i64 1, %76
  %78 = and i64 %75, %77
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 21
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 1073741824
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 24
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 25
  %91 = load ptr, ptr %90, align 4
  br label %103

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 22
  %94 = load i32, ptr %93, align 8
  %95 = icmp ugt i32 %94, %49
  br i1 %95, label %111, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.audioformat, ptr %57, i32 0, i32 23
  %98 = load i32, ptr %97, align 4
  %99 = icmp ult i32 %98, %49
  br i1 %99, label %111, label %108

100:                                              ; preds = %103
  %101 = add nuw i32 %104, 1
  %102 = icmp eq i32 %101, %87
  br i1 %102, label %111, label %103

103:                                              ; preds = %100, %89
  %104 = phi i32 [ 0, %89 ], [ %101, %100 ]
  %105 = getelementptr i32, ptr %91, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, %49
  br i1 %107, label %108, label %100

108:                                              ; preds = %103, %96
  %109 = icmp eq i32 %71, %51
  %110 = select i1 %109, i32 2, i32 1
  br label %111

111:                                              ; preds = %108, %100, %96, %92, %85, %73, %68
  %112 = phi i32 [ %110, %108 ], [ 0, %68 ], [ 0, %73 ], [ 0, %96 ], [ 0, %92 ], [ 0, %85 ], [ 0, %100 ]
  %113 = icmp ugt i32 %112, %59
  %114 = tail call i32 @llvm.smax.i32(i32 %112, i32 %59)
  %115 = select i1 %113, ptr %57, ptr %58
  %116 = load ptr, ptr %57, align 4
  %117 = icmp eq ptr %116, %44
  br i1 %117, label %118, label %56

118:                                              ; preds = %111, %43, %41, %38, %17
  %119 = phi ptr [ %18, %41 ], [ %18, %17 ], [ %18, %43 ], [ %115, %111 ], [ %18, %38 ]
  ret ptr %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_host_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_generic_implicit_fb(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 12
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 12
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %80

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %12, i32 noundef %15) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %39 [
    i8 -1, label %21
    i8 1, label %21
  ]

21:                                               ; preds = %18, %18
  %22 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_host_interface, ptr %16, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %27, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 3
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %27, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp slt i8 %34, 0
  %36 = and i8 %29, 12
  %37 = icmp eq i8 %36, 4
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %68, label %39

39:                                               ; preds = %32, %25, %21, %18, %8
  %40 = load i8, ptr %9, align 2
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -1
  %43 = load i8, ptr %13, align 1
  %44 = zext i8 %43 to i32
  %45 = tail call ptr @snd_usb_get_host_interface(ptr noundef %0, i32 noundef %42, i32 noundef %44) #4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %45, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  switch i8 %49, label %80 [
    i8 -1, label %50
    i8 1, label %50
  ]

50:                                               ; preds = %47, %47
  %51 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %45, i32 0, i32 4
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.usb_host_interface, ptr %45, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 3
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = icmp slt i8 %63, 0
  %65 = and i8 %58, 12
  %66 = icmp eq i8 %65, 4
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %80

68:                                               ; preds = %61, %32
  %69 = phi i8 [ %34, %32 ], [ %63, %61 ]
  %70 = phi i32 [ %12, %32 ], [ %42, %61 ]
  %71 = phi ptr [ %16, %32 ], [ %45, %61 ]
  %72 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 14
  store i8 %69, ptr %72, align 8
  %73 = trunc i32 %70 to i8
  %74 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 15
  store i8 %73, ptr %74, align 1
  %75 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %71, i32 0, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 16
  store i8 %76, ptr %77, align 2
  %78 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 17
  store i8 0, ptr %78, align 1
  %79 = getelementptr inbounds %struct.audioformat, ptr %1, i32 0, i32 13
  store i8 1, ptr %79, align 1
  br label %80

80:                                               ; preds = %68, %61, %54, %50, %47, %39, %3
  %81 = phi i32 [ 0, %3 ], [ 0, %39 ], [ 0, %47 ], [ 0, %50 ], [ 0, %61 ], [ 0, %54 ], [ 1, %68 ]
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i32 0, i32 33}
