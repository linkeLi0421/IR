; ModuleID = '/llk/IR/sound/usb/mixer_scarlett.c_pt.bc'
source_filename = "../sound/usb/mixer_scarlett.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scarlett_device_info = type { i32, i32, i32, i32, %struct.scarlett_mixer_elem_enum_info, %struct.scarlett_mixer_elem_enum_info, [18 x i32], i32, [10 x %struct.scarlett_mixer_control] }
%struct.scarlett_mixer_elem_enum_info = type { i32, i32, [5 x i32], ptr }
%struct.scarlett_mixer_control = type { i8, i8, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.usb_mixer_interface = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.wait_queue_head, ptr, ptr, [6 x i8], ptr, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_mixer_elem_list = type { ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.usb_mixer_elem_info = type { %struct.usb_mixer_elem_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i8, i8, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.63, [64 x i8] }
%union.anon.63 = type { %struct.anon.66, [40 x i8] }
%struct.anon.66 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.67, [128 x i8] }
%union.anon.67 = type { %union.anon.69 }
%union.anon.69 = type { [64 x i64] }

@snd_scarlett_controls_create.sample_rate_buffer = internal global [4 x i8] c"\80\BB\00\00", align 1
@s6i6_info = internal constant %struct.scarlett_device_info { i32 18, i32 8, i32 6, i32 6, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 27, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 19, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, [18 x i32] [i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11], i32 9, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.6 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 1, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 3, i8 3, ptr null }, %struct.scarlett_mixer_control { i8 4, i8 3, ptr null }, %struct.scarlett_mixer_control zeroinitializer] }, align 4
@s8i6_info = internal constant %struct.scarlett_device_info { i32 18, i32 6, i32 8, i32 6, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 25, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 19, [5 x i32] [i32 0, i32 12, i32 16, i32 18, i32 18], ptr null }, [18 x i32] [i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11], i32 7, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.6 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 3, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 4, i8 2, ptr null }, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer] }, align 4
@s18i6_info = internal constant %struct.scarlett_device_info { i32 18, i32 6, i32 18, i32 6, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 31, [5 x i32] [i32 0, i32 6, i32 14, i32 16, i32 24], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 25, [5 x i32] [i32 0, i32 6, i32 14, i32 16, i32 24], ptr null }, [18 x i32] [i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 0, i32 1], i32 5, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.6 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer, %struct.scarlett_mixer_control zeroinitializer] }, align 4
@s18i8_info = internal constant %struct.scarlett_device_info { i32 18, i32 8, i32 18, i32 8, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 35, [5 x i32] [i32 0, i32 8, i32 16, i32 18, i32 26], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 27, [5 x i32] [i32 0, i32 8, i32 16, i32 18, i32 26], ptr null }, [18 x i32] [i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 16, i32 17, i32 0, i32 1], i32 10, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.8 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.9 }, %struct.scarlett_mixer_control { i8 3, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 1, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 1, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 1, ptr null }, %struct.scarlett_mixer_control { i8 2, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 3, i8 2, ptr null }, %struct.scarlett_mixer_control { i8 4, i8 2, ptr null }] }, align 4
@s18i20_info = internal constant %struct.scarlett_device_info { i32 18, i32 8, i32 18, i32 20, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 47, [5 x i32] [i32 0, i32 20, i32 28, i32 30, i32 38], ptr null }, %struct.scarlett_mixer_elem_enum_info { i32 -1, i32 39, [5 x i32] [i32 0, i32 20, i32 28, i32 30, i32 38], ptr null }, [18 x i32] [i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 0, i32 1], i32 10, [10 x %struct.scarlett_mixer_control] [%struct.scarlett_mixer_control { i8 0, i8 0, ptr @.str.5 }, %struct.scarlett_mixer_control { i8 1, i8 0, ptr @.str.10 }, %struct.scarlett_mixer_control { i8 2, i8 0, ptr @.str.11 }, %struct.scarlett_mixer_control { i8 3, i8 0, ptr @.str.12 }, %struct.scarlett_mixer_control { i8 4, i8 0, ptr @.str.13 }, %struct.scarlett_mixer_control { i8 5, i8 0, ptr @.str.7 }, %struct.scarlett_mixer_control { i8 6, i8 0, ptr @.str.14 }, %struct.scarlett_mixer_control { i8 7, i8 0, ptr @.str.15 }, %struct.scarlett_mixer_control { i8 8, i8 0, ptr @.str.16 }, %struct.scarlett_mixer_control { i8 9, i8 0, ptr @.str.17 }] }, align 4
@.str = private unnamed_addr constant [33 x i8] c"Matrix %02d Input Playback Route\00", align 1
@usb_scarlett_ctl_dynamic_enum = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @scarlett_ctl_enum_dynamic_info, ptr @scarlett_ctl_enum_get, ptr @scarlett_ctl_enum_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Matrix %02d Mix %c Playback Volume\00", align 1
@usb_scarlett_ctl = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @scarlett_ctl_info, ptr @scarlett_ctl_get, ptr @scarlett_ctl_put, %union.anon.73 { ptr @db_scale_scarlett_gain }, i32 6 }, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Input Source %02d Capture Route\00", align 1
@usb_scarlett_ctl_enum = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @scarlett_ctl_enum_info, ptr @scarlett_ctl_enum_get, ptr @scarlett_ctl_enum_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Sample Clock Source\00", align 1
@opt_clock = internal constant %struct.scarlett_mixer_elem_enum_info { i32 1, i32 3, [5 x i32] zeroinitializer, ptr @.compoundliteral.44 }, align 4
@usb_scarlett_ctl_sync = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 5, i32 0, ptr @scarlett_ctl_enum_info, ptr @scarlett_ctl_meter_get, ptr null, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Sample Clock Sync Status\00", align 1
@opt_sync = internal constant %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral.47 }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Monitor\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Headphone 1\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Headphone 2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Line 3/4\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Line 5/6\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Line 7/8\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Line 9/10\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ADAT 1/2\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ADAT 3/4\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ADAT 5/6\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"ADAT 7/8\00", align 1
@usb_scarlett_ctl_switch = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @scarlett_ctl_switch_info, ptr @scarlett_ctl_switch_get, ptr @scarlett_ctl_switch_put, %union.anon.73 zeroinitializer, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@usb_scarlett_ctl_master = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @scarlett_ctl_info, ptr @scarlett_ctl_get, ptr @scarlett_ctl_put, %union.anon.73 { ptr @db_scale_scarlett_gain }, i32 6 }, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Input %d Impedance Switch\00", align 1
@opt_impedance = internal constant %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral }, align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"Input %d Pad Switch\00", align 1
@opt_pad = internal constant %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral.32 }, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"Input %d Gain Switch\00", align 1
@opt_gain = internal constant %struct.scarlett_mixer_elem_enum_info { i32 0, i32 2, [5 x i32] zeroinitializer, ptr @.compoundliteral.35 }, align 4
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@db_scale_scarlett_gain = internal constant [4 x i32] [i32 1, i32 8, i32 -12800, i32 100], align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"Master %d (%s) Playback Switch\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Master %d (%s) Playback Volume\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Master %dL (%s) Source Playback Enum\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Master %dR (%s) Source Playback Enum\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"Hi-Z\00", align 1
@.compoundliteral = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.29], align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"0dB\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"-10dB\00", align 1
@.compoundliteral.32 = internal constant [2 x ptr] [ptr @.str.30, ptr @.str.31], align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"Lo\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"Hi\00", align 1
@.compoundliteral.35 = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.34], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"Mix %c\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ADAT %d\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"SPDIF %d\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Analog %d\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"PCM %d\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ADAT\00", align 1
@.compoundliteral.44 = internal constant [3 x ptr] [ptr @.str.42, ptr @.str.7, ptr @.str.43], align 4
@.str.45 = private unnamed_addr constant [8 x i8] c"No Lock\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.compoundliteral.47 = internal constant [2 x ptr] [ptr @.str.45, ptr @.str.46], align 4
@switch.table.snd_scarlett_controls_create = private unnamed_addr constant [10 x ptr] [ptr @s8i6_info, ptr @s18i6_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s18i20_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s6i6_info, ptr @s18i8_info], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_scarlett_controls_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [44 x i8], align 1
  %3 = alloca [44 x i8], align 1
  %4 = alloca [44 x i8], align 1
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_interface, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %367, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.snd_usb_audio, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -305496066
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 31)
  %15 = icmp ult i32 %14, 10
  br i1 %15, label %16, label %367

16:                                               ; preds = %9
  %17 = trunc i32 %14 to i16
  %18 = lshr i16 803, %17
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %367, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds [10 x ptr], ptr @switch.table.snd_scarlett_controls_create, i32 0, i32 %14
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %3, i8 0, i32 44, i1 false) #9, !annotation !8
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 152) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %247, label %27

27:                                               ; preds = %21
  store ptr %0, ptr %25, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %25, i32 0, i32 6
  store ptr @scarlett_ctl_resume, ptr %28, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 1
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %25, i32 0, i32 3
  store i32 10, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 7
  store i32 4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 6
  store i32 1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %25, i32 0, i32 17
  store ptr null, ptr %34, align 4
  %35 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_switch, ptr noundef nonnull %25) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %25) #9
  br label %247

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %39, align 4
  %40 = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1, i32 4
  %41 = tail call i32 @strscpy(ptr noundef %40, ptr noundef nonnull @.str.18, i32 noundef 44) #9
  %42 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %25, ptr noundef nonnull %35, i1 noundef zeroext true) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %247, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 152) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %247, label %48

48:                                               ; preds = %44
  store ptr %0, ptr %46, align 8
  %49 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %46, i32 0, i32 6
  store ptr @scarlett_ctl_resume, ptr %49, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %46, i32 0, i32 1
  store i32 2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %46, i32 0, i32 3
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %46, i32 0, i32 3
  store i32 10, ptr %52, align 4
  %53 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %46, i32 0, i32 7
  store i32 4, ptr %53, align 4
  %54 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %46, i32 0, i32 6
  store i32 1, ptr %54, align 8
  %55 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %46, i32 0, i32 17
  store ptr null, ptr %55, align 4
  %56 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_master, ptr noundef nonnull %46) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  tail call void @kfree(ptr noundef nonnull %46) #9
  br label %247

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.snd_kcontrol, ptr %56, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %60, align 4
  %61 = getelementptr inbounds %struct.snd_kcontrol, ptr %56, i32 0, i32 1, i32 4
  %62 = tail call i32 @strscpy(ptr noundef %61, ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %63 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %46, ptr noundef nonnull %56, i1 noundef zeroext true) #9
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %247, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.scarlett_device_info, ptr %23, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %249

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.scarlett_device_info, ptr %23, i32 0, i32 4
  br label %71

71:                                               ; preds = %244, %69
  %72 = phi i32 [ 0, %69 ], [ %245, %244 ]
  %73 = getelementptr %struct.scarlett_device_info, ptr %23, i32 0, i32 8, i32 %72
  %74 = getelementptr %struct.scarlett_device_info, ptr %23, i32 0, i32 8, i32 %72, i32 1
  %75 = load i8, ptr %74, align 1
  switch i8 %75, label %244 [
    i8 0, label %76
    i8 1, label %172
    i8 2, label %196
    i8 3, label %220
  ]

76:                                               ; preds = %71
  %77 = load i8, ptr %73, align 4
  %78 = zext i8 %77 to i32
  %79 = getelementptr %struct.scarlett_device_info, ptr %23, i32 0, i32 8, i32 %72, i32 2
  %80 = load ptr, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false) #9, !annotation !8
  %81 = add nuw nsw i32 %78, 1
  %82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.24, i32 noundef %81, ptr noundef %80) #9
  %83 = shl nuw nsw i32 %78, 1
  %84 = or i32 %83, 1
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %86 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 152) #10
  %87 = icmp eq ptr %86, null
  br i1 %87, label %169, label %88

88:                                               ; preds = %76
  store ptr %0, ptr %86, align 8
  %89 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %86, i32 0, i32 6
  store ptr @scarlett_ctl_resume, ptr %89, align 8
  %90 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %86, i32 0, i32 1
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %86, i32 0, i32 3
  store i32 %84, ptr %91, align 4
  %92 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %86, i32 0, i32 3
  store i32 10, ptr %92, align 4
  %93 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %86, i32 0, i32 7
  store i32 4, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %86, i32 0, i32 6
  store i32 2, ptr %94, align 8
  %95 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %86, i32 0, i32 17
  store ptr null, ptr %95, align 4
  %96 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_switch, ptr noundef nonnull %86) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %167, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.snd_kcontrol, ptr %96, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %99, align 4
  %100 = getelementptr inbounds %struct.snd_kcontrol, ptr %96, i32 0, i32 1, i32 4
  %101 = call i32 @strscpy(ptr noundef %100, ptr noundef nonnull %2, i32 noundef 44) #9
  %102 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %86, ptr noundef nonnull %96, i1 noundef zeroext true) #9
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %169, label %104

104:                                              ; preds = %98
  %105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.25, i32 noundef %81, ptr noundef %80) #9
  %106 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %107 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3520, i32 noundef 152) #10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %169, label %109

109:                                              ; preds = %104
  store ptr %0, ptr %107, align 8
  %110 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %107, i32 0, i32 6
  store ptr @scarlett_ctl_resume, ptr %110, align 8
  %111 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %107, i32 0, i32 1
  store i32 2, ptr %111, align 4
  %112 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %107, i32 0, i32 3
  store i32 %84, ptr %112, align 4
  %113 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %107, i32 0, i32 3
  store i32 10, ptr %113, align 4
  %114 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %107, i32 0, i32 7
  store i32 4, ptr %114, align 4
  %115 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %107, i32 0, i32 6
  store i32 2, ptr %115, align 8
  %116 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %107, i32 0, i32 17
  store ptr null, ptr %116, align 4
  %117 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_master, ptr noundef nonnull %107) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %167, label %119

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.snd_kcontrol, ptr %117, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %120, align 4
  %121 = getelementptr inbounds %struct.snd_kcontrol, ptr %117, i32 0, i32 1, i32 4
  %122 = call i32 @strscpy(ptr noundef %121, ptr noundef nonnull %2, i32 noundef 44) #9
  %123 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %107, ptr noundef nonnull %117, i1 noundef zeroext true) #9
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %169, label %125

125:                                              ; preds = %119
  %126 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.26, i32 noundef %81, ptr noundef %80) #9
  %127 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %128 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 152) #10
  %129 = icmp eq ptr %128, null
  br i1 %129, label %169, label %130

130:                                              ; preds = %125
  store ptr %0, ptr %128, align 8
  %131 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %128, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %131, align 8
  %132 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %128, i32 0, i32 1
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %128, i32 0, i32 3
  store i32 %83, ptr %133, align 4
  %134 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %128, i32 0, i32 3
  store i32 51, ptr %134, align 4
  %135 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %128, i32 0, i32 7
  store i32 4, ptr %135, align 4
  %136 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %128, i32 0, i32 6
  store i32 1, ptr %136, align 8
  %137 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %128, i32 0, i32 17
  store ptr %70, ptr %137, align 4
  %138 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %128) #9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %167, label %140

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.snd_kcontrol, ptr %138, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %141, align 4
  %142 = getelementptr inbounds %struct.snd_kcontrol, ptr %138, i32 0, i32 1, i32 4
  %143 = call i32 @strscpy(ptr noundef %142, ptr noundef nonnull %2, i32 noundef 44) #9
  %144 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %128, ptr noundef nonnull %138, i1 noundef zeroext true) #9
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %140
  %147 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.27, i32 noundef %81, ptr noundef %80) #9
  %148 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %149 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %148, i32 noundef 3520, i32 noundef 152) #10
  %150 = icmp eq ptr %149, null
  br i1 %150, label %169, label %151

151:                                              ; preds = %146
  store ptr %0, ptr %149, align 8
  %152 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %149, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %152, align 8
  %153 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %149, i32 0, i32 1
  store i32 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %149, i32 0, i32 3
  store i32 %84, ptr %154, align 4
  %155 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %149, i32 0, i32 3
  store i32 51, ptr %155, align 4
  %156 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %149, i32 0, i32 7
  store i32 4, ptr %156, align 4
  %157 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %149, i32 0, i32 6
  store i32 1, ptr %157, align 8
  %158 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %149, i32 0, i32 17
  store ptr %70, ptr %158, align 4
  %159 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %149) #9
  %160 = icmp eq ptr %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.snd_kcontrol, ptr %159, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %162, align 4
  %163 = getelementptr inbounds %struct.snd_kcontrol, ptr %159, i32 0, i32 1, i32 4
  %164 = call i32 @strscpy(ptr noundef %163, ptr noundef nonnull %2, i32 noundef 44) #9
  %165 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %149, ptr noundef nonnull %159, i1 noundef zeroext true) #9
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %169, label %171

167:                                              ; preds = %151, %130, %109, %88
  %168 = phi ptr [ %86, %88 ], [ %107, %109 ], [ %128, %130 ], [ %149, %151 ]
  call void @kfree(ptr noundef nonnull %168) #9
  br label %169

169:                                              ; preds = %167, %161, %146, %140, %125, %119, %104, %98, %76
  %170 = phi i32 [ -12, %167 ], [ -12, %125 ], [ %144, %140 ], [ -12, %104 ], [ %123, %119 ], [ -12, %76 ], [ %102, %98 ], [ %165, %161 ], [ -12, %146 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #9
  br label %247

171:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #9
  br label %244

172:                                              ; preds = %71
  %173 = load i8, ptr %73, align 4
  %174 = zext i8 %173 to i32
  %175 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, i32 noundef %174) #9
  %176 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %177 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %176, i32 noundef 3520, i32 noundef 152) #10
  %178 = icmp eq ptr %177, null
  br i1 %178, label %247, label %179

179:                                              ; preds = %172
  store ptr %0, ptr %177, align 8
  %180 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %177, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %180, align 8
  %181 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %177, i32 0, i32 1
  store i32 9, ptr %181, align 4
  %182 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %177, i32 0, i32 3
  store i32 %174, ptr %182, align 4
  %183 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %177, i32 0, i32 3
  store i32 1, ptr %183, align 4
  %184 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %177, i32 0, i32 7
  store i32 4, ptr %184, align 4
  %185 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %177, i32 0, i32 6
  store i32 1, ptr %185, align 8
  %186 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %177, i32 0, i32 17
  store ptr @opt_impedance, ptr %186, align 4
  %187 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull %177) #9
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  call void @kfree(ptr noundef nonnull %177) #9
  br label %247

190:                                              ; preds = %179
  %191 = getelementptr inbounds %struct.snd_kcontrol, ptr %187, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %191, align 4
  %192 = getelementptr inbounds %struct.snd_kcontrol, ptr %187, i32 0, i32 1, i32 4
  %193 = call i32 @strscpy(ptr noundef %192, ptr noundef nonnull %3, i32 noundef 44) #9
  %194 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %177, ptr noundef nonnull %187, i1 noundef zeroext true) #9
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %247, label %244

196:                                              ; preds = %71
  %197 = load i8, ptr %73, align 4
  %198 = zext i8 %197 to i32
  %199 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i32 noundef %198) #9
  %200 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %201 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %200, i32 noundef 3520, i32 noundef 152) #10
  %202 = icmp eq ptr %201, null
  br i1 %202, label %247, label %203

203:                                              ; preds = %196
  store ptr %0, ptr %201, align 8
  %204 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %201, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %204, align 8
  %205 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %201, i32 0, i32 1
  store i32 11, ptr %205, align 4
  %206 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %201, i32 0, i32 3
  store i32 %198, ptr %206, align 4
  %207 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %201, i32 0, i32 3
  store i32 1, ptr %207, align 4
  %208 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %201, i32 0, i32 7
  store i32 4, ptr %208, align 4
  %209 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %201, i32 0, i32 6
  store i32 1, ptr %209, align 8
  %210 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %201, i32 0, i32 17
  store ptr @opt_pad, ptr %210, align 4
  %211 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull %201) #9
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  call void @kfree(ptr noundef nonnull %201) #9
  br label %247

214:                                              ; preds = %203
  %215 = getelementptr inbounds %struct.snd_kcontrol, ptr %211, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %215, align 4
  %216 = getelementptr inbounds %struct.snd_kcontrol, ptr %211, i32 0, i32 1, i32 4
  %217 = call i32 @strscpy(ptr noundef %216, ptr noundef nonnull %3, i32 noundef 44) #9
  %218 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %201, ptr noundef nonnull %211, i1 noundef zeroext true) #9
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %247, label %244

220:                                              ; preds = %71
  %221 = load i8, ptr %73, align 4
  %222 = zext i8 %221 to i32
  %223 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.22, i32 noundef %222) #9
  %224 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %225 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %224, i32 noundef 3520, i32 noundef 152) #10
  %226 = icmp eq ptr %225, null
  br i1 %226, label %247, label %227

227:                                              ; preds = %220
  store ptr %0, ptr %225, align 8
  %228 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %225, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %228, align 8
  %229 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %225, i32 0, i32 1
  store i32 8, ptr %229, align 4
  %230 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %225, i32 0, i32 3
  store i32 %222, ptr %230, align 4
  %231 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %225, i32 0, i32 3
  store i32 1, ptr %231, align 4
  %232 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %225, i32 0, i32 7
  store i32 4, ptr %232, align 4
  %233 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %225, i32 0, i32 6
  store i32 1, ptr %233, align 8
  %234 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %225, i32 0, i32 17
  store ptr @opt_gain, ptr %234, align 4
  %235 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull %225) #9
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  call void @kfree(ptr noundef nonnull %225) #9
  br label %247

238:                                              ; preds = %227
  %239 = getelementptr inbounds %struct.snd_kcontrol, ptr %235, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %239, align 4
  %240 = getelementptr inbounds %struct.snd_kcontrol, ptr %235, i32 0, i32 1, i32 4
  %241 = call i32 @strscpy(ptr noundef %240, ptr noundef nonnull %3, i32 noundef 44) #9
  %242 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %225, ptr noundef nonnull %235, i1 noundef zeroext true) #9
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %238, %214, %190, %171, %71
  %245 = add nuw nsw i32 %72, 1
  %246 = icmp eq i32 %245, %67
  br i1 %246, label %249, label %71

247:                                              ; preds = %238, %237, %220, %214, %213, %196, %190, %189, %172, %169, %59, %58, %44, %38, %37, %21
  %248 = phi i32 [ -12, %237 ], [ -12, %213 ], [ -12, %189 ], [ -12, %58 ], [ -12, %44 ], [ %63, %59 ], [ -12, %37 ], [ -12, %21 ], [ %42, %38 ], [ %170, %169 ], [ -12, %172 ], [ %194, %190 ], [ -12, %196 ], [ %218, %214 ], [ -12, %220 ], [ %242, %238 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  br label %367

249:                                              ; preds = %244, %65
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  %250 = load i32, ptr %23, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.scarlett_device_info, ptr %23, i32 0, i32 5
  %254 = getelementptr inbounds %struct.scarlett_device_info, ptr %23, i32 0, i32 1
  br label %263

255:                                              ; preds = %318, %287
  %256 = icmp eq i32 %265, %250
  br i1 %256, label %257, label %263

257:                                              ; preds = %255, %249
  %258 = getelementptr inbounds %struct.scarlett_device_info, ptr %23, i32 0, i32 2
  %259 = load i32, ptr %258, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %347

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.scarlett_device_info, ptr %23, i32 0, i32 4
  br label %321

263:                                              ; preds = %255, %252
  %264 = phi i32 [ 0, %252 ], [ %265, %255 ]
  %265 = add nuw nsw i32 %264, 1
  %266 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 44, ptr noundef nonnull @.str, i32 noundef %265)
  %267 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %268 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %267, i32 noundef 3520, i32 noundef 152) #10
  %269 = icmp eq ptr %268, null
  br i1 %269, label %367, label %270

270:                                              ; preds = %263
  store ptr %0, ptr %268, align 8
  %271 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %268, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %271, align 8
  %272 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %268, i32 0, i32 1
  store i32 6, ptr %272, align 4
  %273 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %268, i32 0, i32 3
  store i32 %264, ptr %273, align 4
  %274 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %268, i32 0, i32 3
  store i32 50, ptr %274, align 4
  %275 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %268, i32 0, i32 7
  store i32 4, ptr %275, align 4
  %276 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %268, i32 0, i32 6
  store i32 1, ptr %276, align 8
  %277 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %268, i32 0, i32 17
  store ptr %253, ptr %277, align 4
  %278 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %268) #9
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %281

280:                                              ; preds = %270
  call void @kfree(ptr noundef nonnull %268) #9
  br label %367

281:                                              ; preds = %270
  %282 = getelementptr inbounds %struct.snd_kcontrol, ptr %278, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %282, align 4
  %283 = getelementptr inbounds %struct.snd_kcontrol, ptr %278, i32 0, i32 1, i32 4
  %284 = call i32 @strscpy(ptr noundef %283, ptr noundef nonnull %4, i32 noundef 44) #9
  %285 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %268, ptr noundef nonnull %278, i1 noundef zeroext true) #9
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %367, label %287

287:                                              ; preds = %281
  store ptr %268, ptr %5, align 4
  %288 = load i32, ptr %254, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %255

290:                                              ; preds = %287
  %291 = shl i32 %264, 3
  br label %292

292:                                              ; preds = %318, %290
  %293 = phi i32 [ 0, %290 ], [ %319, %318 ]
  %294 = add nuw i32 %293, 65
  %295 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef %265, i32 noundef %294)
  %296 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %297 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %296, i32 noundef 3520, i32 noundef 152) #10
  %298 = icmp eq ptr %297, null
  br i1 %298, label %367, label %299

299:                                              ; preds = %292
  %300 = and i32 %293, 7
  %301 = or i32 %300, %291
  store ptr %0, ptr %297, align 8
  %302 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %297, i32 0, i32 6
  store ptr @scarlett_ctl_resume, ptr %302, align 8
  %303 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %297, i32 0, i32 1
  store i32 0, ptr %303, align 4
  %304 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %297, i32 0, i32 3
  store i32 %301, ptr %304, align 4
  %305 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %297, i32 0, i32 3
  store i32 60, ptr %305, align 4
  %306 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %297, i32 0, i32 7
  store i32 4, ptr %306, align 4
  %307 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %297, i32 0, i32 6
  store i32 1, ptr %307, align 8
  %308 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %297, i32 0, i32 17
  store ptr null, ptr %308, align 4
  %309 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl, ptr noundef nonnull %297) #9
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %299
  call void @kfree(ptr noundef nonnull %297) #9
  br label %367

312:                                              ; preds = %299
  %313 = getelementptr inbounds %struct.snd_kcontrol, ptr %309, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %313, align 4
  %314 = getelementptr inbounds %struct.snd_kcontrol, ptr %309, i32 0, i32 1, i32 4
  %315 = call i32 @strscpy(ptr noundef %314, ptr noundef nonnull %4, i32 noundef 44) #9
  %316 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %297, ptr noundef nonnull %309, i1 noundef zeroext true) #9
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %367, label %318

318:                                              ; preds = %312
  store ptr %297, ptr %5, align 4
  %319 = add nuw nsw i32 %293, 1
  %320 = icmp eq i32 %319, %288
  br i1 %320, label %255, label %292

321:                                              ; preds = %345, %261
  %322 = phi i32 [ 0, %261 ], [ %323, %345 ]
  %323 = add nuw nsw i32 %322, 1
  %324 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 44, ptr noundef nonnull @.str.2, i32 noundef %323)
  %325 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %326 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %325, i32 noundef 3520, i32 noundef 152) #10
  %327 = icmp eq ptr %326, null
  br i1 %327, label %367, label %328

328:                                              ; preds = %321
  store ptr %0, ptr %326, align 8
  %329 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %326, i32 0, i32 6
  store ptr @scarlett_ctl_enum_resume, ptr %329, align 8
  %330 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %326, i32 0, i32 1
  store i32 0, ptr %330, align 4
  %331 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %326, i32 0, i32 3
  store i32 %322, ptr %331, align 4
  %332 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %326, i32 0, i32 3
  store i32 52, ptr %332, align 4
  %333 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %326, i32 0, i32 7
  store i32 4, ptr %333, align 4
  %334 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %326, i32 0, i32 6
  store i32 1, ptr %334, align 8
  %335 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %326, i32 0, i32 17
  store ptr %262, ptr %335, align 4
  %336 = call ptr @snd_ctl_new1(ptr noundef nonnull @usb_scarlett_ctl_dynamic_enum, ptr noundef nonnull %326) #9
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %328
  call void @kfree(ptr noundef nonnull %326) #9
  br label %367

339:                                              ; preds = %328
  %340 = getelementptr inbounds %struct.snd_kcontrol, ptr %336, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %340, align 4
  %341 = getelementptr inbounds %struct.snd_kcontrol, ptr %336, i32 0, i32 1, i32 4
  %342 = call i32 @strscpy(ptr noundef %341, ptr noundef nonnull %4, i32 noundef 44) #9
  %343 = call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %326, ptr noundef nonnull %336, i1 noundef zeroext true) #9
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %367, label %345

345:                                              ; preds = %339
  store ptr %326, ptr %5, align 4
  %346 = icmp eq i32 %323, %259
  br i1 %346, label %347, label %321

347:                                              ; preds = %345, %257
  %348 = call fastcc i32 @add_new_ctl(ptr noundef %0, ptr noundef nonnull @usb_scarlett_ctl_enum, ptr noundef nonnull @scarlett_ctl_enum_resume, i32 noundef 40, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @opt_clock, ptr noundef nonnull %5)
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %367, label %350

350:                                              ; preds = %347
  %351 = call fastcc i32 @add_new_ctl(ptr noundef %0, ptr noundef nonnull @usb_scarlett_ctl_sync, ptr noundef null, i32 noundef 60, i32 noundef 0, i32 noundef 2, i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @opt_sync, ptr noundef nonnull %5)
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %367, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr %0, align 4
  %355 = getelementptr inbounds %struct.snd_usb_audio, ptr %354, i32 0, i32 1
  %356 = load ptr, ptr %355, align 4
  %357 = load i32, ptr %356, align 8
  %358 = shl i32 %357, 8
  %359 = or i32 %358, -2147483648
  %360 = getelementptr inbounds %struct.snd_usb_audio, ptr %354, i32 0, i32 28
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %361, i32 0, i32 2
  %363 = load i8, ptr %362, align 2
  %364 = zext i8 %363 to i16
  %365 = or i16 %364, 10496
  %366 = call i32 @snd_usb_ctl_msg(ptr noundef %356, i32 noundef %359, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext %365, ptr noundef nonnull @snd_scarlett_controls_create.sample_rate_buffer, i16 noundef zeroext 4) #9
  br label %367

367:                                              ; preds = %353, %350, %347, %339, %338, %321, %312, %311, %292, %281, %280, %263, %247, %16, %9, %1
  %368 = phi i32 [ 0, %1 ], [ -22, %9 ], [ %348, %347 ], [ %351, %350 ], [ %366, %353 ], [ %248, %247 ], [ -12, %280 ], [ -12, %311 ], [ -12, %338 ], [ -22, %16 ], [ -12, %321 ], [ %343, %339 ], [ -12, %292 ], [ %316, %312 ], [ -12, %263 ], [ %285, %281 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  ret i32 %368
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_new_ctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef writeonly %10) unnamed_addr #0 {
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 152) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  store ptr %0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %13, i32 0, i32 6
  store ptr %2, ptr %16, align 8
  %17 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 1
  store i32 %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 3
  store i32 %5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %13, i32 0, i32 3
  store i32 %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 7
  store i32 %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 6
  store i32 %7, ptr %21, align 8
  %22 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %13, i32 0, i32 17
  store ptr %9, ptr %22, align 4
  %23 = tail call ptr @snd_ctl_new1(ptr noundef %1, ptr noundef nonnull %13) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %13) #9
  br label %35

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 9
  store ptr @snd_usb_mixer_elem_free, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol, ptr %23, i32 0, i32 1, i32 4
  %29 = tail call i32 @strscpy(ptr noundef %28, ptr noundef %8, i32 noundef 44) #9
  %30 = tail call i32 @snd_usb_mixer_add_list(ptr noundef nonnull %13, ptr noundef nonnull %23, i1 noundef zeroext true) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = icmp eq ptr %10, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  store ptr %13, ptr %10, align 4
  br label %35

35:                                               ; preds = %34, %32, %26, %25, %11
  %36 = phi i32 [ -12, %25 ], [ -12, %11 ], [ %30, %26 ], [ 0, %34 ], [ 0, %32 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @snd_usb_set_cur_mix_value(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %7) #9
  br label %9

9:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %19, %5
  %8 = phi i32 [ %3, %5 ], [ %20, %19 ]
  %9 = phi i32 [ 0, %5 ], [ %21, %19 ]
  %10 = load i32, ptr %6, align 4
  %11 = shl nuw i32 1, %9
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.usb_mixer_elem_info, ptr %0, i32 0, i32 14, i32 %9
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @snd_usb_set_cur_mix_value(ptr noundef %0, i32 noundef %9, i32 noundef %9, i32 noundef %16) #9
  %18 = load i32, ptr %2, align 4
  br label %19

19:                                               ; preds = %14, %7
  %20 = phi i32 [ %8, %7 ], [ %18, %14 ]
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %7, label %23

23:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett_ctl_switch_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_switch_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi i32 [ 0, %9 ], [ %20, %15 ]
  %13 = call i32 @snd_usb_get_cur_mix_value(ptr noundef %5, i32 noundef %12, i32 noundef %12, ptr noundef nonnull %3) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %3, align 4
  %19 = getelementptr [128 x i32], ptr %10, i32 0, i32 %12
  store i32 %18, ptr %19, align 4
  %20 = add nuw nsw i32 %12, 1
  %21 = load i32, ptr %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %11, label %23

23:                                               ; preds = %15, %11, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %15 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_switch_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %13 = phi i32 [ 0, %9 ], [ %28, %26 ]
  %14 = call i32 @snd_usb_get_cur_mix_value(ptr noundef %5, i32 noundef %13, i32 noundef %13, ptr noundef nonnull %3) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr [128 x i32], ptr %10, i32 0, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = call i32 @snd_usb_set_cur_mix_value(ptr noundef %5, i32 noundef %13, i32 noundef %13, i32 noundef %20) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %16
  %27 = phi i32 [ %12, %16 ], [ 1, %23 ]
  %28 = add nuw nsw i32 %13, 1
  %29 = load i32, ptr %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %11, label %31

31:                                               ; preds = %26, %23, %11, %2
  %32 = phi i32 [ 0, %2 ], [ %27, %26 ], [ %24, %23 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_get_cur_mix_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_set_cur_mix_value(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scarlett_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 128
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %14, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi i32 [ 0, %9 ], [ %24, %16 ]
  %14 = call i32 @snd_usb_get_cur_mix_value(ptr noundef %5, i32 noundef %13, i32 noundef %13, ptr noundef nonnull %3) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4
  %18 = sdiv i32 %17, 256
  %19 = call i32 @llvm.smax.i32(i32 %18, i32 -128)
  %20 = load i32, ptr %10, align 4
  %21 = call i32 @llvm.smin.i32(i32 %19, i32 %20)
  %22 = add nsw i32 %21, 128
  store i32 %22, ptr %3, align 4
  %23 = getelementptr [128 x i32], ptr %11, i32 0, i32 %13
  store i32 %22, ptr %23, align 4
  %24 = add nuw nsw i32 %13, 1
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %12, label %27

27:                                               ; preds = %16, %12, %2
  %28 = phi i32 [ 0, %2 ], [ 0, %16 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %11

11:                                               ; preds = %26, %9
  %12 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %13 = phi i32 [ 0, %9 ], [ %28, %26 ]
  %14 = call i32 @snd_usb_get_cur_mix_value(ptr noundef %5, i32 noundef %13, i32 noundef %13, ptr noundef nonnull %3) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr [128 x i32], ptr %10, i32 0, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 8
  %20 = add i32 %19, -32768
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = call i32 @snd_usb_set_cur_mix_value(ptr noundef %5, i32 noundef %13, i32 noundef %13, i32 noundef %20) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %16
  %27 = phi i32 [ %12, %16 ], [ 1, %23 ]
  %28 = add nuw nsw i32 %13, 1
  %29 = load i32, ptr %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %11, label %31

31:                                               ; preds = %26, %23, %11, %2
  %32 = phi i32 [ 0, %2 ], [ %27, %26 ], [ %24, %23 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_elem_free(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_add_list(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_dynamic_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 3, ptr %9, align 8
  %10 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 %8, ptr %13, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %8
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = add i32 %8, -1
  store i32 %18, ptr %14, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %15, %2 ]
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 2
  %23 = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 2, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %20
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = xor i32 %24, -1
  %28 = add i32 %20, 65
  %29 = add i32 %28, %27
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.36, i32 noundef %29) #9
  br label %59

31:                                               ; preds = %19
  %32 = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 2, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %20, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = sub i32 %20, %33
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %36) #9
  br label %59

38:                                               ; preds = %31
  %39 = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 2, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %20, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = sub i32 %20, %40
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %43) #9
  br label %59

45:                                               ; preds = %38
  %46 = getelementptr %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 2, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %20, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = sub i32 %20, %47
  %51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.39, i32 noundef %50) #9
  br label %59

52:                                               ; preds = %45
  %53 = load i32, ptr %22, align 4
  %54 = icmp sgt i32 %20, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = sub i32 %20, %53
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.40, i32 noundef %56) #9
  br label %59

58:                                               ; preds = %52
  store i32 6710863, ptr %21, align 1
  br label %59

59:                                               ; preds = %58, %55, %49, %42, %35, %26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = call i32 @snd_usb_get_cur_mix_value(ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr %7, align 4
  %13 = sub i32 %11, %12
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = call i32 @llvm.smin.i32(i32 %14, i32 %17)
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i32 [ 0, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = call i32 @snd_usb_get_cur_mix_value(ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr %7, align 4
  %14 = add i32 %13, %12
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 @snd_usb_set_cur_mix_value(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %14) #9
  br label %19

19:                                               ; preds = %17, %10, %2
  %20 = phi i32 [ 1, %17 ], [ %8, %2 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_enum_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scarlett_mixer_elem_enum_info, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @snd_ctl_enum_info(ptr noundef %1, i32 noundef %8, i32 noundef %10, ptr noundef %12) #9
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scarlett_ctl_meter_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %8 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 8
  %11 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.usb_mixer_elem_list, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %21, %18
  %23 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, -2147483520
  %28 = trunc i32 %13 to i16
  %29 = trunc i32 %22 to i16
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, ptr %5, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i16
  %33 = call i32 @snd_usb_ctl_msg(ptr noundef %24, i32 noundef %27, i8 noundef zeroext 3, i8 noundef zeroext -95, i16 noundef zeroext %28, i16 noundef zeroext %29, ptr noundef nonnull %3, i16 noundef zeroext %32) #9
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load i8, ptr %3, align 1
  %37 = icmp ne i8 %36, 0
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %35, %2
  %41 = phi i32 [ 0, %35 ], [ %33, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
