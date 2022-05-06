; ModuleID = '/llk/IR/sound/usb/mixer_us16x08.c_pt.bc'
source_filename = "../sound/usb/mixer_us16x08.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.snd_us16x08_control_params = type { ptr, i32, i32, i32, ptr, i32 }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_us16x08_meter_store = type { [16 x i32], [2 x i32], i32, i32, [16 x i32], ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.67, [128 x i8] }
%union.anon.67 = type { %union.anon.69 }
%union.anon.69 = type { [64 x i64] }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.63, [64 x i8] }
%union.anon.63 = type { %struct.anon.66, [40 x i8] }
%struct.anon.66 = type { i32, i32, [64 x i8], i64, i32 }

@snd_us16x08_route_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 8, ptr @snd_us16x08_route_info, ptr @snd_us16x08_route_get, ptr @snd_us16x08_route_put, %union.anon.73 zeroinitializer, i32 65545 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"Line Out Route\00", align 1
@master_controls = internal unnamed_addr constant [4 x %struct.snd_us16x08_control_params] [%struct.snd_us16x08_control_params { ptr @snd_us16x08_master_ctl, i32 129, i32 3, i32 16, ptr @.str.12, i32 127 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_bus_ctl, i32 69, i32 0, i32 16, ptr @.str.13, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_bus_ctl, i32 68, i32 0, i32 16, ptr @.str.14, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_bus_ctl, i32 131, i32 0, i32 16, ptr @.str.15, i32 0 }], align 4
@channel_controls = internal unnamed_addr constant [4 x %struct.snd_us16x08_control_params] [%struct.snd_us16x08_control_params { ptr @snd_us16x08_ch_boolean_ctl, i32 133, i32 0, i32 16, ptr @.str.16, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_ch_int_ctl, i32 129, i32 3, i32 16, ptr @.str.17, i32 127 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_ch_boolean_ctl, i32 131, i32 0, i32 16, ptr @.str.18, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_pan_int_ctl, i32 130, i32 5, i32 16, ptr @.str.19, i32 127 }], align 4
@eq_controls = internal unnamed_addr constant [11 x %struct.snd_us16x08_control_params] [%struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_switch_ctl, i32 48, i32 0, i32 16, ptr @.str.20, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 1, i32 3, i32 16, ptr @.str.21, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_low_freq_ctl, i32 17, i32 3, i32 16, ptr @.str.22, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 2, i32 3, i32 16, ptr @.str.23, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_freq_ctl, i32 18, i32 3, i32 16, ptr @.str.24, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_width_ctl, i32 34, i32 3, i32 16, ptr @.str.25, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 3, i32 3, i32 16, ptr @.str.26, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_freq_ctl, i32 19, i32 3, i32 16, ptr @.str.27, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_mid_width_ctl, i32 35, i32 3, i32 16, ptr @.str.28, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_gain_ctl, i32 4, i32 3, i32 16, ptr @.str.29, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_eq_high_freq_ctl, i32 20, i32 3, i32 16, ptr @.str.30, i32 0 }], align 4
@comp_controls = internal unnamed_addr constant [6 x %struct.snd_us16x08_control_params] [%struct.snd_us16x08_control_params { ptr @snd_us16x08_compswitch_ctl, i32 55, i32 0, i32 16, ptr @.str.31, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_comp_threshold_ctl, i32 50, i32 3, i32 16, ptr @.str.32, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_comp_ratio_ctl, i32 51, i32 3, i32 16, ptr @.str.33, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_comp_attack_ctl, i32 52, i32 3, i32 16, ptr @.str.34, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_comp_release_ctl, i32 53, i32 3, i32 16, ptr @.str.35, i32 0 }, %struct.snd_us16x08_control_params { ptr @snd_us16x08_comp_gain_ctl, i32 54, i32 3, i32 16, ptr @.str.36, i32 0 }], align 4
@snd_us16x08_meter_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 1, ptr @snd_us16x08_meter_info, ptr @snd_us16x08_meter_get, ptr @snd_us16x08_meter_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Level Meter\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@route_names = internal constant [10 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Master Left\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Master Right\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Output 1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Output 2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Output 3\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Output 4\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Output 5\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Output 6\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Output 7\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Output 8\00", align 1
@route_msg = internal unnamed_addr constant [20 x i8] c"a\02\03b\02\01A\01a\02\01b\02\01B\01C\01\00\00", align 1
@snd_us16x08_master_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 1, ptr @snd_us16x08_master_info, ptr @snd_us16x08_master_get, ptr @snd_us16x08_master_put, %union.anon.73 zeroinitializer, i32 2130772101 }, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Master Volume\00", align 1
@snd_us16x08_bus_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 1, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_bus_get, ptr @snd_us16x08_bus_put, %union.anon.73 zeroinitializer, i32 65537 }, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"DSP Bypass Switch\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Buss Out Switch\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Master Mute Switch\00", align 1
@mix_msg_out = internal unnamed_addr constant [11 x i8] c"a\02\02b\02\01\81\02\00\00\00", align 1
@bypass_msg_out = internal unnamed_addr constant [5 x i8] c"E\02\01\00\00", align 1
@bus_msg_out = internal unnamed_addr constant [5 x i8] c"D\02\01\00\00", align 1
@snd_us16x08_ch_boolean_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_channel_get, ptr @snd_us16x08_channel_put, %union.anon.73 zeroinitializer, i32 65537 }, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"Phase Switch\00", align 1
@snd_us16x08_ch_int_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_channel_get, ptr @snd_us16x08_channel_put, %union.anon.73 zeroinitializer, i32 2130772101 }, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"Line Volume\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Mute Switch\00", align 1
@snd_us16x08_pan_int_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_channel_get, ptr @snd_us16x08_channel_put, %union.anon.73 zeroinitializer, i32 2130772223 }, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"Pan Left-Right Volume\00", align 1
@mix_msg_in = internal unnamed_addr constant [11 x i8] c"a\02\04b\02\01\81\02\00\00\00", align 1
@snd_us16x08_eq_switch_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_eqswitch_get, ptr @snd_us16x08_eqswitch_put, %union.anon.73 zeroinitializer, i32 65537 }, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"EQ Switch\00", align 1
@snd_us16x08_eq_gain_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.73 zeroinitializer, i32 65560 }, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"EQ Low Volume\00", align 1
@snd_us16x08_eq_low_freq_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.73 zeroinitializer, i32 65567 }, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"EQ Low Frequency\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"EQ MidLow Volume\00", align 1
@snd_us16x08_eq_mid_freq_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.73 zeroinitializer, i32 65599 }, align 4
@.str.24 = private unnamed_addr constant [20 x i8] c"EQ MidLow Frequency\00", align 1
@snd_us16x08_eq_mid_width_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.73 zeroinitializer, i32 65542 }, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"EQ MidLow Q\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"EQ MidHigh Volume\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"EQ MidHigh Frequency\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"EQ MidHigh Q\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"EQ High Volume\00", align 1
@snd_us16x08_eq_high_freq_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_eq_get, ptr @snd_us16x08_eq_put, %union.anon.73 zeroinitializer, i32 536936479 }, align 4
@.str.30 = private unnamed_addr constant [18 x i8] c"EQ High Frequency\00", align 1
@eqs_msq = internal unnamed_addr constant [23 x i8] c"a\02\04b\02\01Q\02\04R\02\0CS\02\0FT\02\02U\02\01\00\00", align 1
@snd_us16x08_compswitch_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_ctl_boolean_mono_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.73 zeroinitializer, i32 65537 }, align 4
@.str.31 = private unnamed_addr constant [18 x i8] c"Compressor Switch\00", align 1
@snd_us16x08_comp_threshold_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.73 zeroinitializer, i32 536936480 }, align 4
@.str.32 = private unnamed_addr constant [28 x i8] c"Compressor Threshold Volume\00", align 1
@snd_us16x08_comp_ratio_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.73 zeroinitializer, i32 65550 }, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"Compressor Ratio\00", align 1
@snd_us16x08_comp_attack_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.73 zeroinitializer, i32 33620166 }, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"Compressor Attack\00", align 1
@snd_us16x08_comp_release_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.73 zeroinitializer, i32 16842851 }, align 4
@.str.35 = private unnamed_addr constant [19 x i8] c"Compressor Release\00", align 1
@snd_us16x08_comp_gain_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 3, i32 16, ptr @snd_us16x08_mix_info, ptr @snd_us16x08_comp_get, ptr @snd_us16x08_comp_put, %union.anon.73 zeroinitializer, i32 65556 }, align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"Compressor Volume\00", align 1
@comp_msg = internal unnamed_addr constant [29 x i8] c"a\02\04b\02\01\91\02\F0\92\02\0A\93\02\02\94\02\01\95\02\03\96\02\01\97\02\01\00\00", align 1
@ratio_map = internal unnamed_addr constant [15 x i8] c"\0A\0B\0D\0F\11\14\19\1E#(2<P\A0\FF", align 1
@mix_init_msg2 = internal unnamed_addr constant [10 x i8] c"b\02\00a\02\04\B1\01\00\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_us16x08_controls_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %247

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 152) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %248, label %11

11:                                               ; preds = %7
  store ptr %0, ptr %9, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %9, i32 0, i32 6
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %9, i32 0, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 7
  store i32 3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 6
  store i32 8, ptr %17, align 8
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 17
  store ptr null, ptr %18, align 4
  %19 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_us16x08_route_ctl, ptr noundef nonnull %9) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %248

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_kcontrol, ptr %19, i32 0, i32 1, i32 4
  %25 = tail call i32 @strscpy(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef 44) #10
  %26 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %9, ptr noundef nonnull %19, i1 noundef zeroext true) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %248, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 0
  store i32 0, ptr %29, align 8
  %30 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 1
  store i32 1, ptr %30, align 4
  %31 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 2
  store i32 4, ptr %31, align 8
  %32 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 3
  store i32 5, ptr %32, align 4
  %33 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 4
  store i32 6, ptr %33, align 8
  %34 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 5
  store i32 7, ptr %34, align 4
  %35 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 6
  store i32 8, ptr %35, align 8
  %36 = getelementptr %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 14, i32 7
  store i32 9, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %9, i32 0, i32 13
  store i32 255, ptr %37, align 4
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 96) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %248, label %41

41:                                               ; preds = %28
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 32, i32 16, i1 false) #10
  %42 = getelementptr i8, ptr %39, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %42, i8 0, i64 80, i1 false) #10
  br label %43

43:                                               ; preds = %77, %41
  %44 = phi i32 [ 0, %41 ], [ %82, %77 ]
  %45 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @master_controls, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @master_controls, i32 0, i32 %44, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @master_controls, i32 0, i32 %44, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @master_controls, i32 0, i32 %44, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @master_controls, i32 0, i32 %44, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq i32 %44, 0
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 152) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %248, label %59

59:                                               ; preds = %43
  store ptr %0, ptr %57, align 8
  %60 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %57, i32 0, i32 6
  store ptr null, ptr %60, align 8
  %61 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 3
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %57, i32 0, i32 3
  store i32 %48, ptr %63, align 4
  %64 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 7
  store i32 %50, ptr %64, align 4
  %65 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 6
  store i32 %52, ptr %65, align 8
  %66 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 17
  store ptr %39, ptr %66, align 4
  %67 = tail call ptr @snd_ctl_new1(ptr noundef %46, ptr noundef nonnull %57) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  tail call void @kfree(ptr noundef nonnull %57) #10
  br label %248

70:                                               ; preds = %59
  %71 = select i1 %55, ptr @elem_private_free, ptr @snd_usb_mixer_elem_free
  %72 = getelementptr inbounds %struct.snd_kcontrol, ptr %67, i32 0, i32 9
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.snd_kcontrol, ptr %67, i32 0, i32 1, i32 4
  %74 = tail call i32 @strscpy(ptr noundef %73, ptr noundef %54, i32 noundef 44) #10
  %75 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %57, ptr noundef nonnull %67, i1 noundef zeroext true) #10
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %248, label %77

77:                                               ; preds = %70
  %78 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @master_controls, i32 0, i32 %44, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 14
  store i32 %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %57, i32 0, i32 13
  store i32 1, ptr %81, align 4
  %82 = add nuw nsw i32 %44, 1
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %43

84:                                               ; preds = %116, %77
  %85 = phi i32 [ %136, %116 ], [ 0, %77 ]
  %86 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %85, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %85, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %85, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %85, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %97 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3520, i32 noundef 152) #9
  %98 = icmp eq ptr %97, null
  br i1 %98, label %248, label %99

99:                                               ; preds = %84
  store ptr %0, ptr %97, align 8
  %100 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %97, i32 0, i32 6
  store ptr null, ptr %100, align 8
  %101 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 1
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 3
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %97, i32 0, i32 3
  store i32 %89, ptr %103, align 4
  %104 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 7
  store i32 %91, ptr %104, align 4
  %105 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 6
  store i32 %93, ptr %105, align 8
  %106 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 17
  store ptr %39, ptr %106, align 4
  %107 = tail call ptr @snd_ctl_new1(ptr noundef %87, ptr noundef nonnull %97) #10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  tail call void @kfree(ptr noundef nonnull %97) #10
  br label %248

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.snd_kcontrol, ptr %107, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %111, align 4
  %112 = getelementptr inbounds %struct.snd_kcontrol, ptr %107, i32 0, i32 1, i32 4
  %113 = tail call i32 @strscpy(ptr noundef %112, ptr noundef %95, i32 noundef 44) #10
  %114 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %97, ptr noundef nonnull %107, i1 noundef zeroext true) #10
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %248, label %116

116:                                              ; preds = %110
  %117 = getelementptr [4 x %struct.snd_us16x08_control_params], ptr @channel_controls, i32 0, i32 %85, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 0
  store i32 %118, ptr %119, align 8
  %120 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 1
  store i32 %118, ptr %120, align 4
  %121 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 2
  store i32 %118, ptr %121, align 8
  %122 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 3
  store i32 %118, ptr %122, align 4
  %123 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 4
  store i32 %118, ptr %123, align 8
  %124 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 5
  store i32 %118, ptr %124, align 4
  %125 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 6
  store i32 %118, ptr %125, align 8
  %126 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 7
  store i32 %118, ptr %126, align 4
  %127 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 8
  store i32 %118, ptr %127, align 8
  %128 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 9
  store i32 %118, ptr %128, align 4
  %129 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 10
  store i32 %118, ptr %129, align 8
  %130 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 11
  store i32 %118, ptr %130, align 4
  %131 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 12
  store i32 %118, ptr %131, align 8
  %132 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 13
  store i32 %118, ptr %132, align 4
  %133 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 14
  store i32 %118, ptr %133, align 8
  %134 = getelementptr %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 14, i32 15
  store i32 %118, ptr %134, align 4
  %135 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %97, i32 0, i32 13
  store i32 65535, ptr %135, align 4
  %136 = add nuw nsw i32 %85, 1
  %137 = icmp eq i32 %136, 4
  br i1 %137, label %138, label %84

138:                                              ; preds = %116
  %139 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %140 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3264, i32 noundef 256) #9
  %141 = icmp eq ptr %140, null
  br i1 %141, label %248, label %142

142:                                              ; preds = %138
  %143 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 1
  %144 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 2
  %145 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %140, i8 12, i32 16, i1 false)
  %146 = getelementptr i8, ptr %140, i32 16
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %146, i8 5, i32 16, i1 false)
  %147 = getelementptr i8, ptr %140, i32 32
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %147, i8 -1, i32 16, i1 false)
  br label %148

148:                                              ; preds = %148, %142
  %149 = phi i32 [ %163, %148 ], [ 0, %142 ]
  %150 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 0, i32 3, i32 %149
  store i8 0, ptr %150, align 1
  %151 = getelementptr [16 x i8], ptr %143, i32 0, i32 %149
  store i8 12, ptr %151, align 1
  %152 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 1, i32 3, i32 %149
  store i8 0, ptr %152, align 1
  %153 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 1, i32 1, i32 %149
  store i8 14, ptr %153, align 1
  %154 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 1, i32 2, i32 %149
  store i8 2, ptr %154, align 1
  %155 = getelementptr [16 x i8], ptr %144, i32 0, i32 %149
  store i8 12, ptr %155, align 1
  %156 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 2, i32 3, i32 %149
  store i8 0, ptr %156, align 1
  %157 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 2, i32 1, i32 %149
  store i8 27, ptr %157, align 1
  %158 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 2, i32 2, i32 %149
  store i8 2, ptr %158, align 1
  %159 = getelementptr [16 x i8], ptr %145, i32 0, i32 %149
  store i8 12, ptr %159, align 1
  %160 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 3, i32 3, i32 %149
  store i8 0, ptr %160, align 1
  %161 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 3, i32 1, i32 %149
  store i8 15, ptr %161, align 1
  %162 = getelementptr [4 x [4 x [16 x i8]]], ptr %140, i32 0, i32 3, i32 2, i32 %149
  store i8 -1, ptr %162, align 1
  %163 = add nuw nsw i32 %149, 1
  %164 = icmp eq i32 %163, 16
  br i1 %164, label %168, label %148

165:                                              ; preds = %195
  %166 = add nuw nsw i32 %169, 1
  %167 = icmp eq i32 %166, 11
  br i1 %167, label %205, label %168

168:                                              ; preds = %165, %148
  %169 = phi i32 [ %166, %165 ], [ 0, %148 ]
  %170 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %169
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %169, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %169, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %169, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr [11 x %struct.snd_us16x08_control_params], ptr @eq_controls, i32 0, i32 %169, i32 4
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq i32 %169, 0
  %181 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %182 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 3520, i32 noundef 152) #9
  %183 = icmp eq ptr %182, null
  br i1 %183, label %248, label %184

184:                                              ; preds = %168
  store ptr %0, ptr %182, align 8
  %185 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %182, i32 0, i32 6
  store ptr null, ptr %185, align 8
  %186 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %182, i32 0, i32 1
  store i32 0, ptr %186, align 4
  %187 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %182, i32 0, i32 3
  store i32 0, ptr %187, align 4
  %188 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %182, i32 0, i32 3
  store i32 %173, ptr %188, align 4
  %189 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %182, i32 0, i32 7
  store i32 %175, ptr %189, align 4
  %190 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %182, i32 0, i32 6
  store i32 %177, ptr %190, align 8
  %191 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %182, i32 0, i32 17
  store ptr %140, ptr %191, align 4
  %192 = tail call ptr @snd_ctl_new1(ptr noundef %171, ptr noundef nonnull %182) #10
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  tail call void @kfree(ptr noundef nonnull %182) #10
  br label %248

195:                                              ; preds = %184
  %196 = select i1 %180, ptr @elem_private_free, ptr @snd_usb_mixer_elem_free
  %197 = getelementptr inbounds %struct.snd_kcontrol, ptr %192, i32 0, i32 9
  store ptr %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.snd_kcontrol, ptr %192, i32 0, i32 1, i32 4
  %199 = tail call i32 @strscpy(ptr noundef %198, ptr noundef %179, i32 noundef 44) #10
  %200 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %182, ptr noundef nonnull %192, i1 noundef zeroext true) #10
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %248, label %165

202:                                              ; preds = %231
  %203 = add nuw nsw i32 %206, 1
  %204 = icmp eq i32 %203, 6
  br i1 %204, label %237, label %205

205:                                              ; preds = %202, %165
  %206 = phi i32 [ %203, %202 ], [ 0, %165 ]
  %207 = getelementptr [6 x %struct.snd_us16x08_control_params], ptr @comp_controls, i32 0, i32 %206
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr [6 x %struct.snd_us16x08_control_params], ptr @comp_controls, i32 0, i32 %206, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr [6 x %struct.snd_us16x08_control_params], ptr @comp_controls, i32 0, i32 %206, i32 2
  %212 = load i32, ptr %211, align 4
  %213 = getelementptr [6 x %struct.snd_us16x08_control_params], ptr @comp_controls, i32 0, i32 %206, i32 3
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr [6 x %struct.snd_us16x08_control_params], ptr @comp_controls, i32 0, i32 %206, i32 4
  %216 = load ptr, ptr %215, align 4
  %217 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %218 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %217, i32 noundef 3520, i32 noundef 152) #9
  %219 = icmp eq ptr %218, null
  br i1 %219, label %248, label %220

220:                                              ; preds = %205
  store ptr %0, ptr %218, align 8
  %221 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %218, i32 0, i32 6
  store ptr null, ptr %221, align 8
  %222 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %218, i32 0, i32 1
  store i32 0, ptr %222, align 4
  %223 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %218, i32 0, i32 3
  store i32 0, ptr %223, align 4
  %224 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %218, i32 0, i32 3
  store i32 %210, ptr %224, align 4
  %225 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %218, i32 0, i32 7
  store i32 %212, ptr %225, align 4
  %226 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %218, i32 0, i32 6
  store i32 %214, ptr %226, align 8
  %227 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %218, i32 0, i32 17
  store ptr %39, ptr %227, align 4
  %228 = tail call ptr @snd_ctl_new1(ptr noundef %208, ptr noundef nonnull %218) #10
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  tail call void @kfree(ptr noundef nonnull %218) #10
  br label %248

231:                                              ; preds = %220
  %232 = getelementptr inbounds %struct.snd_kcontrol, ptr %228, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %232, align 4
  %233 = getelementptr inbounds %struct.snd_kcontrol, ptr %228, i32 0, i32 1, i32 4
  %234 = tail call i32 @strscpy(ptr noundef %233, ptr noundef %216, i32 noundef 44) #10
  %235 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %218, ptr noundef nonnull %228, i1 noundef zeroext true) #10
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %248, label %202

237:                                              ; preds = %202
  %238 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %239 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %238, i32 noundef 3520, i32 noundef 148) #9
  %240 = icmp eq ptr %239, null
  br i1 %240, label %248, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %239, i32 0, i32 2
  store i32 1, ptr %242, align 8
  %243 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %239, i32 0, i32 3
  store i32 0, ptr %243, align 4
  %244 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %239, i32 0, i32 5
  store ptr %39, ptr %244, align 8
  %245 = tail call fastcc i32 @add_new_ctl(ptr noundef %0, ptr noundef nonnull @snd_us16x08_meter_ctl, i32 noundef 177, i32 noundef 5, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %239, i1 noundef zeroext true, ptr noundef null)
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %241, %1
  br label %248

248:                                              ; preds = %247, %241, %237, %231, %230, %205, %195, %194, %168, %138, %110, %109, %84, %70, %69, %43, %28, %22, %21, %7
  %249 = phi i32 [ 0, %247 ], [ %245, %241 ], [ %26, %22 ], [ -12, %7 ], [ -12, %21 ], [ -12, %28 ], [ -12, %69 ], [ -12, %109 ], [ -12, %138 ], [ -12, %194 ], [ -12, %230 ], [ -12, %237 ], [ -12, %205 ], [ %235, %231 ], [ -12, %168 ], [ %200, %195 ], [ -12, %84 ], [ %114, %110 ], [ -12, %43 ], [ %75, %70 ]
  ret i32 %249
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_new_ctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef writeonly %8) unnamed_addr #0 {
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 152) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %9
  store ptr %0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %11, i32 0, i32 6
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %11, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %11, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %11, i32 0, i32 3
  store i32 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %11, i32 0, i32 7
  store i32 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %11, i32 0, i32 6
  store i32 %4, ptr %19, align 8
  %20 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %11, i32 0, i32 17
  store ptr %6, ptr %20, align 4
  %21 = tail call ptr @snd_ctl_new1(ptr noundef %1, ptr noundef nonnull %11) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %34

24:                                               ; preds = %13
  %25 = select i1 %7, ptr @elem_private_free, ptr @snd_usb_mixer_elem_free
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 9
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 1, i32 4
  %28 = tail call i32 @strscpy(ptr noundef %27, ptr noundef %5, i32 noundef 44) #10
  %29 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %11, ptr noundef nonnull %21, i1 noundef zeroext true) #10
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = icmp eq ptr %8, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  store ptr %11, ptr %8, align 4
  br label %34

34:                                               ; preds = %33, %31, %24, %23, %9
  %35 = phi i32 [ -12, %23 ], [ -12, %9 ], [ %29, %24 ], [ 0, %33 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @elem_private_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %3, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %3) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_route_info(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef 1, i32 noundef 10, ptr noundef nonnull @route_names) #10
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_route_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 14, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_route_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [20 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) @route_msg, i32 20, i1 false)
  %14 = icmp ult i32 %11, 2
  %15 = add i32 %11, 254
  %16 = select i1 %14, i8 2, i8 3
  %17 = select i1 %14, i32 %11, i32 %15
  %18 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 2
  store i8 %16, ptr %18, align 1
  %19 = trunc i32 %17 to i8
  %20 = add nuw nsw i8 %19, 1
  %21 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 5
  store i8 %20, ptr %21, align 1
  %22 = trunc i32 %9 to i8
  %23 = add i8 %22, 1
  %24 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 13
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 8
  %28 = shl i32 %27, 8
  %29 = or i32 %28, -2147483648
  %30 = call i32 @snd_usb_ctl_msg(ptr noundef %26, i32 noundef %29, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 20) #10
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %13
  %33 = shl nuw i32 1, %9
  %34 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, ptr %34, align 4
  %37 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %9
  store i32 %11, ptr %37, align 4
  br label %38

38:                                               ; preds = %32, %13
  %39 = zext i1 %31 to i32
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi i32 [ %39, %38 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_master_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr %5, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 255
  store i32 %12, ptr %8, align 8
  %13 = load i32, ptr %5, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_master_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 14, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_master_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [11 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = icmp ult i32 %11, %15
  %17 = and i32 %13, 255
  %18 = icmp ugt i32 %11, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %47, label %20

20:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 1 dereferenceable(11) @mix_msg_out, i32 11, i1 false)
  %21 = lshr i32 %13, 24
  %22 = sub i32 %11, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 8
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 6
  store i8 %27, ptr %28, align 1
  %29 = trunc i32 %9 to i8
  %30 = add i8 %29, 1
  %31 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 8
  %35 = shl i32 %34, 8
  %36 = or i32 %35, -2147483648
  %37 = call i32 @snd_usb_ctl_msg(ptr noundef %33, i32 noundef %36, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 11) #10
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = shl nuw i32 1, %9
  %41 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 4
  %44 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %9
  store i32 %11, ptr %44, align 4
  br label %45

45:                                               ; preds = %39, %20
  %46 = zext i1 %38 to i32
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi i32 [ %46, %45 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #10
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_bus_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %11 [
    i32 68, label %7
    i32 69, label %7
    i32 131, label %7
  ]

7:                                                ; preds = %2, %2, %2
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_bus_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [11 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %49 [
    i32 69, label %12
    i32 68, label %21
    i32 131, label %30
  ]

12:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @bypass_msg_out, i32 5, i1 false)
  %13 = trunc i32 %9 to i8
  %14 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483648
  %20 = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %19, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 5) #10
  br label %41

21:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @bus_msg_out, i32 5, i1 false)
  %22 = trunc i32 %9 to i8
  %23 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 2
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483648
  %29 = call i32 @snd_usb_ctl_msg(ptr noundef %25, i32 noundef %28, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 5) #10
  br label %41

30:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 1 dereferenceable(11) @mix_msg_out, i32 11, i1 false)
  %31 = trunc i32 %9 to i8
  %32 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 8
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 6
  store i8 -125, ptr %33, align 1
  %34 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 5
  store i8 1, ptr %34, align 1
  %35 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 8
  %38 = shl i32 %37, 8
  %39 = or i32 %38, -2147483648
  %40 = call i32 @snd_usb_ctl_msg(ptr noundef %36, i32 noundef %39, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 11) #10
  br label %41

41:                                               ; preds = %30, %21, %12
  %42 = phi i32 [ %40, %30 ], [ %29, %21 ], [ %20, %12 ]
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14
  store i32 %9, ptr %48, align 4
  br label %49

49:                                               ; preds = %44, %41, %2
  %50 = phi i32 [ 0, %41 ], [ 1, %44 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #10
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_channel_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 14, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_channel_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [11 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = icmp ult i32 %11, %15
  %17 = and i32 %13, 255
  %18 = icmp ugt i32 %11, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %47, label %20

20:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 1 dereferenceable(11) @mix_msg_in, i32 11, i1 false)
  %21 = lshr i32 %13, 24
  %22 = sub i32 %11, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 8
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 6
  store i8 %27, ptr %28, align 1
  %29 = trunc i32 %9 to i8
  %30 = add i8 %29, 1
  %31 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 8
  %35 = shl i32 %34, 8
  %36 = or i32 %35, -2147483648
  %37 = call i32 @snd_usb_ctl_msg(ptr noundef %33, i32 noundef %36, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 11) #10
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = shl nuw i32 1, %9
  %41 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 4
  %44 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %9
  store i32 %11, ptr %44, align 4
  br label %45

45:                                               ; preds = %39, %20
  %46 = zext i1 %38 to i32
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi i32 [ %46, %45 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #10
  ret i32 %48
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_mix_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr %5, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 255
  store i32 %12, ptr %8, align 8
  %13 = load i32, ptr %5, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_eqswitch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 15
  %12 = lshr i32 %10, 4
  %13 = and i32 %12, 15
  %14 = getelementptr [4 x [4 x [16 x i8]]], ptr %6, i32 0, i32 %11, i32 %13, i32 %8
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_eqswitch_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [23 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %3) #10
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 24
  %17 = add i32 %16, %13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 1 dereferenceable(23) @eqs_msq, i32 23, i1 false)
  %18 = trunc i32 %11 to i8
  %19 = add i8 %18, 1
  %20 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 5
  store i8 %19, ptr %20, align 1
  %21 = trunc i32 %17 to i8
  %22 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 20
  %23 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 17
  %24 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 14
  %25 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 11
  %26 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 8
  %27 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %28 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 0, i32 2, i32 %11
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr %23, align 1
  %30 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 0, i32 1, i32 %11
  %31 = load i8, ptr %30, align 1
  store i8 %31, ptr %24, align 1
  %32 = getelementptr [16 x i8], ptr %9, i32 0, i32 %11
  %33 = load i8, ptr %32, align 1
  store i8 %33, ptr %25, align 1
  store i8 1, ptr %26, align 1
  %34 = load ptr, ptr %27, align 4
  %35 = load i32, ptr %34, align 8
  %36 = shl i32 %35, 8
  %37 = or i32 %36, -2147483648
  %38 = call i32 @snd_usb_ctl_msg(ptr noundef %34, i32 noundef %37, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 23) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %94, label %40

40:                                               ; preds = %2
  %41 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 0, i32 3, i32 %11
  store i8 %21, ptr %41, align 1
  call void @msleep(i32 noundef 15) #10
  store i8 %21, ptr %22, align 1
  %42 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 1
  %43 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 1, i32 2, i32 %11
  %44 = load i8, ptr %43, align 1
  store i8 %44, ptr %23, align 1
  %45 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 1, i32 1, i32 %11
  %46 = load i8, ptr %45, align 1
  store i8 %46, ptr %24, align 1
  %47 = getelementptr [16 x i8], ptr %42, i32 0, i32 %11
  %48 = load i8, ptr %47, align 1
  store i8 %48, ptr %25, align 1
  store i8 2, ptr %26, align 1
  %49 = load ptr, ptr %27, align 4
  %50 = load i32, ptr %49, align 8
  %51 = shl i32 %50, 8
  %52 = or i32 %51, -2147483648
  %53 = call i32 @snd_usb_ctl_msg(ptr noundef %49, i32 noundef %52, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 23) #10
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %94, label %55

55:                                               ; preds = %40
  %56 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 1, i32 3, i32 %11
  store i8 %21, ptr %56, align 1
  call void @msleep(i32 noundef 15) #10
  store i8 %21, ptr %22, align 1
  %57 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 2
  %58 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 2, i32 2, i32 %11
  %59 = load i8, ptr %58, align 1
  store i8 %59, ptr %23, align 1
  %60 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 2, i32 1, i32 %11
  %61 = load i8, ptr %60, align 1
  store i8 %61, ptr %24, align 1
  %62 = getelementptr [16 x i8], ptr %57, i32 0, i32 %11
  %63 = load i8, ptr %62, align 1
  store i8 %63, ptr %25, align 1
  store i8 3, ptr %26, align 1
  %64 = load ptr, ptr %27, align 4
  %65 = load i32, ptr %64, align 8
  %66 = shl i32 %65, 8
  %67 = or i32 %66, -2147483648
  %68 = call i32 @snd_usb_ctl_msg(ptr noundef %64, i32 noundef %67, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 23) #10
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %55
  %71 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 2, i32 3, i32 %11
  store i8 %21, ptr %71, align 1
  call void @msleep(i32 noundef 15) #10
  store i8 %21, ptr %22, align 1
  %72 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 3
  %73 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 3, i32 2, i32 %11
  %74 = load i8, ptr %73, align 1
  store i8 %74, ptr %23, align 1
  %75 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 3, i32 1, i32 %11
  %76 = load i8, ptr %75, align 1
  store i8 %76, ptr %24, align 1
  %77 = getelementptr [16 x i8], ptr %72, i32 0, i32 %11
  %78 = load i8, ptr %77, align 1
  store i8 %78, ptr %25, align 1
  store i8 4, ptr %26, align 1
  %79 = load ptr, ptr %27, align 4
  %80 = load i32, ptr %79, align 8
  %81 = shl i32 %80, 8
  %82 = or i32 %81, -2147483648
  %83 = call i32 @snd_usb_ctl_msg(ptr noundef %79, i32 noundef %82, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 23) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %70
  %86 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 3, i32 3, i32 %11
  store i8 %21, ptr %86, align 1
  call void @msleep(i32 noundef 15) #10
  %87 = icmp eq i32 %83, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = shl nuw i32 1, %11
  %90 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %91 = load i32, ptr %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, ptr %90, align 4
  %93 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %11
  store i32 %17, ptr %93, align 4
  br label %94

94:                                               ; preds = %88, %85, %70, %55, %40, %2
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %3) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_eq_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 15
  %12 = add nsw i32 %11, -1
  %13 = lshr i32 %10, 4
  %14 = and i32 %13, 15
  %15 = getelementptr [4 x [4 x [16 x i8]]], ptr %6, i32 0, i32 %12, i32 %14, i32 %8
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_eq_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [23 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %3) #10
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = icmp ult i32 %13, %17
  %19 = and i32 %15, 255
  %20 = icmp ugt i32 %13, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %62, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 4
  %26 = and i32 %25, 15
  %27 = and i32 %24, 15
  %28 = add nsw i32 %27, -1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 1 dereferenceable(23) @eqs_msq, i32 23, i1 false)
  %29 = trunc i32 %13 to i8
  %30 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 %28
  %31 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 %28, i32 %26, i32 %11
  store i8 %29, ptr %31, align 1
  %32 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 %28, i32 3, i32 %11
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 20
  store i8 %33, ptr %34, align 1
  %35 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 %28, i32 2, i32 %11
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 17
  store i8 %36, ptr %37, align 1
  %38 = getelementptr [4 x [4 x [16 x i8]]], ptr %9, i32 0, i32 %28, i32 1, i32 %11
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 14
  store i8 %39, ptr %40, align 1
  %41 = getelementptr [16 x i8], ptr %30, i32 0, i32 %11
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 11
  store i8 %42, ptr %43, align 1
  %44 = trunc i32 %11 to i8
  %45 = add i8 %44, 1
  %46 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 5
  store i8 %45, ptr %46, align 1
  %47 = trunc i32 %27 to i8
  %48 = getelementptr inbounds [23 x i8], ptr %3, i32 0, i32 8
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 8
  %52 = shl i32 %51, 8
  %53 = or i32 %52, -2147483648
  %54 = call i32 @snd_usb_ctl_msg(ptr noundef %50, i32 noundef %53, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 23) #10
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %22
  %57 = shl nuw i32 1, %11
  %58 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, ptr %58, align 4
  %61 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %11
  store i32 %13, ptr %61, align 4
  br label %62

62:                                               ; preds = %56, %22, %2
  %63 = phi i32 [ -22, %2 ], [ 1, %22 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %3) #10
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_comp_get(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -50
  %12 = getelementptr [6 x [16 x i8]], ptr %6, i32 0, i32 %11, i32 %8
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_comp_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [29 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %3) #10
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = icmp ult i32 %13, %17
  %19 = and i32 %15, 255
  %20 = icmp ugt i32 %13, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %68, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -50
  %26 = trunc i32 %13 to i8
  %27 = getelementptr [6 x [16 x i8]], ptr %9, i32 0, i32 %25, i32 %11
  store i8 %26, ptr %27, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(29) %3, ptr noundef nonnull align 1 dereferenceable(29) @comp_msg, i32 29, i1 false)
  %28 = getelementptr [16 x i8], ptr %9, i32 0, i32 %11
  %29 = load i8, ptr %28, align 1
  %30 = add i8 %29, -32
  %31 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 8
  store i8 %30, ptr %31, align 1
  %32 = getelementptr [6 x [16 x i8]], ptr %9, i32 0, i32 1, i32 %11
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr [15 x i8], ptr @ratio_map, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 11
  store i8 %36, ptr %37, align 1
  %38 = getelementptr [6 x [16 x i8]], ptr %9, i32 0, i32 2, i32 %11
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %39, 2
  %41 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 14
  store i8 %40, ptr %41, align 1
  %42 = getelementptr [6 x [16 x i8]], ptr %9, i32 0, i32 3, i32 %11
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %43, 1
  %45 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 17
  store i8 %44, ptr %45, align 1
  %46 = getelementptr [6 x [16 x i8]], ptr %9, i32 0, i32 4, i32 %11
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 20
  store i8 %47, ptr %48, align 1
  %49 = getelementptr [6 x [16 x i8]], ptr %9, i32 0, i32 5, i32 %11
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 26
  store i8 %50, ptr %51, align 1
  %52 = trunc i32 %11 to i8
  %53 = add i8 %52, 1
  %54 = getelementptr inbounds [29 x i8], ptr %3, i32 0, i32 5
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 8
  %58 = shl i32 %57, 8
  %59 = or i32 %58, -2147483648
  %60 = call i32 @snd_usb_ctl_msg(ptr noundef %56, i32 noundef %59, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 29) #10
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %22
  %63 = shl nuw i32 1, %11
  %64 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 13
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, ptr %64, align 4
  %67 = getelementptr %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 14, i32 %11
  store i32 %13, ptr %67, align 4
  br label %68

68:                                               ; preds = %62, %22, %2
  %69 = phi i32 [ -22, %2 ], [ 1, %22 ], [ 1, %62 ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %3) #10
  ret i32 %69
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_us16x08_meter_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 34, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 32767, ptr %6, align 4
  store i32 0, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_us16x08_meter_get(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [10 x i8], align 1
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %29 [
    i32 0, label %14
    i32 1, label %30
    i32 2, label %40
    i32 3, label %50
  ]

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 369, ptr %4, align 4
  %15 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483648
  %20 = call i32 @snd_usb_ctl_msg(ptr noundef %16, i32 noundef %19, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %4, i16 noundef zeroext 4) #10
  %21 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 6
  call void @mutex_lock(ptr noundef %21) #10
  %22 = load ptr, ptr %15, align 4
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 %23, 8
  %25 = or i32 %24, -2147483520
  %26 = call i32 @snd_usb_ctl_msg(ptr noundef %22, i32 noundef %25, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 64) #10
  call void @mutex_unlock(ptr noundef %21) #10
  %27 = load i32, ptr %12, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %29

29:                                               ; preds = %89, %40, %30, %14, %2
  br label %108

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 8
  %35 = shl i32 %34, 8
  %36 = or i32 %35, -2147483520
  %37 = call i32 @snd_usb_ctl_msg(ptr noundef %33, i32 noundef %36, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 64) #10
  call void @mutex_unlock(ptr noundef %31) #10
  %38 = load i32, ptr %12, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %12, align 4
  br label %29

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %41) #10
  %42 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 8
  %45 = shl i32 %44, 8
  %46 = or i32 %45, -2147483520
  %47 = call i32 @snd_usb_ctl_msg(ptr noundef %43, i32 noundef %46, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 64) #10
  call void @mutex_unlock(ptr noundef %41) #10
  %48 = load i32, ptr %12, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %12, align 4
  br label %29

50:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @mix_init_msg2, i32 10, i1 false)
  %51 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  %60 = getelementptr [6 x [16 x i8]], ptr %56, i32 0, i32 5, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  %63 = icmp slt i32 %58, 17
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %76, label %84

65:                                               ; preds = %50
  %66 = and i32 %52, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %70, %52
  %72 = icmp sgt i32 %71, 1
  %73 = select i1 %72, i32 %52, i32 %70
  %74 = add i32 %73, 1
  store i32 %74, ptr %69, align 4
  %75 = and i32 %73, 31
  br label %89

76:                                               ; preds = %76, %54
  %77 = phi i32 [ %78, %76 ], [ %58, %54 ]
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %57, align 4
  %79 = getelementptr [6 x [16 x i8]], ptr %56, i32 0, i32 5, i32 %77
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp slt i32 %77, 16
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %76, label %84

84:                                               ; preds = %76, %54
  %85 = phi i32 [ %58, %54 ], [ %78, %76 ]
  %86 = add i32 %85, 1
  %87 = icmp sgt i32 %86, 16
  %88 = select i1 %87, i32 1, i32 %86
  store i32 %88, ptr %57, align 4
  br label %89

89:                                               ; preds = %84, %68, %65
  %90 = phi i32 [ %75, %68 ], [ %52, %65 ], [ %85, %84 ]
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 2
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = load i32, ptr %94, align 8
  %96 = shl i32 %95, 8
  %97 = or i32 %96, -2147483648
  %98 = call i32 @snd_usb_ctl_msg(ptr noundef %94, i32 noundef %97, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %5, i16 noundef zeroext 10) #10
  %99 = getelementptr inbounds %struct.snd_usb_audio, ptr %9, i32 0, i32 6
  call void @mutex_lock(ptr noundef %99) #10
  %100 = load ptr, ptr %93, align 4
  %101 = load i32, ptr %100, align 8
  %102 = shl i32 %101, 8
  %103 = or i32 %102, -2147483520
  %104 = call i32 @snd_usb_ctl_msg(ptr noundef %100, i32 noundef %103, i8 noundef zeroext 30, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %3, i16 noundef zeroext 64) #10
  call void @mutex_unlock(ptr noundef %99) #10
  store i32 0, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #10
  br label %29

105:                                              ; preds = %186
  %106 = icmp eq ptr %11, null
  %107 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br i1 %106, label %189, label %190

108:                                              ; preds = %186, %29
  %109 = phi i32 [ %187, %186 ], [ 0, %29 ]
  %110 = mul nuw nsw i32 %109, 10
  %111 = add nuw nsw i32 %110, 12
  %112 = getelementptr i8, ptr %3, i32 %111
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %110, 13
  %116 = getelementptr i8, ptr %3, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or i32 %119, %114
  %121 = add nuw nsw i32 %110, 4
  %122 = getelementptr i8, ptr %3, i32 %121
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 97
  br i1 %124, label %125, label %186

125:                                              ; preds = %108
  %126 = add nuw nsw i32 %110, 5
  %127 = getelementptr i8, ptr %3, i32 %126
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 2
  br i1 %129, label %130, label %163

130:                                              ; preds = %125
  %131 = add nuw nsw i32 %110, 6
  %132 = getelementptr i8, ptr %3, i32 %131
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, 4
  br i1 %134, label %135, label %163

135:                                              ; preds = %130
  %136 = add nuw nsw i32 %110, 7
  %137 = getelementptr i8, ptr %3, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = icmp eq i8 %138, 98
  br i1 %139, label %140, label %163

140:                                              ; preds = %135
  %141 = add nuw nsw i32 %110, 10
  %142 = getelementptr i8, ptr %3, i32 %141
  %143 = load i8, ptr %142, align 1
  %144 = icmp eq i8 %143, 114
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = add nuw nsw i32 %110, 9
  %147 = getelementptr i8, ptr %3, i32 %146
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = add nsw i32 %149, -1
  %151 = getelementptr [16 x i32], ptr %11, i32 0, i32 %150
  store i32 %120, ptr %151, align 4
  %152 = load i8, ptr %142, align 1
  br label %153

153:                                              ; preds = %145, %140
  %154 = phi i8 [ %152, %145 ], [ %143, %140 ]
  %155 = icmp eq i8 %154, -78
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = add nuw nsw i32 %110, 9
  %158 = getelementptr i8, ptr %3, i32 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %160, -1
  %162 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 %161
  store i32 %120, ptr %162, align 4
  br label %163

163:                                              ; preds = %156, %153, %135, %130, %125
  %164 = load i8, ptr %122, align 1
  %165 = icmp eq i8 %164, 97
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  %167 = load i8, ptr %127, align 1
  %168 = icmp eq i8 %167, 2
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = add nuw nsw i32 %110, 6
  %171 = getelementptr i8, ptr %3, i32 %170
  %172 = load i8, ptr %171, align 1
  %173 = icmp eq i8 %172, 2
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = add nuw nsw i32 %110, 7
  %176 = getelementptr i8, ptr %3, i32 %175
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, 98
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = add nuw nsw i32 %110, 9
  %181 = getelementptr i8, ptr %3, i32 %180
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %183, -1
  %185 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 1, i32 %184
  store i32 %120, ptr %185, align 4
  br label %186

186:                                              ; preds = %179, %174, %169, %166, %163, %108
  %187 = add nuw nsw i32 %109, 1
  %188 = icmp eq i32 %187, 6
  br i1 %188, label %105, label %108

189:                                              ; preds = %105
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %107, i8 0, i64 132, i1 false)
  br label %290

190:                                              ; preds = %105
  %191 = load i32, ptr %11, align 4
  store i32 %191, ptr %107, align 4
  %192 = getelementptr [16 x i32], ptr %11, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr [128 x i32], ptr %107, i32 0, i32 1
  store i32 %193, ptr %194, align 4
  %195 = getelementptr [16 x i32], ptr %11, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  store i32 %196, ptr %197, align 4
  %198 = getelementptr [16 x i32], ptr %11, i32 0, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr [128 x i32], ptr %107, i32 0, i32 3
  store i32 %199, ptr %200, align 4
  %201 = getelementptr [16 x i32], ptr %11, i32 0, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  store i32 %202, ptr %203, align 4
  %204 = getelementptr [16 x i32], ptr %11, i32 0, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr [128 x i32], ptr %107, i32 0, i32 5
  store i32 %205, ptr %206, align 4
  %207 = getelementptr [16 x i32], ptr %11, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  store i32 %208, ptr %209, align 4
  %210 = getelementptr [16 x i32], ptr %11, i32 0, i32 7
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr [128 x i32], ptr %107, i32 0, i32 7
  store i32 %211, ptr %212, align 4
  %213 = getelementptr [16 x i32], ptr %11, i32 0, i32 8
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  store i32 %214, ptr %215, align 4
  %216 = getelementptr [16 x i32], ptr %11, i32 0, i32 9
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr [128 x i32], ptr %107, i32 0, i32 9
  store i32 %217, ptr %218, align 4
  %219 = getelementptr [16 x i32], ptr %11, i32 0, i32 10
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 5
  store i32 %220, ptr %221, align 4
  %222 = getelementptr [16 x i32], ptr %11, i32 0, i32 11
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr [128 x i32], ptr %107, i32 0, i32 11
  store i32 %223, ptr %224, align 4
  %225 = getelementptr [16 x i32], ptr %11, i32 0, i32 12
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 6
  store i32 %226, ptr %227, align 4
  %228 = getelementptr [16 x i32], ptr %11, i32 0, i32 13
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr [128 x i32], ptr %107, i32 0, i32 13
  store i32 %229, ptr %230, align 4
  %231 = getelementptr [16 x i32], ptr %11, i32 0, i32 14
  %232 = load i32, ptr %231, align 4
  %233 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 7
  store i32 %232, ptr %233, align 4
  %234 = getelementptr [16 x i32], ptr %11, i32 0, i32 15
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr [128 x i32], ptr %107, i32 0, i32 15
  store i32 %235, ptr %236, align 4
  %237 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 8
  store i32 %238, ptr %239, align 4
  %240 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 1, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr [128 x i32], ptr %107, i32 0, i32 17
  store i32 %241, ptr %242, align 4
  %243 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 0
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 9
  store i32 %244, ptr %245, align 4
  %246 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr [128 x i32], ptr %107, i32 0, i32 19
  store i32 %247, ptr %248, align 4
  %249 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 2
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 10
  store i32 %250, ptr %251, align 4
  %252 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr [128 x i32], ptr %107, i32 0, i32 21
  store i32 %253, ptr %254, align 4
  %255 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 4
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 11
  store i32 %256, ptr %257, align 4
  %258 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 5
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr [128 x i32], ptr %107, i32 0, i32 23
  store i32 %259, ptr %260, align 4
  %261 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 6
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 12
  store i32 %262, ptr %263, align 4
  %264 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 7
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr [128 x i32], ptr %107, i32 0, i32 25
  store i32 %265, ptr %266, align 4
  %267 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 8
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 13
  store i32 %268, ptr %269, align 4
  %270 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 9
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr [128 x i32], ptr %107, i32 0, i32 27
  store i32 %271, ptr %272, align 4
  %273 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 10
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 14
  store i32 %274, ptr %275, align 4
  %276 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 11
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr [128 x i32], ptr %107, i32 0, i32 29
  store i32 %277, ptr %278, align 4
  %279 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 12
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 15
  store i32 %280, ptr %281, align 4
  %282 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 13
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr [128 x i32], ptr %107, i32 0, i32 31
  store i32 %283, ptr %284, align 4
  %285 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 14
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 16
  store i32 %286, ptr %287, align 4
  %288 = getelementptr %struct.snd_us16x08_meter_store, ptr %11, i32 0, i32 4, i32 15
  %289 = load i32, ptr %288, align 4
  br label %290

290:                                              ; preds = %190, %189
  %291 = phi i32 [ %289, %190 ], [ 0, %189 ]
  %292 = getelementptr [128 x i32], ptr %107, i32 0, i32 33
  store i32 %291, ptr %292, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @snd_us16x08_meter_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 15
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %10, i32 0, i32 3
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_us16x08_meter_store, ptr %10, i32 0, i32 2
  store i32 %4, ptr %12, align 4
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 1, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
