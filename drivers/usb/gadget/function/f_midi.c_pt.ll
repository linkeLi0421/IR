; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_midi.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_midi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac1_ac_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i8, [1 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ms_header_descriptor = type <{ i8, i8, i8, i16, i16 }>
%struct.usb_ms_endpoint_descriptor_16 = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.f_midi_opts = type { %struct.usb_function_instance, i32, ptr, i8, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_midi = type { %struct.usb_function, ptr, ptr, ptr, ptr, ptr, i8, [16 x ptr], i32, %struct.work_struct, i32, i32, i32, ptr, i32, i32, %struct.anon.65, %struct.spinlock, i32, i8, [0 x %struct.gmidi_in_port] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.65 = type { %union.anon.66, [0 x ptr] }
%union.anon.66 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.gmidi_in_port = type { ptr, i32, i8, i8, [2 x i8] }
%struct.usb_midi_in_jack_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_midi_out_jack_descriptor_1 = type { i8, i8, i8, i8, i8, i8, [1 x %struct.usb_midi_source_pin], i8 }
%struct.usb_midi_source_pin = type { i8, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author226 = internal constant [22 x i8] c"author=Ben Williamson\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [19 x i8] c"alias=usbfunc:midi\00", section ".modinfo", align 1
@midiusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @f_midi_alloc_inst, ptr @f_midi_alloc }, align 4
@.str = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@f_midi_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@midi_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @midi_item_ops, ptr null, ptr @midi_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@midi_item_ops = internal global %struct.configfs_item_operations { ptr @midi_attr_release, ptr null, ptr null }, align 4
@midi_attrs = internal global [7 x ptr] [ptr @f_midi_opts_attr_index, ptr @f_midi_opts_attr_buflen, ptr @f_midi_opts_attr_qlen, ptr @f_midi_opts_attr_in_ports, ptr @f_midi_opts_attr_out_ports, ptr @f_midi_opts_attr_id, ptr null], align 4
@f_midi_opts_attr_index = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 420, ptr @f_midi_opts_index_show, ptr @f_midi_opts_index_store }, align 4
@f_midi_opts_attr_buflen = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @f_midi_opts_buflen_show, ptr @f_midi_opts_buflen_store }, align 4
@f_midi_opts_attr_qlen = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @f_midi_opts_qlen_show, ptr @f_midi_opts_qlen_store }, align 4
@f_midi_opts_attr_in_ports = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_midi_opts_in_ports_show, ptr @f_midi_opts_in_ports_store }, align 4
@f_midi_opts_attr_out_ports = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @f_midi_opts_out_ports_show, ptr @f_midi_opts_out_ports_store }, align 4
@f_midi_opts_attr_id = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 420, ptr @f_midi_opts_id_show, ptr @f_midi_opts_id_store }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"buflen\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"qlen\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"in_ports\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"out_ports\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gmidi function\00", align 1
@midi_strings = internal global [2 x ptr] [ptr @midi_stringtab, ptr null], align 4
@ac_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 1
@ms_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 1, i8 3, i8 0, i8 0 }, align 1
@ac_header_desc = internal global %struct.uac1_ac_header_descriptor_1 <{ i8 9, i8 36, i8 1, i16 256, i16 9, i8 1, [1 x i8] zeroinitializer }>, align 1
@bulk_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@bulk_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@ms_header_desc = internal global %struct.usb_ms_header_descriptor <{ i8 7, i8 36, i8 1, i16 256, i16 0 }>, align 1
@ms_in_desc = internal global %struct.usb_ms_endpoint_descriptor_16 { i8 0, i8 37, i8 1, i8 0, [16 x i8] zeroinitializer }, align 1
@ms_out_desc = internal global %struct.usb_ms_endpoint_descriptor_16 { i8 0, i8 37, i8 1, i8 0, [16 x i8] zeroinitializer }, align 1
@bulk_out_ss_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@bulk_in_ss_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"%s: Couldn't get usb request\0A\00", align 1
@__func__.f_midi_do_transmit = private unnamed_addr constant [19 x i8] c"f_midi_do_transmit\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s failed to queue req: %d\0A\00", align 1
@f_midi_register_card.ops = internal global %struct.snd_device_ops { ptr @f_midi_snd_free, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"snd_card_new() failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"snd_device_new() failed: error %d\0A\00", align 1
@f_midi_longname = internal unnamed_addr constant [12 x i8] c"MIDI Gadget\00", align 1
@f_midi_shortname = internal unnamed_addr constant [7 x i8] c"f_midi\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"MIDI\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"snd_rawmidi_new() failed: error %d\0A\00", align 1
@gmidi_in_ops = internal constant %struct.snd_rawmidi_ops { ptr @f_midi_in_open, ptr @f_midi_in_close, ptr @f_midi_in_trigger, ptr null }, align 4
@gmidi_out_ops = internal constant %struct.snd_rawmidi_ops { ptr @f_midi_out_open, ptr @f_midi_out_close, ptr @f_midi_out_trigger, ptr null }, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"snd_card_register() failed\0A\00", align 1
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@midi_stringtab = internal global %struct.usb_gadget_strings { i16 1033, ptr @midi_string_defs }, align 4
@midi_string_defs = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.20 }, %struct.usb_string zeroinitializer], align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"MIDI function\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: couldn't enqueue request: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"can't configure %s: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"can't start %s: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"kill %s:  resubmit %d bytes --> %d\0A\00", align 1
@f_midi_cin_length = internal unnamed_addr constant [16 x i8] c"\00\00\02\03\03\01\02\03\03\03\03\03\02\02\03\01", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"drivers/usb/gadget/u_f.h\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_license227], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @midiusb_func) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @midiusb_func) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_midi_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 152) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @f_midi_alloc_inst.__key) #15
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @f_midi_free_inst, ptr %6, align 8
  %7 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 1
  store i32 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 2
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 6
  store i32 512, ptr %9, align 8
  %10 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 7
  store i32 32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 4
  store i32 1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 5
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.f_midi_opts, ptr %2, i32 0, i32 9
  store i32 1, ptr %13, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @midi_func_type) #15
  br label %14

14:                                               ; preds = %4, %0
  %15 = phi ptr [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_midi_alloc(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 16
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 16
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = mul nuw nsw i32 %4, 12
  %12 = add nuw nsw i32 %11, 272
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ %22, %18 ], [ 0, %15 ]
  %20 = trunc i32 %19 to i8
  %21 = getelementptr %struct.f_midi, ptr %13, i32 0, i32 20, i32 %19, i32 2
  store i8 %20, ptr %21, align 4
  %22 = add nuw i32 %19, 1
  %23 = icmp eq i32 %22, %16
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %15
  %25 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call noalias ptr @kstrdup(ptr noundef %26, i32 noundef 3264) #15
  %28 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 13
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %25, align 4
  %30 = icmp ne ptr %29, null
  %31 = icmp eq ptr %27, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %64, label %33

33:                                               ; preds = %24
  %34 = load i32, ptr %3, align 4
  %35 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 10
  store i32 %34, ptr %35, align 8
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 12
  store i32 %39, ptr %40, align 32
  %41 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 14
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 15
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 18
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 19
  store i8 1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 16
  %50 = tail call i32 @__kfifo_alloc(ptr noundef %49, i32 noundef %45, i32 noundef 4, i32 noundef 3264) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %33
  %53 = load ptr, ptr %28, align 4
  br label %64

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.f_midi, ptr %13, i32 0, i32 17
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  tail call void @mutex_unlock(ptr noundef %2) #15
  store ptr @.str.11, ptr %13, align 64
  %59 = getelementptr inbounds %struct.usb_function, ptr %13, i32 0, i32 9
  store ptr @f_midi_bind, ptr %59, align 4
  %60 = getelementptr inbounds %struct.usb_function, ptr %13, i32 0, i32 10
  store ptr @f_midi_unbind, ptr %60, align 8
  %61 = getelementptr inbounds %struct.usb_function, ptr %13, i32 0, i32 13
  store ptr @f_midi_set_alt, ptr %61, align 4
  %62 = getelementptr inbounds %struct.usb_function, ptr %13, i32 0, i32 15
  store ptr @f_midi_disable, ptr %62, align 4
  %63 = getelementptr inbounds %struct.usb_function, ptr %13, i32 0, i32 11
  store ptr @f_midi_free, ptr %63, align 4
  br label %70

64:                                               ; preds = %52, %24
  %65 = phi ptr [ %53, %52 ], [ null, %24 ]
  %66 = phi i32 [ %50, %52 ], [ -12, %24 ]
  tail call void @kfree(ptr noundef %65) #15
  tail call void @kfree(ptr noundef nonnull %13) #15
  br label %67

67:                                               ; preds = %64, %10, %6, %1
  %68 = phi i32 [ %66, %64 ], [ -22, %6 ], [ -22, %1 ], [ -12, %10 ]
  tail call void @mutex_unlock(ptr noundef %2) #15
  %69 = inttoptr i32 %68 to ptr
  br label %70

70:                                               ; preds = %67, %54
  %71 = phi ptr [ %69, %67 ], [ %13, %54 ]
  ret ptr %71
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  tail call void @mutex_unlock(ptr noundef %2) #15
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #15
  br label %14

14:                                               ; preds = %11, %7
  tail call void @kfree(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @midi_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_index_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_index_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = icmp sgt i32 %13, 32
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 1
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_buflen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_buflen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_qlen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_qlen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_in_ports_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_in_ports_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = icmp ugt i32 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 4
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_out_ports_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_out_ports_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = icmp ugt i32 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 5
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_id_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 4096) #15
  br label %10

9:                                                ; preds = %2
  store i8 0, ptr %1, align 1
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_opts_id_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #15
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.f_midi_opts, ptr %0, i32 0, i32 2
  store ptr %9, ptr %19, align 4
  store i8 1, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %8, %3
  %21 = phi i32 [ %2, %18 ], [ -16, %3 ], [ -12, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret i32 %21
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [16 x %struct.usb_midi_in_jack_descriptor], align 1
  %6 = alloca [16 x %struct.usb_midi_in_jack_descriptor], align 1
  %7 = alloca [16 x %struct.usb_midi_out_jack_descriptor_1], align 1
  %8 = alloca [16 x %struct.usb_midi_out_jack_descriptor_1], align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %5, i8 0, i32 96, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %6, i8 0, i32 96, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(144) %7, i8 0, i32 144, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(144) %8, i8 0, i32 144, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 9
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 9, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 9, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 9, i32 2
  store ptr @f_midi_in_work, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store ptr null, ptr %4, align 4, !annotation !9
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  %18 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @snd_card_new(ptr noundef %17, i32 noundef %19, ptr noundef %21, ptr noundef nonnull @__this_module, i32 noundef 0, ptr noundef nonnull %3) #15
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.15) #18
  br label %73

27:                                               ; preds = %2
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 4
  store ptr %28, ptr %29, align 4
  %30 = call i32 @snd_device_new(ptr noundef %28, i32 noundef 0, ptr noundef %1, ptr noundef nonnull @f_midi_register_card.ops) #15
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr inbounds %struct.usb_gadget, ptr %33, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef %30) #18
  br label %73

35:                                               ; preds = %27
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %37, ptr noundef nonnull align 1 dereferenceable(12) @f_midi_longname, i32 12, i1 false) #15
  %38 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %38, ptr noundef nonnull align 1 dereferenceable(12) @f_midi_longname, i32 12, i1 false) #15
  %39 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %39, ptr noundef nonnull align 1 dereferenceable(7) @f_midi_shortname, i32 7, i1 false) #15
  %40 = call i32 @snd_component_add(ptr noundef %36, ptr noundef nonnull @.str.17) #15
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @snd_rawmidi_new(ptr noundef %41, ptr noundef %42, i32 noundef 0, i32 noundef %44, i32 noundef %46, ptr noundef nonnull %4) #15
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.18, i32 noundef %47) #18
  br label %73

52:                                               ; preds = %35
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 5
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 18
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.snd_rawmidi, ptr %53, i32 0, i32 5
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 3
  %59 = call ptr @strcpy(ptr noundef %56, ptr noundef %58) #15
  %60 = getelementptr inbounds %struct.snd_rawmidi, ptr %53, i32 0, i32 3
  store i32 7, ptr %60, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi, ptr %53, i32 0, i32 8
  store ptr %1, ptr %61, align 8
  %62 = getelementptr inbounds %struct.snd_rawmidi, ptr %53, i32 0, i32 9
  store ptr @f_midi_rmidi_free, ptr %62, align 4
  %63 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 19
  %64 = load i8, ptr %63, align 4
  %65 = add i8 %64, 1
  store i8 %65, ptr %63, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @gmidi_in_ops) #15
  %66 = load ptr, ptr %4, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %66, i32 noundef 1, ptr noundef nonnull @gmidi_out_ops) #15
  %67 = load ptr, ptr %3, align 4
  %68 = call i32 @snd_card_register(ptr noundef %67) #15
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %52
  %71 = load ptr, ptr %12, align 4
  %72 = getelementptr inbounds %struct.usb_gadget, ptr %71, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.19) #18
  br label %73

73:                                               ; preds = %70, %49, %32, %24
  %74 = phi i32 [ %22, %24 ], [ %30, %32 ], [ %47, %49 ], [ %68, %70 ]
  %75 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 @snd_card_free(ptr noundef nonnull %76) #15
  store ptr null, ptr %75, align 4
  br label %80

80:                                               ; preds = %78, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %252

81:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %82 = load ptr, ptr %9, align 4
  %83 = call ptr @usb_gstrings_attach(ptr noundef %82, ptr noundef nonnull @midi_strings, i32 noundef 2) #15
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = ptrtoint ptr %83 to i32
  br label %246

87:                                               ; preds = %81
  %88 = load i8, ptr %83, align 4
  store i8 %88, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 8), align 1
  %89 = call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #15
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %246, label %91

91:                                               ; preds = %87
  %92 = trunc i32 %89 to i8
  store i8 %92, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 2), align 1
  %93 = call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #15
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %246, label %95

95:                                               ; preds = %91
  %96 = trunc i32 %93 to i8
  store i8 %96, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ms_interface_desc, i32 0, i32 2), align 1
  store i8 %96, ptr getelementptr inbounds (%struct.uac1_ac_header_descriptor_1, ptr @ac_header_desc, i32 0, i32 6), align 1
  %97 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 6
  store i8 %96, ptr %97, align 4
  %98 = load ptr, ptr %10, align 4
  %99 = call ptr @usb_ep_autoconfig(ptr noundef %98, ptr noundef nonnull @bulk_in_desc) #15
  %100 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 2
  store ptr %99, ptr %100, align 4
  %101 = icmp eq ptr %99, null
  br i1 %101, label %246, label %102

102:                                              ; preds = %95
  %103 = load ptr, ptr %10, align 4
  %104 = call ptr @usb_ep_autoconfig(ptr noundef %103, ptr noundef nonnull @bulk_out_desc) #15
  %105 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 3
  store ptr %104, ptr %105, align 4
  %106 = icmp eq ptr %104, null
  br i1 %106, label %246, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %109 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 300) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %246, label %111

111:                                              ; preds = %107
  store ptr @ac_interface_desc, ptr %109, align 8
  %112 = getelementptr ptr, ptr %109, i32 1
  store ptr @ac_header_desc, ptr %112, align 4
  %113 = getelementptr ptr, ptr %109, i32 2
  store ptr @ms_interface_desc, ptr %113, align 8
  %114 = load i32, ptr %45, align 4
  %115 = load i32, ptr %43, align 4
  %116 = add i32 %115, %114
  %117 = trunc i32 %116 to i16
  %118 = mul i16 %117, 15
  %119 = add i16 %118, 7
  store i16 %119, ptr getelementptr inbounds (%struct.usb_ms_header_descriptor, ptr @ms_header_desc, i32 0, i32 4), align 1
  %120 = getelementptr ptr, ptr %109, i32 3
  store ptr @ms_header_desc, ptr %120, align 4
  %121 = icmp eq i32 %114, 0
  br i1 %121, label %124, label %130

122:                                              ; preds = %130
  %123 = load i32, ptr %43, align 4
  br label %124

124:                                              ; preds = %122, %111
  %125 = phi i32 [ 0, %111 ], [ %158, %122 ]
  %126 = phi i32 [ %115, %111 ], [ %123, %122 ]
  %127 = phi i32 [ 1, %111 ], [ %147, %122 ]
  %128 = phi i32 [ 4, %111 ], [ %154, %122 ]
  %129 = icmp eq i32 %126, 0
  br i1 %129, label %193, label %160

130:                                              ; preds = %130, %111
  %131 = phi i32 [ %154, %130 ], [ 4, %111 ]
  %132 = phi i32 [ %147, %130 ], [ 1, %111 ]
  %133 = phi i32 [ %157, %130 ], [ 0, %111 ]
  %134 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %5, i32 0, i32 %133
  %135 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133
  store i8 6, ptr %134, align 1
  %136 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %5, i32 0, i32 %133, i32 1
  store i8 36, ptr %136, align 1
  %137 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %5, i32 0, i32 %133, i32 2
  store i8 2, ptr %137, align 1
  %138 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %5, i32 0, i32 %133, i32 3
  store i8 2, ptr %138, align 1
  %139 = trunc i32 %132 to i8
  %140 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %5, i32 0, i32 %133, i32 4
  store i8 %139, ptr %140, align 1
  %141 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %5, i32 0, i32 %133, i32 5
  store i8 0, ptr %141, align 1
  %142 = or i32 %131, 1
  %143 = getelementptr ptr, ptr %109, i32 %131
  store ptr %134, ptr %143, align 8
  store i8 9, ptr %135, align 1
  %144 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 1
  store i8 36, ptr %144, align 1
  %145 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 2
  store i8 3, ptr %145, align 1
  %146 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 3
  store i8 1, ptr %146, align 1
  %147 = add i32 %132, 2
  %148 = add i8 %139, 1
  %149 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 4
  store i8 %148, ptr %149, align 1
  %150 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 5
  store i8 1, ptr %150, align 1
  %151 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 6
  %152 = getelementptr inbounds %struct.usb_midi_source_pin, ptr %151, i32 0, i32 1
  store i8 1, ptr %152, align 1
  store i8 %139, ptr %151, align 1
  %153 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %8, i32 0, i32 %133, i32 7
  store i8 0, ptr %153, align 1
  %154 = add i32 %131, 2
  %155 = getelementptr ptr, ptr %109, i32 %142
  store ptr %135, ptr %155, align 4
  %156 = getelementptr %struct.usb_ms_endpoint_descriptor_16, ptr @ms_in_desc, i32 0, i32 4, i32 %133
  store i8 %148, ptr %156, align 1
  %157 = add nuw i32 %133, 1
  %158 = load i32, ptr %45, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %130, label %122

160:                                              ; preds = %160, %124
  %161 = phi i32 [ %184, %160 ], [ %128, %124 ]
  %162 = phi i32 [ %177, %160 ], [ %127, %124 ]
  %163 = phi i32 [ %187, %160 ], [ 0, %124 ]
  %164 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %6, i32 0, i32 %163
  %165 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163
  store i8 6, ptr %164, align 1
  %166 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %6, i32 0, i32 %163, i32 1
  store i8 36, ptr %166, align 1
  %167 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %6, i32 0, i32 %163, i32 2
  store i8 2, ptr %167, align 1
  %168 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %6, i32 0, i32 %163, i32 3
  store i8 1, ptr %168, align 1
  %169 = trunc i32 %162 to i8
  %170 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %6, i32 0, i32 %163, i32 4
  store i8 %169, ptr %170, align 1
  %171 = getelementptr [16 x %struct.usb_midi_in_jack_descriptor], ptr %6, i32 0, i32 %163, i32 5
  store i8 0, ptr %171, align 1
  %172 = or i32 %161, 1
  %173 = getelementptr ptr, ptr %109, i32 %161
  store ptr %164, ptr %173, align 8
  store i8 9, ptr %165, align 1
  %174 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 1
  store i8 36, ptr %174, align 1
  %175 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 2
  store i8 3, ptr %175, align 1
  %176 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 3
  store i8 2, ptr %176, align 1
  %177 = add i32 %162, 2
  %178 = add i8 %169, 1
  %179 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 4
  store i8 %178, ptr %179, align 1
  %180 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 5
  store i8 1, ptr %180, align 1
  %181 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 7
  store i8 0, ptr %181, align 1
  %182 = getelementptr [16 x %struct.usb_midi_out_jack_descriptor_1], ptr %7, i32 0, i32 %163, i32 6
  store i8 %169, ptr %182, align 1
  %183 = getelementptr inbounds %struct.usb_midi_source_pin, ptr %182, i32 0, i32 1
  store i8 1, ptr %183, align 1
  %184 = add i32 %161, 2
  %185 = getelementptr ptr, ptr %109, i32 %172
  store ptr %165, ptr %185, align 4
  %186 = getelementptr %struct.usb_ms_endpoint_descriptor_16, ptr @ms_out_desc, i32 0, i32 4, i32 %163
  store i8 %169, ptr %186, align 1
  %187 = add nuw i32 %163, 1
  %188 = load i32, ptr %43, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %160, label %190

190:                                              ; preds = %160
  %191 = load i32, ptr %45, align 4
  %192 = trunc i32 %188 to i8
  br label %193

193:                                              ; preds = %190, %124
  %194 = phi i32 [ %125, %124 ], [ %191, %190 ]
  %195 = phi i32 [ %128, %124 ], [ %184, %190 ]
  %196 = phi i8 [ 0, %124 ], [ %192, %190 ]
  %197 = trunc i32 %194 to i8
  %198 = add i8 %197, 4
  store i8 %198, ptr @ms_out_desc, align 1
  store i8 %197, ptr getelementptr inbounds (%struct.usb_ms_endpoint_descriptor_16, ptr @ms_out_desc, i32 0, i32 3), align 1
  %199 = add i8 %196, 4
  store i8 %199, ptr @ms_in_desc, align 1
  store i8 %196, ptr getelementptr inbounds (%struct.usb_ms_endpoint_descriptor_16, ptr @ms_in_desc, i32 0, i32 3), align 1
  %200 = or i32 %195, 1
  %201 = getelementptr ptr, ptr %109, i32 %195
  store ptr @bulk_out_desc, ptr %201, align 8
  %202 = add i32 %195, 2
  %203 = getelementptr ptr, ptr %109, i32 %200
  store ptr @ms_out_desc, ptr %203, align 4
  %204 = add i32 %195, 3
  %205 = getelementptr ptr, ptr %109, i32 %202
  store ptr @bulk_in_desc, ptr %205, align 8
  %206 = add i32 %195, 4
  %207 = getelementptr ptr, ptr %109, i32 %204
  store ptr @ms_in_desc, ptr %207, align 4
  %208 = getelementptr ptr, ptr %109, i32 %206
  store ptr null, ptr %208, align 8
  %209 = call ptr @usb_copy_descriptors(ptr noundef nonnull %109) #15
  %210 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 2
  store ptr %209, ptr %210, align 4
  %211 = icmp eq ptr %209, null
  br i1 %211, label %245, label %212

212:                                              ; preds = %193
  %213 = load ptr, ptr %9, align 4
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.usb_gadget, ptr %214, i32 0, i32 6
  %216 = load i32, ptr %215, align 8
  %217 = icmp ult i32 %216, 3
  br i1 %217, label %244, label %218

218:                                              ; preds = %212
  store i16 512, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_in_desc, i32 0, i32 4), align 1
  store i16 512, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_out_desc, i32 0, i32 4), align 1
  %219 = call ptr @usb_copy_descriptors(ptr noundef nonnull %109) #15
  %220 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 3
  store ptr %219, ptr %220, align 4
  %221 = icmp eq ptr %219, null
  br i1 %221, label %245, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %9, align 4
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.usb_gadget, ptr %224, i32 0, i32 6
  %226 = load i32, ptr %225, align 8
  %227 = icmp ult i32 %226, 5
  br i1 %227, label %244, label %228

228:                                              ; preds = %222
  store i16 1024, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_in_desc, i32 0, i32 4), align 1
  store i16 1024, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @bulk_out_desc, i32 0, i32 4), align 1
  store ptr @bulk_out_desc, ptr %201, align 8
  store ptr @bulk_out_ss_comp_desc, ptr %203, align 4
  store ptr @ms_out_desc, ptr %205, align 8
  store ptr @bulk_in_desc, ptr %207, align 4
  %229 = add i32 %195, 5
  store ptr @bulk_in_ss_comp_desc, ptr %208, align 8
  %230 = getelementptr ptr, ptr %109, i32 %229
  store ptr @ms_in_desc, ptr %230, align 4
  %231 = call ptr @usb_copy_descriptors(ptr noundef nonnull %109) #15
  %232 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 4
  store ptr %231, ptr %232, align 4
  %233 = icmp eq ptr %231, null
  br i1 %233, label %245, label %234

234:                                              ; preds = %228
  %235 = load ptr, ptr %9, align 4
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.usb_gadget, ptr %236, i32 0, i32 6
  %238 = load i32, ptr %237, align 8
  %239 = icmp ult i32 %238, 6
  br i1 %239, label %244, label %240

240:                                              ; preds = %234
  %241 = call ptr @usb_copy_descriptors(ptr noundef nonnull %109) #15
  %242 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 5
  store ptr %241, ptr %242, align 4
  %243 = icmp eq ptr %241, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240, %234, %222, %212
  call void @kfree(ptr noundef nonnull %109) #15
  br label %257

245:                                              ; preds = %240, %228, %218, %193
  call void @kfree(ptr noundef nonnull %109) #15
  call void @usb_free_all_descriptors(ptr noundef %1) #15
  br label %246

246:                                              ; preds = %245, %107, %102, %95, %91, %87, %85
  %247 = phi i32 [ %86, %85 ], [ %89, %87 ], [ %93, %91 ], [ -19, %245 ], [ -19, %102 ], [ -19, %95 ], [ -12, %107 ]
  %248 = load ptr, ptr %29, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %246
  %251 = call i32 @snd_card_free(ptr noundef nonnull %248) #15
  store ptr null, ptr %29, align 4
  br label %252

252:                                              ; preds = %250, %246, %80
  %253 = phi i32 [ %74, %80 ], [ %247, %246 ], [ %247, %250 ]
  %254 = load ptr, ptr %10, align 4
  %255 = getelementptr inbounds %struct.usb_gadget, ptr %254, i32 0, i32 11
  %256 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.12, ptr noundef %256, i32 noundef %253) #18
  br label %257

257:                                              ; preds = %252, %244
  %258 = phi i32 [ %253, %252 ], [ 0, %244 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #15
  ret i32 %258
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @f_midi_disable(ptr noundef %1)
  %3 = getelementptr inbounds %struct.f_midi, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  store ptr null, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @snd_card_free_when_closed(ptr noundef nonnull %4) #15
  br label %8

8:                                                ; preds = %6, %2
  tail call void @usb_free_all_descriptors(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_midi_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %91

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call fastcc i32 @f_midi_start_ep(ptr noundef %0, ptr noundef %0, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %91

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @f_midi_start_ep(ptr noundef %0, ptr noundef %0, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16
  %20 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %22 = load i32, ptr %20, align 4
  %23 = load i32, ptr %19, align 4
  %24 = load i32, ptr %21, align 4
  %25 = sub i32 %24, %23
  %26 = xor i32 %22, -1
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 14
  %30 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 4
  br label %37

31:                                               ; preds = %58, %18
  %32 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %91, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 14
  br label %69

37:                                               ; preds = %58, %28
  %38 = load ptr, ptr %9, align 4
  %39 = load i32, ptr %29, align 4
  %40 = tail call ptr @alloc_ep_req(ptr noundef %38, i32 noundef %39) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %91, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 7
  store ptr @f_midi_complete, ptr %44, align 4
  %45 = load i32, ptr %19, align 4
  %46 = load i32, ptr %21, align 4
  %47 = sub i32 %45, %46
  %48 = load i32, ptr %20, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %30, align 4
  %52 = and i32 %48, %45
  %53 = getelementptr ptr, ptr %51, i32 %52
  store ptr %40, ptr %53, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !10
  %54 = load i32, ptr %19, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %19, align 4
  %56 = load i32, ptr %20, align 4
  %57 = load i32, ptr %21, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = phi i32 [ %57, %50 ], [ %46, %42 ]
  %60 = phi i32 [ %55, %50 ], [ %45, %42 ]
  %61 = phi i32 [ %56, %50 ], [ %48, %42 ]
  %62 = sub i32 %59, %60
  %63 = xor i32 %61, -1
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %31, label %37

65:                                               ; preds = %75
  %66 = add nuw i32 %70, 1
  %67 = load i32, ptr %32, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65, %35
  %70 = phi i32 [ 0, %35 ], [ %66, %65 ]
  %71 = load ptr, ptr %14, align 4
  %72 = load i32, ptr %36, align 4
  %73 = tail call ptr @alloc_ep_req(ptr noundef %71, i32 noundef %72) #15
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.usb_request, ptr %73, i32 0, i32 7
  store ptr @f_midi_complete, ptr %76, align 4
  %77 = load ptr, ptr %14, align 4
  %78 = tail call i32 @usb_ep_queue(ptr noundef %77, ptr noundef nonnull %73, i32 noundef 2592) #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %65, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.usb_gadget, ptr %82, i32 0, i32 11
  %84 = load ptr, ptr %14, align 4
  %85 = getelementptr inbounds %struct.usb_ep, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.21, ptr noundef %86, i32 noundef %78) #18
  %87 = load ptr, ptr %73, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %80
  %90 = load ptr, ptr %14, align 4
  tail call fastcc void @free_ep_req(ptr noundef %90, ptr noundef nonnull %73)
  br label %91

91:                                               ; preds = %89, %80, %69, %65, %37, %31, %13, %8, %3
  %92 = phi i32 [ 0, %3 ], [ %11, %8 ], [ %16, %13 ], [ %78, %80 ], [ %78, %89 ], [ 0, %31 ], [ 0, %65 ], [ -12, %69 ], [ -12, %37 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_disable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @usb_ep_disable(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @usb_ep_disable(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16
  %9 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  br label %16

16:                                               ; preds = %30, %13
  %17 = phi i32 [ %11, %13 ], [ %33, %30 ]
  %18 = load ptr, ptr %14, align 4
  %19 = load i32, ptr %15, align 4
  %20 = and i32 %19, %17
  %21 = getelementptr ptr, ptr %18, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !11
  %23 = load i32, ptr %9, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %9, align 4
  %25 = load ptr, ptr %2, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30, !prof !12

28:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %29 = load ptr, ptr %22, align 4
  br label %30

30:                                               ; preds = %28, %16
  %31 = phi ptr [ %29, %28 ], [ %26, %16 ]
  tail call void @kfree(ptr noundef %31) #15
  store ptr null, ptr %22, align 4
  tail call void @usb_ep_free_request(ptr noundef %25, ptr noundef %22) #15
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %9, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %16

35:                                               ; preds = %30, %1
  %36 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 20
  br label %41

41:                                               ; preds = %54, %39
  %42 = phi i32 [ %37, %39 ], [ %55, %54 ]
  %43 = phi i32 [ 0, %39 ], [ %56, %54 ]
  %44 = getelementptr %struct.gmidi_in_port, ptr %40, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr %struct.gmidi_in_port, ptr %40, i32 %43, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = icmp ne ptr %45, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = tail call i32 @snd_rawmidi_drop_output(ptr noundef nonnull %45) #15
  %53 = load i32, ptr %36, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi i32 [ %53, %51 ], [ %42, %41 ]
  %56 = add nuw i32 %43, 1
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %41, label %58

58:                                               ; preds = %54, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.f_midi_opts, ptr %3, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 19
  %6 = load i8, ptr %5, align 4
  %7 = add i8 %6, -1
  store i8 %7, ptr %5, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16
  tail call void @__kfifo_free(ptr noundef %12) #15
  tail call void @kfree(ptr noundef %0) #15
  tail call void @mutex_unlock(ptr noundef %4) #15
  tail call void @mutex_lock(ptr noundef %4) #15
  %13 = getelementptr inbounds %struct.f_midi_opts, ptr %3, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 4
  %16 = icmp eq i32 %15, 0
  tail call void @mutex_unlock(ptr noundef %4) #15
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.f_midi_opts, ptr %3, i32 0, i32 3
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.f_midi_opts, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #15
  br label %24

24:                                               ; preds = %21, %17
  tail call void @kfree(ptr noundef %3) #15
  br label %26

25:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef %4) #15
  br label %26

26:                                               ; preds = %25, %24, %9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_in_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -200
  tail call fastcc void @f_midi_transmit(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_copy_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @f_midi_transmit(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %194, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_ep, ptr %4, i32 0, i32 6
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %194, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 17
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #15
  %13 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 18
  %18 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 10
  %19 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 20
  %20 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 14
  %21 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %192, %10
  %23 = load i32, ptr %13, align 4
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %189, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 4
  %28 = load i32, ptr %16, align 4
  %29 = and i32 %28, %24
  %30 = getelementptr ptr, ptr %27, i32 %29
  %31 = load ptr, ptr %30, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !13
  %32 = getelementptr inbounds %struct.usb_request, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %193

35:                                               ; preds = %26
  %36 = load i32, ptr %17, align 4
  %37 = load i32, ptr %18, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %162

39:                                               ; preds = %158, %35
  %40 = phi i32 [ %159, %158 ], [ %37, %35 ]
  %41 = phi i32 [ %160, %158 ], [ %36, %35 ]
  %42 = getelementptr %struct.gmidi_in_port, ptr %19, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.gmidi_in_port, ptr %19, i32 %41, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = icmp ne ptr %43, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %158

49:                                               ; preds = %39
  %50 = load i32, ptr %32, align 4
  %51 = add i32 %50, 3
  %52 = load i32, ptr %20, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %162

54:                                               ; preds = %49
  %55 = getelementptr %struct.gmidi_in_port, ptr %19, i32 %41, i32 2
  %56 = getelementptr %struct.gmidi_in_port, ptr %19, i32 %41, i32 4
  %57 = getelementptr %struct.gmidi_in_port, ptr %19, i32 %41, i32 4, i32 1
  %58 = getelementptr %struct.gmidi_in_port, ptr %19, i32 %41, i32 3
  br label %59

59:                                               ; preds = %147, %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !annotation !9
  %60 = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %43, ptr noundef nonnull %2, i32 noundef 1) #15
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 0, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %156

63:                                               ; preds = %59
  %64 = load i8, ptr %2, align 1
  %65 = load i8, ptr %55, align 4
  %66 = shl i8 %65, 4
  %67 = zext i8 %64 to i32
  switch i8 %64, label %119 [
    i8 -8, label %68
    i8 -7, label %68
    i8 -6, label %68
    i8 -5, label %68
    i8 -4, label %68
    i8 -3, label %68
    i8 -2, label %68
    i8 -1, label %68
    i8 -9, label %71
    i8 -16, label %82
    i8 -15, label %82
    i8 -14, label %82
    i8 -13, label %82
    i8 -12, label %82
    i8 -11, label %82
    i8 -10, label %82
  ]

68:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  %69 = or i8 %66, 15
  %70 = load i8, ptr %58, align 1
  br label %121

71:                                               ; preds = %63
  %72 = load i8, ptr %58, align 1
  switch i8 %72, label %121 [
    i8 4, label %73
    i8 5, label %75
    i8 6, label %78
  ]

73:                                               ; preds = %71
  %74 = or i8 %66, 5
  br label %132

75:                                               ; preds = %71
  %76 = or i8 %66, 6
  %77 = load i8, ptr %56, align 2
  br label %132

78:                                               ; preds = %71
  %79 = or i8 %66, 7
  %80 = load i8, ptr %56, align 2
  %81 = load i8, ptr %57, align 1
  br label %132

82:                                               ; preds = %63, %63, %63, %63, %63, %63, %63
  store i8 0, ptr %57, align 1
  store i8 0, ptr %56, align 2
  store i8 0, ptr %58, align 1
  switch i8 %64, label %147 [
    i8 -16, label %83
    i8 -15, label %84
    i8 -13, label %84
    i8 -14, label %85
    i8 -10, label %86
  ]

83:                                               ; preds = %82
  store i8 -16, ptr %56, align 2
  br label %147

84:                                               ; preds = %82, %82
  store i8 %64, ptr %56, align 2
  br label %147

85:                                               ; preds = %82
  store i8 -14, ptr %56, align 2
  br label %147

86:                                               ; preds = %82
  %87 = or i8 %66, 5
  br label %132

88:                                               ; preds = %92
  store i8 %64, ptr %56, align 2
  store i8 0, ptr %57, align 1
  %89 = and i8 %64, -32
  %90 = icmp eq i8 %89, -64
  %91 = select i1 %90, i8 1, i8 2
  br label %147

92:                                               ; preds = %119
  %93 = add nsw i32 %67, -128
  %94 = icmp ult i32 %93, 112
  br i1 %94, label %88, label %95

95:                                               ; preds = %92
  %96 = load i8, ptr %58, align 1
  br label %127

97:                                               ; preds = %119
  %98 = load i8, ptr %58, align 1
  switch i8 %98, label %127 [
    i8 1, label %99
    i8 2, label %105
    i8 3, label %106
    i8 4, label %113
    i8 5, label %114
    i8 6, label %115
  ]

99:                                               ; preds = %97
  %100 = load i8, ptr %56, align 2
  %101 = icmp ult i8 %100, -16
  %102 = lshr i8 %100, 4
  %103 = select i1 %101, i8 %102, i8 2
  %104 = or i8 %103, %66
  br label %132

105:                                              ; preds = %97
  store i8 %64, ptr %57, align 1
  br label %147

106:                                              ; preds = %97
  %107 = load i8, ptr %56, align 2
  %108 = icmp ult i8 %107, -16
  %109 = lshr i8 %107, 4
  %110 = select i1 %108, i8 %109, i8 3
  %111 = or i8 %110, %66
  %112 = load i8, ptr %57, align 1
  br label %132

113:                                              ; preds = %97
  store i8 %64, ptr %56, align 2
  br label %147

114:                                              ; preds = %97
  store i8 %64, ptr %57, align 1
  br label %147

115:                                              ; preds = %97
  %116 = or i8 %66, 4
  %117 = load i8, ptr %56, align 2
  %118 = load i8, ptr %57, align 1
  br label %132

119:                                              ; preds = %63
  %120 = icmp sgt i8 %64, -1
  br i1 %120, label %97, label %92

121:                                              ; preds = %71, %68
  %122 = phi i8 [ 7, %68 ], [ 0, %71 ]
  %123 = phi i8 [ %70, %68 ], [ %72, %71 ]
  %124 = phi i8 [ %64, %68 ], [ 0, %71 ]
  %125 = phi i8 [ %69, %68 ], [ %66, %71 ]
  store i8 %122, ptr %58, align 1
  %126 = icmp eq i8 %123, 8
  br i1 %126, label %132, label %127

127:                                              ; preds = %121, %97, %95
  %128 = phi i8 [ %122, %121 ], [ %96, %95 ], [ %98, %97 ]
  %129 = phi i8 [ %125, %121 ], [ %66, %95 ], [ %66, %97 ]
  %130 = phi i8 [ %124, %121 ], [ 0, %95 ], [ 0, %97 ]
  %131 = phi i8 [ %123, %121 ], [ 0, %95 ], [ 0, %97 ]
  switch i8 %128, label %147 [
    i8 6, label %132
    i8 1, label %132
    i8 3, label %132
    i8 7, label %132
  ]

132:                                              ; preds = %127, %127, %127, %127, %121, %115, %106, %99, %86, %78, %75, %73
  %133 = phi i1 [ false, %127 ], [ false, %127 ], [ false, %127 ], [ false, %127 ], [ true, %121 ], [ true, %86 ], [ true, %78 ], [ true, %75 ], [ true, %73 ], [ false, %99 ], [ false, %106 ], [ false, %115 ]
  %134 = phi i8 [ %129, %127 ], [ %129, %127 ], [ %129, %127 ], [ %129, %127 ], [ %125, %121 ], [ %87, %86 ], [ %79, %78 ], [ %76, %75 ], [ %74, %73 ], [ %104, %99 ], [ %111, %106 ], [ %116, %115 ]
  %135 = phi i8 [ %130, %127 ], [ %130, %127 ], [ %130, %127 ], [ %130, %127 ], [ %124, %121 ], [ -10, %86 ], [ %80, %78 ], [ %77, %75 ], [ -9, %73 ], [ %100, %99 ], [ %107, %106 ], [ %117, %115 ]
  %136 = phi i8 [ %131, %127 ], [ %131, %127 ], [ %131, %127 ], [ %131, %127 ], [ 8, %121 ], [ 8, %86 ], [ 8, %78 ], [ 8, %75 ], [ 8, %73 ], [ 1, %99 ], [ 2, %106 ], [ 4, %115 ]
  %137 = phi i8 [ 0, %127 ], [ 0, %127 ], [ 0, %127 ], [ 0, %127 ], [ 0, %121 ], [ 0, %86 ], [ -9, %78 ], [ 0, %75 ], [ 0, %73 ], [ 0, %99 ], [ %64, %106 ], [ %64, %115 ]
  %138 = phi i8 [ 0, %127 ], [ 0, %127 ], [ 0, %127 ], [ 0, %127 ], [ 0, %121 ], [ 0, %86 ], [ %81, %78 ], [ -9, %75 ], [ 0, %73 ], [ %64, %99 ], [ %112, %106 ], [ %118, %115 ]
  %139 = load i32, ptr %32, align 4
  %140 = load ptr, ptr %31, align 4
  %141 = getelementptr i8, ptr %140, i32 %139
  store i8 %134, ptr %141, align 1
  %142 = getelementptr inbounds i8, ptr %141, i32 1
  store i8 %135, ptr %142, align 1
  %143 = getelementptr inbounds i8, ptr %141, i32 2
  store i8 %138, ptr %143, align 1
  %144 = getelementptr inbounds i8, ptr %141, i32 3
  store i8 %137, ptr %144, align 1
  %145 = add i32 %139, 4
  store i32 %145, ptr %32, align 4
  br i1 %133, label %146, label %147

146:                                              ; preds = %132
  store i8 0, ptr %57, align 1
  store i8 0, ptr %56, align 2
  br label %147

147:                                              ; preds = %146, %132, %127, %114, %113, %105, %88, %85, %84, %83, %82
  %148 = phi i8 [ %131, %127 ], [ 0, %146 ], [ %136, %132 ], [ 6, %114 ], [ 5, %113 ], [ 3, %105 ], [ 2, %85 ], [ 1, %84 ], [ 5, %83 ], [ 0, %82 ], [ %91, %88 ]
  store i8 %148, ptr %58, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  %149 = load i32, ptr %32, align 4
  %150 = add i32 %149, 3
  %151 = load i32, ptr %20, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %59, label %153

153:                                              ; preds = %147
  %154 = load i32, ptr %44, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153, %62
  %157 = load i32, ptr %18, align 4
  br label %158

158:                                              ; preds = %156, %39
  %159 = phi i32 [ %157, %156 ], [ %40, %39 ]
  %160 = add nuw i32 %41, 1
  %161 = icmp ult i32 %160, %159
  br i1 %161, label %39, label %162

162:                                              ; preds = %158, %153, %49, %35
  %163 = phi i1 [ true, %35 ], [ false, %49 ], [ false, %153 ], [ true, %158 ]
  %164 = phi i32 [ 0, %35 ], [ %41, %49 ], [ %41, %153 ], [ 0, %158 ]
  store i32 %164, ptr %17, align 4
  %165 = load i32, ptr %32, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %192, label %167

167:                                              ; preds = %162
  %168 = call i32 @usb_ep_queue(ptr noundef nonnull %4, ptr noundef %31, i32 noundef 2592) #15
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load ptr, ptr %21, align 4
  %172 = getelementptr inbounds %struct.usb_gadget, ptr %171, i32 0, i32 11
  %173 = load ptr, ptr %3, align 4
  %174 = getelementptr inbounds %struct.usb_ep, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.14, ptr noundef %175, i32 noundef %168) #18
  store i32 0, ptr %32, align 4
  br label %192

176:                                              ; preds = %167
  %177 = load i32, ptr %14, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %14, align 4
  %179 = load i32, ptr %13, align 4
  %180 = sub i32 %179, %178
  %181 = load i32, ptr %16, align 4
  %182 = icmp ugt i32 %180, %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr %15, align 4
  %185 = and i32 %181, %179
  %186 = getelementptr ptr, ptr %184, i32 %185
  store ptr %31, ptr %186, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !14
  %187 = load i32, ptr %13, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %13, align 4
  br label %192

189:                                              ; preds = %22
  %190 = load ptr, ptr %21, align 4
  %191 = getelementptr inbounds %struct.usb_gadget, ptr %190, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.f_midi_do_transmit) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #15
  br label %194

192:                                              ; preds = %183, %176, %170, %162
  br i1 %163, label %193, label %22

193:                                              ; preds = %192, %26
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #15
  br label %217

194:                                              ; preds = %189, %6, %1
  %195 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 10
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %217, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 20
  br label %200

200:                                              ; preds = %213, %198
  %201 = phi i32 [ %196, %198 ], [ %214, %213 ]
  %202 = phi i32 [ 0, %198 ], [ %215, %213 ]
  %203 = getelementptr %struct.gmidi_in_port, ptr %199, i32 %202
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr %struct.gmidi_in_port, ptr %199, i32 %202, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = icmp ne i32 %206, 0
  %208 = icmp ne ptr %204, null
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = call i32 @snd_rawmidi_drop_output(ptr noundef nonnull %204) #15
  %212 = load i32, ptr %195, align 4
  br label %213

213:                                              ; preds = %210, %200
  %214 = phi i32 [ %212, %210 ], [ %201, %200 ]
  %215 = add nuw i32 %202, 1
  %216 = icmp ult i32 %215, %214
  br i1 %216, label %200, label %217

217:                                              ; preds = %213, %194, %193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_drop_output(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @f_midi_snd_free(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_rmidi_free(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_rawmidi, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @f_midi_free(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @f_midi_in_open(ptr noundef %0) #12 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_midi, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.f_midi, ptr %5, i32 0, i32 20
  %13 = getelementptr %struct.gmidi_in_port, ptr %12, i32 %7
  store ptr %0, ptr %13, align 4
  %14 = getelementptr %struct.gmidi_in_port, ptr %12, i32 %7, i32 3
  store i8 0, ptr %14, align 1
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ 0, %11 ], [ -22, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @f_midi_in_close(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_in_trigger(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.f_midi, ptr %6, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = getelementptr %struct.f_midi, ptr %6, i32 0, i32 20, i32 %8, i32 1
  store i32 %1, ptr %13, align 4
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @system_highpri_wq, align 4
  %17 = getelementptr inbounds %struct.f_midi, ptr %6, i32 0, i32 9
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %17) #15
  br label %19

19:                                               ; preds = %15, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @f_midi_out_open(ptr noundef %0) #12 {
  %2 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 15
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_rawmidi, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.f_midi, ptr %9, i32 0, i32 7, i32 %3
  store ptr %0, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @f_midi_out_close(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_out_trigger(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.f_midi, ptr %6, i32 0, i32 8
  br i1 %7, label %12, label %11

11:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef %9, ptr noundef %10) #15
  br label %13

12:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef %9, ptr noundef %10) #15
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @f_midi_start_ep(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @usb_ep_disable(ptr noundef %2) #15
  %9 = getelementptr inbounds %struct.f_midi, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @config_ep_by_speed(ptr noundef %10, ptr noundef %1, ptr noundef %2) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, ptr noundef %17, i32 noundef %11) #18
  br label %27

18:                                               ; preds = %3
  %19 = tail call i32 @usb_ep_enable(ptr noundef %2) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.23, ptr noundef %25, i32 noundef %19) #18
  br label %27

26:                                               ; preds = %18
  store ptr %0, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %13
  %28 = phi i32 [ %11, %13 ], [ %19, %21 ], [ 0, %26 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_midi_complete(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %109 [
    i32 0, label %10
    i32 -103, label %58
    i32 -104, label %58
    i32 -108, label %58
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %109

19:                                               ; preds = %47, %14
  %20 = phi i32 [ %48, %47 ], [ %17, %14 ]
  %21 = phi i32 [ %49, %47 ], [ 0, %14 ]
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %19
  %26 = zext i8 %23 to i32
  %27 = lshr i32 %26, 4
  %28 = and i32 %26, 15
  %29 = getelementptr [16 x i8], ptr @f_midi_cin_length, i32 0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %21, 1
  %33 = getelementptr i8, ptr %15, i32 %32
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr %struct.f_midi, ptr %34, i32 0, i32 7, i32 %27
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.f_midi, ptr %34, i32 0, i32 8
  %40 = load volatile i32, ptr %39, align 4
  %41 = shl nuw nsw i32 1, %27
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %36, ptr noundef %33, i32 noundef %31) #15
  %46 = load i32, ptr %16, align 4
  br label %47

47:                                               ; preds = %44, %38, %25, %19
  %48 = phi i32 [ %46, %44 ], [ %20, %38 ], [ %20, %25 ], [ %20, %19 ]
  %49 = add i32 %21, 4
  %50 = or i32 %49, 3
  %51 = icmp ult i32 %50, %48
  br i1 %51, label %19, label %109

52:                                               ; preds = %10
  %53 = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %56, label %109

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  store i32 0, ptr %57, align 4
  tail call fastcc void @f_midi_transmit(ptr noundef %3)
  br label %120

58:                                               ; preds = %2, %2, %2
  %59 = getelementptr inbounds %struct.f_midi, ptr %3, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %62, label %120

62:                                               ; preds = %58
  %63 = load ptr, ptr %1, align 4
  %64 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %102

67:                                               ; preds = %95, %62
  %68 = phi i32 [ %96, %95 ], [ %65, %62 ]
  %69 = phi i32 [ %97, %95 ], [ 0, %62 ]
  %70 = getelementptr i8, ptr %63, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %67
  %74 = zext i8 %71 to i32
  %75 = lshr i32 %74, 4
  %76 = and i32 %74, 15
  %77 = getelementptr [16 x i8], ptr @f_midi_cin_length, i32 0, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %69, 1
  %81 = getelementptr i8, ptr %63, i32 %80
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr %struct.f_midi, ptr %82, i32 0, i32 7, i32 %75
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.f_midi, ptr %82, i32 0, i32 8
  %88 = load volatile i32, ptr %87, align 4
  %89 = shl nuw nsw i32 1, %75
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %84, ptr noundef %81, i32 noundef %79) #15
  %94 = load i32, ptr %64, align 4
  br label %95

95:                                               ; preds = %92, %86, %73, %67
  %96 = phi i32 [ %94, %92 ], [ %68, %86 ], [ %68, %73 ], [ %68, %67 ]
  %97 = add i32 %69, 4
  %98 = or i32 %97, 3
  %99 = icmp ult i32 %98, %96
  br i1 %99, label %67, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %1, align 4
  br label %102

102:                                              ; preds = %100, %62
  %103 = phi ptr [ %101, %100 ], [ %63, %62 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107, !prof !12

105:                                              ; preds = %102
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %106 = load ptr, ptr %1, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi ptr [ %106, %105 ], [ %103, %102 ]
  tail call void @kfree(ptr noundef %108) #15
  store ptr null, ptr %1, align 4
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #15
  br label %120

109:                                              ; preds = %52, %47, %14, %2
  %110 = tail call i32 @usb_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef 2592) #15
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %7, align 4
  %114 = getelementptr inbounds %struct.usb_gadget, ptr %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.24, ptr noundef %116, i32 noundef %118, i32 noundef %110) #18
  %119 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #15
  br label %120

120:                                              ; preds = %112, %109, %107, %58, %56
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_ep_req(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !12

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %6 = load ptr, ptr %1, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call void @kfree(ptr noundef %8) #15
  store ptr null, ptr %1, align 4
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2153085093}
!11 = !{i64 2153088165}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153089664}
!14 = !{i64 2153093130}
