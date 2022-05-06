; ModuleID = '/llk/IR/sound/usb/mixer_s1810c.c_pt.bc'
source_filename = "../sound/usb/mixer_s1810c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.s1810c_ctl_packet = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.s1810_mixer_state = type { i16, %struct.mutex, %struct.mutex }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.67, [128 x i8] }
%union.anon.67 = type { %union.anon.69 }
%union.anon.69 = type { [64 x i64] }
%struct.s1810c_state_packet = type { [63 x i32] }

@.str = private unnamed_addr constant [41 x i8] c"Presonus Studio 1810c, device_setup: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"(8out/18in @ 48kHz)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"(6out/8in @ 192kHz)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"(8out/14in @ 96kHz)\0A\00", align 1
@snd_sc1810_init_mixer.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"&private->usb_mutex\00", align 1
@snd_sc1810_init_mixer.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"&private->data_mutex\00", align 1
@snd_s1810c_line_sw = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_s1810c_line_sw_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.73 zeroinitializer, i32 59 }, align 4
@snd_s1810c_mute_sw = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.73 zeroinitializer, i32 316 }, align 4
@snd_s1810c_48v_sw = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.73 zeroinitializer, i32 1082 }, align 4
@snd_s1810c_ab_sw = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_s1810c_ab_sw_info, ptr @snd_s1810c_switch_get, ptr @snd_s1810c_switch_set, %union.anon.73 zeroinitializer, i32 830 }, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"could not send ctl packet\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"Line 1/2 Source Type\00", align 1
@snd_s1810c_line_sw_info.texts = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.10], align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Preamp On (Mic/Inst)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Preamp Off (Line in)\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"could not send state packet (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"could not get state field %u (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Mute Main Out Switch\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"48V Phantom Power On Mic Inputs Switch\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Headphone 1 Source Route\00", align 1
@snd_s1810c_ab_sw_info.texts = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.17], align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"1/2\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"3/4\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_sc1810_init_mixer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.s1810c_ctl_packet, align 4
  %3 = alloca %struct.s1810c_ctl_packet, align 4
  %4 = alloca %struct.s1810c_ctl_packet, align 4
  %5 = alloca %struct.s1810c_ctl_packet, align 4
  %6 = alloca %struct.s1810c_ctl_packet, align 4
  %7 = alloca %struct.s1810c_ctl_packet, align 4
  %8 = alloca %struct.s1810c_ctl_packet, align 4
  %9 = alloca %struct.s1810c_ctl_packet, align 4
  %10 = alloca %struct.s1810c_ctl_packet, align 4
  %11 = alloca %struct.s1810c_ctl_packet, align 4
  %12 = alloca %struct.s1810c_ctl_packet, align 4
  %13 = alloca %struct.s1810c_ctl_packet, align 4
  %14 = alloca %struct.s1810c_ctl_packet, align 4
  %15 = alloca %struct.s1810c_ctl_packet, align 4
  %16 = alloca %struct.s1810c_ctl_packet, align 4
  %17 = alloca %struct.s1810c_ctl_packet, align 4
  %18 = alloca %struct.s1810c_ctl_packet, align 4
  %19 = alloca %struct.s1810c_ctl_packet, align 4
  %20 = alloca %struct.s1810c_ctl_packet, align 4
  %21 = alloca %struct.s1810c_ctl_packet, align 4
  %22 = alloca %struct.s1810c_ctl_packet, align 4
  %23 = alloca %struct.s1810c_ctl_packet, align 4
  %24 = alloca %struct.s1810c_ctl_packet, align 4
  %25 = alloca %struct.s1810c_ctl_packet, align 4
  %26 = alloca %struct.s1810c_ctl_packet, align 4
  %27 = alloca %struct.s1810c_ctl_packet, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 23
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %541

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %36 = getelementptr inbounds %struct.snd_usb_audio, ptr %28, i32 0, i32 24
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str, i32 noundef %37) #7
  %38 = load i32, ptr %36, align 4
  %39 = icmp eq i32 %38, 2
  %40 = select i1 %39, ptr @.str.2, ptr @.str.3
  %41 = icmp eq i32 %38, 1
  %42 = select i1 %41, ptr @.str.1, ptr %40
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull %42) #7
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %27, i32 0, i32 2
  %45 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %27, i32 0, i32 3
  %46 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %27, i32 0, i32 1
  %47 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %27, i32 0, i32 4
  %48 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %27, i32 0, i32 5
  %49 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %27, i32 0, i32 6
  %50 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  %51 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %26, i32 0, i32 2
  %52 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %26, i32 0, i32 3
  %53 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %26, i32 0, i32 1
  %54 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %26, i32 0, i32 4
  %55 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %26, i32 0, i32 5
  %56 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %26, i32 0, i32 6
  %57 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %25, i32 0, i32 2
  %58 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %25, i32 0, i32 3
  %59 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %25, i32 0, i32 1
  %60 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %25, i32 0, i32 4
  %61 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %25, i32 0, i32 5
  %62 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %25, i32 0, i32 6
  %63 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %24, i32 0, i32 2
  %64 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %24, i32 0, i32 3
  %65 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %24, i32 0, i32 1
  %66 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %24, i32 0, i32 4
  %67 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %24, i32 0, i32 5
  %68 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %24, i32 0, i32 6
  br label %87

69:                                               ; preds = %131
  %70 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %23, i32 0, i32 2
  %71 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %23, i32 0, i32 3
  %72 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %23, i32 0, i32 1
  %73 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %23, i32 0, i32 4
  %74 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %23, i32 0, i32 5
  %75 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %23, i32 0, i32 6
  %76 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %22, i32 0, i32 2
  %77 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %22, i32 0, i32 3
  %78 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %22, i32 0, i32 1
  %79 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %22, i32 0, i32 4
  %80 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %22, i32 0, i32 5
  %81 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %22, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %23) #8
  store i32 1348563561, ptr %70, align 4
  store i32 20, ptr %71, align 4
  store i32 101, ptr %23, align 4
  store i32 1, ptr %72, align 4
  store i32 0, ptr %73, align 4
  store i32 0, ptr %74, align 4
  store i32 16777216, ptr %75, align 4
  %82 = load i32, ptr %43, align 8
  %83 = shl i32 %82, 8
  %84 = or i32 %83, -2147483648
  %85 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %84, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %23, i16 noundef zeroext 28) #8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %135, label %136

87:                                               ; preds = %131, %34
  %88 = phi i32 [ 18, %34 ], [ %133, %131 ]
  %89 = phi i32 [ 0, %34 ], [ %132, %131 ]
  %90 = phi i32 [ 188, %34 ], [ 11877360, %131 ]
  %91 = mul nuw nsw i32 %89, 18
  br label %92

92:                                               ; preds = %128, %87
  %93 = phi i32 [ %129, %128 ], [ %91, %87 ]
  br label %94

94:                                               ; preds = %111, %92
  %95 = phi i32 [ 0, %92 ], [ %112, %111 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %27) #8
  store i32 1348563561, ptr %44, align 4
  store i32 20, ptr %45, align 4
  store i32 100, ptr %27, align 4
  store i32 %93, ptr %46, align 4
  store i32 %95, ptr %47, align 4
  store i32 0, ptr %48, align 4
  %96 = icmp eq i32 %95, 4
  %97 = select i1 %96, i32 0, i32 %90
  store i32 %97, ptr %49, align 4
  %98 = load i32, ptr %43, align 8
  %99 = shl i32 %98, 8
  %100 = or i32 %99, -2147483648
  %101 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %100, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %27, i16 noundef zeroext 28) #8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %104

104:                                              ; preds = %103, %94
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %27) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %26) #8
  store i32 1348563561, ptr %51, align 4
  store i32 20, ptr %52, align 4
  store i32 100, ptr %26, align 4
  store i32 %93, ptr %53, align 4
  store i32 %95, ptr %54, align 4
  store i32 1, ptr %55, align 4
  store i32 %97, ptr %56, align 4
  %105 = load i32, ptr %43, align 8
  %106 = shl i32 %105, 8
  %107 = or i32 %106, -2147483648
  %108 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %107, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %26, i16 noundef zeroext 28) #8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %111

111:                                              ; preds = %110, %104
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %26) #8
  %112 = add nuw nsw i32 %95, 1
  %113 = icmp eq i32 %112, 9
  br i1 %113, label %114, label %94

114:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %25) #8
  store i32 1348563561, ptr %57, align 4
  store i32 20, ptr %58, align 4
  store i32 100, ptr %25, align 4
  store i32 %93, ptr %59, align 4
  store i32 0, ptr %60, align 4
  store i32 0, ptr %61, align 4
  store i32 %90, ptr %62, align 4
  %115 = load i32, ptr %43, align 8
  %116 = shl i32 %115, 8
  %117 = or i32 %116, -2147483648
  %118 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %117, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %25, i16 noundef zeroext 28) #8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %121

121:                                              ; preds = %120, %114
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %25) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %24) #8
  store i32 1348563561, ptr %63, align 4
  store i32 20, ptr %64, align 4
  store i32 100, ptr %24, align 4
  store i32 %93, ptr %65, align 4
  store i32 0, ptr %66, align 4
  store i32 1, ptr %67, align 4
  store i32 %90, ptr %68, align 4
  %122 = load i32, ptr %43, align 8
  %123 = shl i32 %122, 8
  %124 = or i32 %123, -2147483648
  %125 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %124, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %24, i16 noundef zeroext 28) #8
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %128

128:                                              ; preds = %127, %121
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %24) #8
  %129 = add nuw nsw i32 %93, 1
  %130 = icmp eq i32 %129, %88
  br i1 %130, label %131, label %92

131:                                              ; preds = %128
  %132 = add nuw nsw i32 %89, 1
  %133 = add nuw nsw i32 %88, 18
  %134 = icmp eq i32 %132, 2
  br i1 %134, label %69, label %87

135:                                              ; preds = %69
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %136

136:                                              ; preds = %135, %69
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %22) #8
  store i32 1348563561, ptr %76, align 4
  store i32 20, ptr %77, align 4
  store i32 101, ptr %22, align 4
  store i32 1, ptr %78, align 4
  store i32 0, ptr %79, align 4
  store i32 1, ptr %80, align 4
  store i32 16777216, ptr %81, align 4
  %137 = load i32, ptr %43, align 8
  %138 = shl i32 %137, 8
  %139 = or i32 %138, -2147483648
  %140 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %139, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %22, i16 noundef zeroext 28) #8
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %143

143:                                              ; preds = %142, %136
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %23) #8
  store i32 1348563561, ptr %70, align 4
  store i32 20, ptr %71, align 4
  store i32 101, ptr %23, align 4
  store i32 2, ptr %72, align 4
  store i32 0, ptr %73, align 4
  store i32 0, ptr %74, align 4
  store i32 16777216, ptr %75, align 4
  %144 = load i32, ptr %43, align 8
  %145 = shl i32 %144, 8
  %146 = or i32 %145, -2147483648
  %147 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %146, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %23, i16 noundef zeroext 28) #8
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %150

150:                                              ; preds = %149, %143
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %22) #8
  store i32 1348563561, ptr %76, align 4
  store i32 20, ptr %77, align 4
  store i32 101, ptr %22, align 4
  store i32 2, ptr %78, align 4
  store i32 0, ptr %79, align 4
  store i32 1, ptr %80, align 4
  store i32 16777216, ptr %81, align 4
  %151 = load i32, ptr %43, align 8
  %152 = shl i32 %151, 8
  %153 = or i32 %152, -2147483648
  %154 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %153, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %22, i16 noundef zeroext 28) #8
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %157

157:                                              ; preds = %156, %150
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %21) #8
  %158 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %21, i32 0, i32 2
  store i32 1348563561, ptr %158, align 4
  %159 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %21, i32 0, i32 3
  store i32 20, ptr %159, align 4
  store i32 101, ptr %21, align 4
  %160 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %21, i32 0, i32 1
  store i32 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %21, i32 0, i32 4
  store i32 0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %21, i32 0, i32 5
  store i32 0, ptr %162, align 4
  %163 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %21, i32 0, i32 6
  store i32 16777216, ptr %163, align 4
  %164 = load i32, ptr %43, align 8
  %165 = shl i32 %164, 8
  %166 = or i32 %165, -2147483648
  %167 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %166, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %21, i16 noundef zeroext 28) #8
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %170

170:                                              ; preds = %169, %157
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %20) #8
  %171 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %20, i32 0, i32 2
  store i32 1348563561, ptr %171, align 4
  %172 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %20, i32 0, i32 3
  store i32 20, ptr %172, align 4
  store i32 101, ptr %20, align 4
  %173 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %20, i32 0, i32 1
  store i32 0, ptr %173, align 4
  %174 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %20, i32 0, i32 4
  store i32 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %20, i32 0, i32 5
  store i32 1, ptr %175, align 4
  %176 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %20, i32 0, i32 6
  store i32 16777216, ptr %176, align 4
  %177 = load i32, ptr %43, align 8
  %178 = shl i32 %177, 8
  %179 = or i32 %178, -2147483648
  %180 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %179, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %20, i16 noundef zeroext 28) #8
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %170
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %183

183:                                              ; preds = %182, %170
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %20) #8
  %184 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %19, i32 0, i32 2
  %185 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %19, i32 0, i32 3
  %186 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %19, i32 0, i32 1
  %187 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %19, i32 0, i32 4
  %188 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %19, i32 0, i32 5
  %189 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %19, i32 0, i32 6
  %190 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %18, i32 0, i32 2
  %191 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %18, i32 0, i32 3
  %192 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %18, i32 0, i32 1
  %193 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %18, i32 0, i32 4
  %194 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %18, i32 0, i32 5
  %195 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %18, i32 0, i32 6
  br label %196

196:                                              ; preds = %211, %183
  %197 = phi i32 [ %212, %211 ], [ 0, %183 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %19) #8
  store i32 1348563561, ptr %184, align 4
  store i32 20, ptr %185, align 4
  store i32 100, ptr %19, align 4
  store i32 %197, ptr %186, align 4
  store i32 3, ptr %187, align 4
  store i32 0, ptr %188, align 4
  store i32 188, ptr %189, align 4
  %198 = load i32, ptr %43, align 8
  %199 = shl i32 %198, 8
  %200 = or i32 %199, -2147483648
  %201 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %200, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %19, i16 noundef zeroext 28) #8
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %204

204:                                              ; preds = %203, %196
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %18) #8
  store i32 1348563561, ptr %190, align 4
  store i32 20, ptr %191, align 4
  store i32 100, ptr %18, align 4
  store i32 %197, ptr %192, align 4
  store i32 3, ptr %193, align 4
  store i32 1, ptr %194, align 4
  store i32 188, ptr %195, align 4
  %205 = load i32, ptr %43, align 8
  %206 = shl i32 %205, 8
  %207 = or i32 %206, -2147483648
  %208 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %207, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %18, i16 noundef zeroext 28) #8
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %211

211:                                              ; preds = %210, %204
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %18) #8
  %212 = add nuw nsw i32 %197, 1
  %213 = icmp eq i32 %212, 18
  br i1 %213, label %214, label %196

214:                                              ; preds = %229, %211
  %215 = phi i32 [ %230, %229 ], [ 18, %211 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %19) #8
  store i32 1348563561, ptr %184, align 4
  store i32 20, ptr %185, align 4
  store i32 100, ptr %19, align 4
  store i32 %215, ptr %186, align 4
  store i32 3, ptr %187, align 4
  store i32 0, ptr %188, align 4
  store i32 11877360, ptr %189, align 4
  %216 = load i32, ptr %43, align 8
  %217 = shl i32 %216, 8
  %218 = or i32 %217, -2147483648
  %219 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %218, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %19, i16 noundef zeroext 28) #8
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %222

222:                                              ; preds = %221, %214
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %18) #8
  store i32 1348563561, ptr %190, align 4
  store i32 20, ptr %191, align 4
  store i32 100, ptr %18, align 4
  store i32 %215, ptr %192, align 4
  store i32 3, ptr %193, align 4
  store i32 1, ptr %194, align 4
  store i32 11877360, ptr %195, align 4
  %223 = load i32, ptr %43, align 8
  %224 = shl i32 %223, 8
  %225 = or i32 %224, -2147483648
  %226 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %225, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %18, i16 noundef zeroext 28) #8
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %229

229:                                              ; preds = %228, %222
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %18) #8
  %230 = add nuw nsw i32 %215, 1
  %231 = icmp eq i32 %230, 36
  br i1 %231, label %232, label %214

232:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %17) #8
  %233 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %17, i32 0, i32 2
  store i32 1348563561, ptr %233, align 4
  %234 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %17, i32 0, i32 3
  store i32 20, ptr %234, align 4
  store i32 101, ptr %17, align 4
  %235 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %17, i32 0, i32 1
  store i32 3, ptr %235, align 4
  %236 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %17, i32 0, i32 4
  store i32 0, ptr %236, align 4
  %237 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %17, i32 0, i32 5
  store i32 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %17, i32 0, i32 6
  store i32 16777216, ptr %238, align 4
  %239 = load i32, ptr %43, align 8
  %240 = shl i32 %239, 8
  %241 = or i32 %240, -2147483648
  %242 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %241, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %17, i16 noundef zeroext 28) #8
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %232
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %245

245:                                              ; preds = %244, %232
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %16) #8
  %246 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %16, i32 0, i32 2
  store i32 1348563561, ptr %246, align 4
  %247 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %16, i32 0, i32 3
  store i32 20, ptr %247, align 4
  store i32 101, ptr %16, align 4
  %248 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %16, i32 0, i32 1
  store i32 3, ptr %248, align 4
  %249 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %16, i32 0, i32 4
  store i32 0, ptr %249, align 4
  %250 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %16, i32 0, i32 5
  store i32 1, ptr %250, align 4
  %251 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %16, i32 0, i32 6
  store i32 16777216, ptr %251, align 4
  %252 = load i32, ptr %43, align 8
  %253 = shl i32 %252, 8
  %254 = or i32 %253, -2147483648
  %255 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %254, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %16, i16 noundef zeroext 28) #8
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %245
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %258

258:                                              ; preds = %257, %245
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #8
  %259 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %15, i32 0, i32 2
  %260 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %15, i32 0, i32 3
  %261 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %15, i32 0, i32 1
  %262 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %15, i32 0, i32 4
  %263 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %15, i32 0, i32 5
  %264 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %15, i32 0, i32 6
  %265 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %14, i32 0, i32 2
  %266 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %14, i32 0, i32 3
  %267 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %14, i32 0, i32 1
  %268 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %14, i32 0, i32 4
  %269 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %14, i32 0, i32 5
  %270 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %14, i32 0, i32 6
  br label %308

271:                                              ; preds = %323
  %272 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %9, i32 0, i32 2
  %273 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %9, i32 0, i32 3
  %274 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %9, i32 0, i32 1
  %275 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %9, i32 0, i32 4
  %276 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %9, i32 0, i32 5
  %277 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %9, i32 0, i32 6
  %278 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %8, i32 0, i32 2
  %279 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %8, i32 0, i32 3
  %280 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %8, i32 0, i32 1
  %281 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %8, i32 0, i32 4
  %282 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %8, i32 0, i32 5
  %283 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %8, i32 0, i32 6
  %284 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %13, i32 0, i32 2
  %285 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %13, i32 0, i32 3
  %286 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %13, i32 0, i32 1
  %287 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %13, i32 0, i32 4
  %288 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %13, i32 0, i32 5
  %289 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %13, i32 0, i32 6
  %290 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %12, i32 0, i32 2
  %291 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %12, i32 0, i32 3
  %292 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %12, i32 0, i32 1
  %293 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %12, i32 0, i32 4
  %294 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %12, i32 0, i32 5
  %295 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %12, i32 0, i32 6
  %296 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %11, i32 0, i32 2
  %297 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %11, i32 0, i32 3
  %298 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %11, i32 0, i32 1
  %299 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %11, i32 0, i32 4
  %300 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %11, i32 0, i32 5
  %301 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %11, i32 0, i32 6
  %302 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %10, i32 0, i32 2
  %303 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %10, i32 0, i32 3
  %304 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %10, i32 0, i32 1
  %305 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %10, i32 0, i32 4
  %306 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %10, i32 0, i32 5
  %307 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %10, i32 0, i32 6
  br label %326

308:                                              ; preds = %323, %258
  %309 = phi i32 [ 0, %258 ], [ %324, %323 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %15) #8
  store i32 1348563561, ptr %259, align 4
  store i32 20, ptr %260, align 4
  store i32 101, ptr %15, align 4
  store i32 %309, ptr %261, align 4
  store i32 0, ptr %262, align 4
  store i32 0, ptr %263, align 4
  store i32 16777216, ptr %264, align 4
  %310 = load i32, ptr %43, align 8
  %311 = shl i32 %310, 8
  %312 = or i32 %311, -2147483648
  %313 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %312, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %15, i16 noundef zeroext 28) #8
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %308
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %316

316:                                              ; preds = %315, %308
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %14) #8
  store i32 1348563561, ptr %265, align 4
  store i32 20, ptr %266, align 4
  store i32 101, ptr %14, align 4
  store i32 %309, ptr %267, align 4
  store i32 0, ptr %268, align 4
  store i32 1, ptr %269, align 4
  store i32 16777216, ptr %270, align 4
  %317 = load i32, ptr %43, align 8
  %318 = shl i32 %317, 8
  %319 = or i32 %318, -2147483648
  %320 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %319, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %14, i16 noundef zeroext 28) #8
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %323

323:                                              ; preds = %322, %316
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %14) #8
  %324 = add nuw nsw i32 %309, 1
  %325 = icmp eq i32 %324, 4
  br i1 %325, label %271, label %308

326:                                              ; preds = %394, %271
  %327 = phi i32 [ 0, %271 ], [ %395, %394 ]
  %328 = icmp eq i32 %327, 0
  %329 = icmp eq i32 %327, 1
  %330 = icmp eq i32 %327, 2
  %331 = icmp eq i32 %327, 3
  br label %332

332:                                              ; preds = %390, %326
  %333 = phi i32 [ 0, %326 ], [ %392, %390 ]
  %334 = icmp eq i32 %333, 18
  %335 = select i1 %328, i1 %334, i1 false
  %336 = icmp eq i32 %333, 20
  %337 = select i1 %329, i1 %336, i1 false
  %338 = select i1 %335, i1 true, i1 %337
  %339 = icmp eq i32 %333, 22
  %340 = select i1 %330, i1 %339, i1 false
  %341 = select i1 %338, i1 true, i1 %340
  %342 = icmp eq i32 %333, 24
  %343 = select i1 %331, i1 %342, i1 false
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %345, label %375

345:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %13) #8
  store i32 1348563561, ptr %284, align 4
  store i32 20, ptr %285, align 4
  store i32 100, ptr %13, align 4
  store i32 %333, ptr %286, align 4
  store i32 %327, ptr %287, align 4
  store i32 0, ptr %288, align 4
  store i32 16777216, ptr %289, align 4
  %346 = load i32, ptr %43, align 8
  %347 = shl i32 %346, 8
  %348 = or i32 %347, -2147483648
  %349 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %348, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %13, i16 noundef zeroext 28) #8
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %352

352:                                              ; preds = %351, %345
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #8
  store i32 1348563561, ptr %290, align 4
  store i32 20, ptr %291, align 4
  store i32 100, ptr %12, align 4
  store i32 %333, ptr %292, align 4
  store i32 %327, ptr %293, align 4
  store i32 1, ptr %294, align 4
  store i32 0, ptr %295, align 4
  %353 = load i32, ptr %43, align 8
  %354 = shl i32 %353, 8
  %355 = or i32 %354, -2147483648
  %356 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %355, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %12, i16 noundef zeroext 28) #8
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %359

359:                                              ; preds = %358, %352
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #8
  %360 = add nuw nsw i32 %333, 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #8
  store i32 1348563561, ptr %296, align 4
  store i32 20, ptr %297, align 4
  store i32 100, ptr %11, align 4
  store i32 %360, ptr %298, align 4
  store i32 %327, ptr %299, align 4
  store i32 0, ptr %300, align 4
  store i32 0, ptr %301, align 4
  %361 = load i32, ptr %43, align 8
  %362 = shl i32 %361, 8
  %363 = or i32 %362, -2147483648
  %364 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %363, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %11, i16 noundef zeroext 28) #8
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %359
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %367

367:                                              ; preds = %366, %359
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #8
  store i32 1348563561, ptr %302, align 4
  store i32 20, ptr %303, align 4
  store i32 100, ptr %10, align 4
  store i32 %360, ptr %304, align 4
  store i32 %327, ptr %305, align 4
  store i32 1, ptr %306, align 4
  store i32 16777216, ptr %307, align 4
  %368 = load i32, ptr %43, align 8
  %369 = shl i32 %368, 8
  %370 = or i32 %369, -2147483648
  %371 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %370, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %10, i16 noundef zeroext 28) #8
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %367
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %374

374:                                              ; preds = %373, %367
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #8
  br label %390

375:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #8
  store i32 1348563561, ptr %272, align 4
  store i32 20, ptr %273, align 4
  store i32 100, ptr %9, align 4
  store i32 %333, ptr %274, align 4
  store i32 %327, ptr %275, align 4
  store i32 0, ptr %276, align 4
  store i32 0, ptr %277, align 4
  %376 = load i32, ptr %43, align 8
  %377 = shl i32 %376, 8
  %378 = or i32 %377, -2147483648
  %379 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %378, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %9, i16 noundef zeroext 28) #8
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %382

382:                                              ; preds = %381, %375
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  store i32 1348563561, ptr %278, align 4
  store i32 20, ptr %279, align 4
  store i32 100, ptr %8, align 4
  store i32 %333, ptr %280, align 4
  store i32 %327, ptr %281, align 4
  store i32 1, ptr %282, align 4
  store i32 0, ptr %283, align 4
  %383 = load i32, ptr %43, align 8
  %384 = shl i32 %383, 8
  %385 = or i32 %384, -2147483648
  %386 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %385, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %8, i16 noundef zeroext 28) #8
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %382
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %389

389:                                              ; preds = %388, %382
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  br label %390

390:                                              ; preds = %389, %374
  %391 = phi i32 [ %360, %374 ], [ %333, %389 ]
  %392 = add nuw nsw i32 %391, 1
  %393 = icmp ult i32 %391, 35
  br i1 %393, label %332, label %394

394:                                              ; preds = %390
  %395 = add nuw nsw i32 %327, 1
  %396 = icmp eq i32 %395, 4
  br i1 %396, label %397, label %326

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %7, i32 0, i32 2
  %399 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %7, i32 0, i32 3
  %400 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %7, i32 0, i32 1
  %401 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %7, i32 0, i32 4
  %402 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %7, i32 0, i32 5
  %403 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %7, i32 0, i32 6
  %404 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %6, i32 0, i32 2
  %405 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %6, i32 0, i32 3
  %406 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %6, i32 0, i32 1
  %407 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %6, i32 0, i32 4
  %408 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %6, i32 0, i32 5
  %409 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %6, i32 0, i32 6
  br label %410

410:                                              ; preds = %425, %397
  %411 = phi i32 [ %426, %425 ], [ 0, %397 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  store i32 1348563561, ptr %398, align 4
  store i32 20, ptr %399, align 4
  store i32 100, ptr %7, align 4
  store i32 %411, ptr %400, align 4
  store i32 3, ptr %401, align 4
  store i32 0, ptr %402, align 4
  store i32 188, ptr %403, align 4
  %412 = load i32, ptr %43, align 8
  %413 = shl i32 %412, 8
  %414 = or i32 %413, -2147483648
  %415 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %414, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %7, i16 noundef zeroext 28) #8
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %410
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %418

418:                                              ; preds = %417, %410
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  store i32 1348563561, ptr %404, align 4
  store i32 20, ptr %405, align 4
  store i32 100, ptr %6, align 4
  store i32 %411, ptr %406, align 4
  store i32 3, ptr %407, align 4
  store i32 1, ptr %408, align 4
  store i32 188, ptr %409, align 4
  %419 = load i32, ptr %43, align 8
  %420 = shl i32 %419, 8
  %421 = or i32 %420, -2147483648
  %422 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %421, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %6, i16 noundef zeroext 28) #8
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %418
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %425

425:                                              ; preds = %424, %418
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  %426 = add nuw nsw i32 %411, 1
  %427 = icmp eq i32 %426, 18
  br i1 %427, label %428, label %410

428:                                              ; preds = %443, %425
  %429 = phi i32 [ %444, %443 ], [ 18, %425 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  store i32 1348563561, ptr %398, align 4
  store i32 20, ptr %399, align 4
  store i32 100, ptr %7, align 4
  store i32 %429, ptr %400, align 4
  store i32 3, ptr %401, align 4
  store i32 0, ptr %402, align 4
  store i32 11877360, ptr %403, align 4
  %430 = load i32, ptr %43, align 8
  %431 = shl i32 %430, 8
  %432 = or i32 %431, -2147483648
  %433 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %432, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %7, i16 noundef zeroext 28) #8
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %428
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %436

436:                                              ; preds = %435, %428
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  store i32 1348563561, ptr %404, align 4
  store i32 20, ptr %405, align 4
  store i32 100, ptr %6, align 4
  store i32 %429, ptr %406, align 4
  store i32 3, ptr %407, align 4
  store i32 1, ptr %408, align 4
  store i32 11877360, ptr %409, align 4
  %437 = load i32, ptr %43, align 8
  %438 = shl i32 %437, 8
  %439 = or i32 %438, -2147483648
  %440 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %439, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %6, i16 noundef zeroext 28) #8
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %436
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %443

443:                                              ; preds = %442, %436
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  %444 = add nuw nsw i32 %429, 1
  %445 = icmp eq i32 %444, 36
  br i1 %445, label %446, label %428

446:                                              ; preds = %443
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %447 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %5, i32 0, i32 2
  store i32 1348563561, ptr %447, align 4
  %448 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %5, i32 0, i32 3
  store i32 20, ptr %448, align 4
  store i32 101, ptr %5, align 4
  %449 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %5, i32 0, i32 1
  store i32 3, ptr %449, align 4
  %450 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %5, i32 0, i32 4
  store i32 0, ptr %450, align 4
  %451 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %5, i32 0, i32 5
  store i32 0, ptr %451, align 4
  %452 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %5, i32 0, i32 6
  store i32 16777216, ptr %452, align 4
  %453 = load i32, ptr %43, align 8
  %454 = shl i32 %453, 8
  %455 = or i32 %454, -2147483648
  %456 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %455, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %5, i16 noundef zeroext 28) #8
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %446
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %459

459:                                              ; preds = %458, %446
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  %460 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %4, i32 0, i32 2
  store i32 1348563561, ptr %460, align 4
  %461 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %4, i32 0, i32 3
  store i32 20, ptr %461, align 4
  store i32 101, ptr %4, align 4
  %462 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %4, i32 0, i32 1
  store i32 3, ptr %462, align 4
  %463 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %4, i32 0, i32 4
  store i32 0, ptr %463, align 4
  %464 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %4, i32 0, i32 5
  store i32 1, ptr %464, align 4
  %465 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %4, i32 0, i32 6
  store i32 16777216, ptr %465, align 4
  %466 = load i32, ptr %43, align 8
  %467 = shl i32 %466, 8
  %468 = or i32 %467, -2147483648
  %469 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %468, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 28) #8
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %459
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %472

472:                                              ; preds = %471, %459
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %473 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 2
  store i32 1348563561, ptr %473, align 4
  %474 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 3
  store i32 20, ptr %474, align 4
  store i32 101, ptr %3, align 4
  %475 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 1
  store i32 3, ptr %475, align 4
  %476 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 4
  store i32 0, ptr %476, align 4
  %477 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 5
  store i32 0, ptr %477, align 4
  %478 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 6
  store i32 16777216, ptr %478, align 4
  %479 = load i32, ptr %43, align 8
  %480 = shl i32 %479, 8
  %481 = or i32 %480, -2147483648
  %482 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %481, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 28) #8
  %483 = icmp slt i32 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %472
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %485

485:                                              ; preds = %484, %472
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  %486 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %2, i32 0, i32 2
  store i32 1348563561, ptr %486, align 4
  %487 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %2, i32 0, i32 3
  store i32 20, ptr %487, align 4
  store i32 101, ptr %2, align 4
  %488 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %2, i32 0, i32 1
  store i32 3, ptr %488, align 4
  %489 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %2, i32 0, i32 4
  store i32 0, ptr %489, align 4
  %490 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %2, i32 0, i32 5
  store i32 1, ptr %490, align 4
  %491 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %2, i32 0, i32 6
  store i32 16777216, ptr %491, align 4
  %492 = load i32, ptr %43, align 8
  %493 = shl i32 %492, 8
  %494 = or i32 %493, -2147483648
  %495 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %494, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %2, i16 noundef zeroext 28) #8
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %485
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.7) #7
  br label %498

498:                                              ; preds = %497, %485
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  %499 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %500 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %499, i32 noundef 3520, i32 noundef 44) #9
  %501 = icmp eq ptr %500, null
  br i1 %501, label %541, label %502

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.s1810_mixer_state, ptr %500, i32 0, i32 1
  call void @__mutex_init(ptr noundef %503, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_sc1810_init_mixer.__key) #8
  %504 = getelementptr inbounds %struct.s1810_mixer_state, ptr %500, i32 0, i32 2
  call void @__mutex_init(ptr noundef %504, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_sc1810_init_mixer.__key.5) #8
  %505 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  store ptr %500, ptr %505, align 4
  %506 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 17
  store ptr @snd_sc1810_mixer_state_free, ptr %506, align 4
  store i16 1, ptr %500, align 8
  %507 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %508 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %507, i32 noundef 3520, i32 noundef 152) #9
  %509 = icmp eq ptr %508, null
  br i1 %509, label %541, label %510

510:                                              ; preds = %502
  store ptr %0, ptr %508, align 8
  %511 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %508, i32 0, i32 1
  store i32 0, ptr %511, align 4
  %512 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %508, i32 0, i32 3
  store i32 0, ptr %512, align 4
  %513 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %508, i32 0, i32 6
  store i32 1, ptr %513, align 8
  %514 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_s1810c_line_sw, ptr noundef nonnull %508) #8
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %517

516:                                              ; preds = %510
  call void @kfree(ptr noundef nonnull %508) #8
  br label %541

517:                                              ; preds = %510
  %518 = getelementptr inbounds %struct.snd_kcontrol, ptr %514, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %518, align 4
  %519 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %508, ptr noundef nonnull %514, i1 noundef zeroext true) #8
  %520 = icmp slt i32 %519, 0
  br i1 %520, label %541, label %521

521:                                              ; preds = %517
  %522 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %523 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %522, i32 noundef 3520, i32 noundef 152) #9
  %524 = icmp eq ptr %523, null
  br i1 %524, label %541, label %525

525:                                              ; preds = %521
  store ptr %0, ptr %523, align 8
  %526 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %523, i32 0, i32 1
  store i32 0, ptr %526, align 4
  %527 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %523, i32 0, i32 3
  store i32 0, ptr %527, align 4
  %528 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %523, i32 0, i32 6
  store i32 1, ptr %528, align 8
  %529 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_s1810c_mute_sw, ptr noundef nonnull %523) #8
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %532

531:                                              ; preds = %525
  call void @kfree(ptr noundef nonnull %523) #8
  br label %541

532:                                              ; preds = %525
  %533 = getelementptr inbounds %struct.snd_kcontrol, ptr %529, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %533, align 4
  %534 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %523, ptr noundef nonnull %529, i1 noundef zeroext true) #8
  %535 = icmp slt i32 %534, 0
  br i1 %535, label %541, label %536

536:                                              ; preds = %532
  %537 = call fastcc i32 @snd_s1810c_switch_init(ptr noundef %0, ptr noundef nonnull @snd_s1810c_48v_sw)
  %538 = icmp slt i32 %537, 0
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = call fastcc i32 @snd_s1810c_switch_init(ptr noundef %0, ptr noundef nonnull @snd_s1810c_ab_sw)
  br label %541

541:                                              ; preds = %539, %536, %532, %531, %521, %517, %516, %502, %498, %1
  %542 = phi i32 [ 0, %1 ], [ -12, %498 ], [ %519, %517 ], [ %534, %532 ], [ %537, %536 ], [ %540, %539 ], [ -12, %516 ], [ -12, %502 ], [ -12, %531 ], [ -12, %521 ]
  ret i32 %542
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_sc1810_mixer_state_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_s1810c_switch_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 152) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %4, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  store i32 1, ptr %9, align 8
  %10 = tail call ptr @snd_ctl_new1(ptr noundef %1, ptr noundef nonnull %4) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %14, align 4
  %15 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %4, ptr noundef nonnull %10, i1 noundef zeroext true) #8
  br label %16

16:                                               ; preds = %13, %12, %2
  %17 = phi i32 [ %15, %13 ], [ -12, %12 ], [ -12, %2 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_s1810c_line_sw_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_s1810c_line_sw_info.texts) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_s1810c_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_interface, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.s1810_mixer_state, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = call fastcc i32 @snd_s1810c_get_switch_state(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %12, %2
  tail call void @mutex_unlock(ptr noundef %9) #8
  %16 = tail call i32 @llvm.smin.i32(i32 %10, i32 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_s1810c_switch_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.s1810c_ctl_packet, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_interface, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %11 = getelementptr inbounds %struct.s1810_mixer_state, ptr %9, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = call fastcc i32 @snd_s1810c_get_switch_state(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %4)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, %16
  br i1 %18, label %48, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %10, align 4
  %21 = and i32 %20, -65537
  %22 = shl i32 %16, 16
  %23 = and i32 %22, 65536
  %24 = or i32 %21, %23
  store i32 %24, ptr %10, align 4
  %25 = load ptr, ptr %7, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = lshr i32 %20, 8
  %28 = and i32 %27, 255
  %29 = and i32 %16, 1
  %30 = getelementptr inbounds %struct.s1810_mixer_state, ptr %26, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %30) #8
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %25, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #8
  %33 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 2
  store i32 1348563561, ptr %33, align 4
  %34 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 3
  store i32 20, ptr %34, align 4
  store i32 0, ptr %3, align 4
  %35 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 4
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 5
  store i32 %28, ptr %37, align 4
  %38 = getelementptr inbounds %struct.s1810c_ctl_packet, ptr %3, i32 0, i32 6
  store i32 %29, ptr %38, align 4
  %39 = load i32, ptr %32, align 8
  %40 = shl i32 %39, 8
  %41 = or i32 %40, -2147483648
  %42 = call i32 @snd_usb_ctl_msg(ptr noundef %32, i32 noundef %41, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 28) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.7) #7
  br label %46

46:                                               ; preds = %44, %19
  %47 = phi i32 [ %42, %44 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #8
  call void @mutex_unlock(ptr noundef %30) #8
  br label %48

48:                                               ; preds = %46, %14, %2
  %49 = phi i32 [ %12, %2 ], [ 0, %14 ], [ %47, %46 ]
  call void @mutex_unlock(ptr noundef %11) #8
  %50 = xor i32 %49, -1
  %51 = lshr i32 %50, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_s1810c_get_switch_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.s1810c_state_packet, align 4
  %5 = alloca %struct.s1810c_state_packet, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.s1810_mixer_state, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.snd_usb_audio, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(252) %4, i8 0, i32 252, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(252) %5, i8 0, i32 252, i1 false) #8
  %15 = getelementptr inbounds [63 x i32], ptr %4, i32 0, i32 2
  store i32 1684368755, ptr %15, align 4
  %16 = getelementptr inbounds [63 x i32], ptr %4, i32 0, i32 3
  store i32 244, ptr %16, align 4
  %17 = load i32, ptr %14, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483520
  %20 = load i16, ptr %8, align 2
  %21 = call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %19, i8 noundef zeroext -95, i8 noundef zeroext 64, i16 noundef zeroext %20, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 252) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %21) #7
  br label %34

25:                                               ; preds = %3
  %26 = load i32, ptr %14, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483520
  %29 = load i16, ptr %8, align 2
  %30 = call i32 @snd_usb_ctl_msg(ptr noundef %14, i32 noundef %28, i8 noundef zeroext -94, i8 noundef zeroext -64, i16 noundef zeroext %29, i16 noundef zeroext 0, ptr noundef nonnull %5, i16 noundef zeroext 252) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef %30) #7
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %30, %32 ], [ %21, %23 ]
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %4) #8
  br label %41

36:                                               ; preds = %25
  %37 = getelementptr [63 x i32], ptr %5, i32 0, i32 %11
  %38 = load i32, ptr %37, align 4
  %39 = load i16, ptr %8, align 2
  %40 = add i16 %39, 1
  store i16 %40, ptr %8, align 2
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %4) #8
  store i32 %38, ptr %2, align 4
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i32 [ %35, %34 ], [ 0, %36 ]
  call void @mutex_unlock(ptr noundef %12) #8
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_s1810c_ab_sw_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_s1810c_ab_sw_info.texts) #8
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
