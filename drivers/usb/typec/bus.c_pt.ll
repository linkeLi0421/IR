; ModuleID = '/llk/IR/drivers/usb/typec/bus.c_pt.bc'
source_filename = "../drivers/usb/typec/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_notify\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_enter\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_exit\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_attention:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_attention\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_attention:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_vdm:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_vdm\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_vdm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_get_partner:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_get_partner\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_get_partner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_get_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_get_plug\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_get_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_put_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_put_plug\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_put_plug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___typec_altmode_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__typec_altmode_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___typec_altmode_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_altmode_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_altmode_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_typec_altmode_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_typec_match_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22typec_match_altmode\22\09\09\09\09\09"
module asm "__kstrtabns_typec_match_altmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.typec_mux_state = type { ptr, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.altmode = type { i32, %struct.typec_altmode, ptr, i32, [5 x ptr], [8 x i8], %struct.attribute_group, [2 x ptr], ptr, [2 x ptr] }
%struct.typec_altmode = type { %struct.device, i16, i32, i32, i8, ptr, ptr }
%struct.typec_mux = type { %struct.device, ptr }
%struct.typec_altmode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.typec_altmode_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.typec_device_id = type { i16, i8, i32 }

@typec_port_dev_type = external dso_local constant %struct.device_type, align 4
@__kstrtab_typec_altmode_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_notify to i32), ptr @__kstrtab_typec_altmode_notify, ptr @__kstrtabns_typec_altmode_notify }, section "___ksymtab_gpl+typec_altmode_notify", align 4
@__kstrtab_typec_altmode_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_enter to i32), ptr @__kstrtab_typec_altmode_enter, ptr @__kstrtabns_typec_altmode_enter }, section "___ksymtab_gpl+typec_altmode_enter", align 4
@__kstrtab_typec_altmode_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_exit to i32), ptr @__kstrtab_typec_altmode_exit, ptr @__kstrtabns_typec_altmode_exit }, section "___ksymtab_gpl+typec_altmode_exit", align 4
@__kstrtab_typec_altmode_attention = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_attention = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_attention = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_attention to i32), ptr @__kstrtab_typec_altmode_attention, ptr @__kstrtabns_typec_altmode_attention }, section "___ksymtab_gpl+typec_altmode_attention", align 4
@__kstrtab_typec_altmode_vdm = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_vdm = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_vdm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_vdm to i32), ptr @__kstrtab_typec_altmode_vdm, ptr @__kstrtabns_typec_altmode_vdm }, section "___ksymtab_gpl+typec_altmode_vdm", align 4
@__kstrtab_typec_altmode_get_partner = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_get_partner = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_get_partner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_get_partner to i32), ptr @__kstrtab_typec_altmode_get_partner, ptr @__kstrtabns_typec_altmode_get_partner }, section "___ksymtab_gpl+typec_altmode_get_partner", align 4
@__kstrtab_typec_altmode_get_plug = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_get_plug = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_get_plug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_get_plug to i32), ptr @__kstrtab_typec_altmode_get_plug, ptr @__kstrtabns_typec_altmode_get_plug }, section "___ksymtab_gpl+typec_altmode_get_plug", align 4
@__kstrtab_typec_altmode_put_plug = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_put_plug = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_put_plug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_put_plug to i32), ptr @__kstrtab_typec_altmode_put_plug, ptr @__kstrtabns_typec_altmode_put_plug }, section "___ksymtab_gpl+typec_altmode_put_plug", align 4
@typec_bus = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr @typec_groups, ptr null, ptr @typec_match, ptr @typec_uevent, ptr @typec_probe, ptr null, ptr @typec_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab___typec_altmode_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___typec_altmode_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___typec_altmode_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__typec_altmode_register_driver to i32), ptr @__kstrtab___typec_altmode_register_driver, ptr @__kstrtabns___typec_altmode_register_driver }, section "___ksymtab_gpl+__typec_altmode_register_driver", align 4
@__kstrtab_typec_altmode_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_altmode_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_altmode_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_altmode_unregister_driver to i32), ptr @__kstrtab_typec_altmode_unregister_driver, ptr @__kstrtabns_typec_altmode_unregister_driver }, section "___ksymtab_gpl+typec_altmode_unregister_driver", align 4
@__kstrtab_typec_match_altmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_typec_match_altmode = external dso_local constant [0 x i8], align 1
@__ksymtab_typec_match_altmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @typec_match_altmode to i32), ptr @__kstrtab_typec_match_altmode, ptr @__kstrtabns_typec_match_altmode }, section "___ksymtab_gpl+typec_match_altmode", align 4
@.str = private unnamed_addr constant [6 x i8] c"typec\00", align 1
@typec_groups = internal global [2 x ptr] [ptr @typec_group, ptr null], align 4
@typec_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @typec_attrs, ptr null }, align 4
@typec_attrs = internal global [2 x ptr] [ptr @dev_attr_description, ptr null], align 4
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @description_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SVID=%04X\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"MODE=%u\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"MODALIAS=typec:id%04Xm%02X\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to create symlinks\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"partner\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"drivers/usb/typec/bus.c\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___typec_altmode_register_driver, ptr @__ksymtab_typec_altmode_attention, ptr @__ksymtab_typec_altmode_enter, ptr @__ksymtab_typec_altmode_exit, ptr @__ksymtab_typec_altmode_get_partner, ptr @__ksymtab_typec_altmode_get_plug, ptr @__ksymtab_typec_altmode_notify, ptr @__ksymtab_typec_altmode_put_plug, ptr @__ksymtab_typec_altmode_unregister_driver, ptr @__ksymtab_typec_altmode_vdm, ptr @__ksymtab_typec_match_altmode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_altmode_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.typec_mux_state, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 560
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, @typec_port_dev_type
  %17 = select i1 %16, ptr %11, ptr %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %18 = getelementptr inbounds %struct.altmode, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.altmode, ptr %17, i32 0, i32 1
  store ptr %23, ptr %4, align 4
  %24 = getelementptr inbounds %struct.typec_mux_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.typec_mux_state, ptr %4, i32 0, i32 2
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.typec_mux, ptr %19, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 %27(ptr noundef nonnull %19, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22, %21
  %31 = getelementptr inbounds %struct.altmode, ptr %8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.altmode, ptr %8, i32 0, i32 1, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.typec_altmode_ops, ptr %33, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 %37(ptr noundef %31, i32 noundef %1, ptr noundef %2) #8
  br label %41

41:                                               ; preds = %39, %35, %30, %22, %6, %3
  %42 = phi i32 [ %40, %39 ], [ 0, %3 ], [ -19, %6 ], [ %28, %22 ], [ 0, %35 ], [ 0, %30 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_altmode_enter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.typec_mux_state, align 4
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.altmode, ptr %5, i32 0, i32 1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %57, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.altmode, ptr %5, i32 0, i32 1, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.altmode, ptr %5, i32 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, @typec_port_dev_type
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.altmode, ptr %5, i32 0, i32 1, i32 4
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, @typec_port_dev_type
  %37 = getelementptr i8, ptr %0, i32 -8
  %38 = select i1 %36, ptr %37, ptr %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %39 = getelementptr inbounds %struct.altmode, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %53

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.altmode, ptr %38, i32 0, i32 1
  store ptr %44, ptr %3, align 4
  %45 = getelementptr inbounds %struct.typec_mux_state, ptr %3, i32 0, i32 1
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.typec_mux_state, ptr %3, i32 0, i32 2
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.typec_mux, ptr %40, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = call i32 %48(ptr noundef nonnull %40, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load ptr, ptr %14, align 4
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi ptr [ %52, %51 ], [ %15, %42 ]
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %6, ptr noundef %1) #8
  br label %57

57:                                               ; preds = %53, %43, %26, %17, %13, %8, %2
  %58 = phi i32 [ %56, %53 ], [ 0, %8 ], [ 0, %2 ], [ -95, %17 ], [ -95, %13 ], [ -1, %26 ], [ %49, %43 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_altmode_exit(ptr noundef %0) #0 {
  %2 = alloca %struct.typec_mux_state, align 4
  %3 = getelementptr i8, ptr %0, i32 560
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 1, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, @typec_port_dev_type
  %25 = getelementptr i8, ptr %0, i32 -8
  %26 = select i1 %24, ptr %25, ptr %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %27 = getelementptr inbounds %struct.altmode, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br label %41

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.altmode, ptr %26, i32 0, i32 1
  store ptr %32, ptr %2, align 4
  %33 = getelementptr inbounds %struct.typec_mux_state, ptr %2, i32 0, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.typec_mux_state, ptr %2, i32 0, i32 2
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.typec_mux, ptr %28, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 %36(ptr noundef nonnull %28, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load ptr, ptr %13, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = phi ptr [ %40, %39 ], [ %14, %30 ]
  %43 = getelementptr inbounds %struct.typec_altmode_ops, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %5) #8
  br label %46

46:                                               ; preds = %41, %31, %16, %12, %7, %1
  %47 = phi i32 [ %45, %41 ], [ 0, %7 ], [ 0, %1 ], [ -95, %16 ], [ -95, %12 ], [ %37, %31 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_altmode_attention(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 560
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.altmode, ptr %4, i32 0, i32 1, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.typec_altmode_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %5, i32 noundef %1) #8
  br label %14

14:                                               ; preds = %13, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @typec_altmode_vdm(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 560
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.altmode, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.altmode, ptr %8, i32 0, i32 1, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.typec_altmode_ops, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #8
  br label %21

21:                                               ; preds = %19, %15, %10, %6, %4
  %22 = phi i32 [ %20, %19 ], [ 0, %4 ], [ -19, %6 ], [ -95, %15 ], [ -95, %10 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @typec_altmode_get_partner(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.altmode, ptr %5, i32 0, i32 1
  %8 = select i1 %6, ptr null, ptr %7
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %8, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @typec_altmode_get_plug(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 560
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.altmode, ptr %4, i32 0, i32 9, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.altmode, ptr %6, i32 0, i32 1
  %10 = tail call ptr @get_device(ptr noundef %9) #8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.altmode, ptr %11, i32 0, i32 1
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_altmode_put_plug(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @put_device(ptr noundef nonnull %0) #8
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__typec_altmode_register_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_altmode_driver, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.typec_altmode_driver, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.typec_altmode_driver, ptr %0, i32 0, i32 3, i32 2
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.typec_altmode_driver, ptr %0, i32 0, i32 3, i32 1
  store ptr @typec_bus, ptr %9, align 4
  %10 = tail call i32 @driver_register(ptr noundef %7) #8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @typec_altmode_unregister_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.typec_altmode_driver, ptr %0, i32 0, i32 3
  tail call void @driver_unregister(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @typec_match_altmode(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #4 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = zext i8 %3 to i32
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %10 = getelementptr ptr, ptr %0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.typec_altmode, ptr %11, i32 0, i32 1
  %15 = load i16, ptr %14, align 8
  %16 = icmp eq i16 %15, %2
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.typec_altmode, ptr %11, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %13
  %22 = add nuw i32 %9, 1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %8

24:                                               ; preds = %21, %17, %8, %4
  %25 = phi ptr [ null, %4 ], [ null, %21 ], [ null, %8 ], [ %11, %17 ]
  ret ptr %25
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @typec_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 8
  %10 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %23, %7
  %12 = phi i16 [ %5, %7 ], [ %25, %23 ]
  %13 = phi ptr [ %4, %7 ], [ %24, %23 ]
  %14 = icmp eq i16 %12, %9
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.typec_device_id, ptr %13, i32 0, i32 1
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 7
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %11
  %24 = getelementptr %struct.typec_device_id, ptr %13, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %11

27:                                               ; preds = %23, %19, %15, %2
  %28 = phi i32 [ 0, %2 ], [ 0, %23 ], [ 1, %15 ], [ 1, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @typec_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 8
  %5 = zext i16 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i16, ptr %3, align 8
  %15 = zext i16 %14 to i32
  %16 = load i32, ptr %9, align 4
  %17 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %16) #8
  br label %18

18:                                               ; preds = %13, %8, %2
  %19 = phi i32 [ %17, %13 ], [ -12, %2 ], [ -12, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @typec_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 560
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.altmode, ptr %5, i32 0, i32 1
  %9 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @.str.8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call i32 @sysfs_create_link(ptr noundef %8, ptr noundef %0, ptr noundef nonnull @.str.9) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  br label %15

15:                                               ; preds = %14, %7
  %16 = phi i32 [ %12, %14 ], [ %9, %7 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %3, i32 -8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.altmode, ptr %23, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %24, ptr noundef nonnull @.str.9) #8
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  br label %25

25:                                               ; preds = %22, %17, %15, %1
  %26 = phi i32 [ %16, %15 ], [ -19, %1 ], [ %20, %22 ], [ 0, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @typec_remove(ptr noundef %0) #0 {
  %2 = alloca %struct.typec_mux_state, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 560
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.altmode, ptr %7, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %8, ptr noundef nonnull @.str.9) #8
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  %9 = getelementptr i8, ptr %4, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void %10(ptr noundef %0) #8
  br label %13

13:                                               ; preds = %12, %1
  %14 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, @typec_port_dev_type
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %25, %24 ], [ %5, %18 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %28 = getelementptr inbounds %struct.altmode, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  br label %41

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.altmode, ptr %27, i32 0, i32 1
  store ptr %33, ptr %2, align 4
  %34 = getelementptr inbounds %struct.typec_mux_state, ptr %2, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.typec_mux_state, ptr %2, i32 0, i32 2
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.typec_mux, ptr %29, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 %37(ptr noundef nonnull %29, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !8

40:                                               ; preds = %32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 397, i32 noundef 9, ptr noundef null) #8
  br label %41

41:                                               ; preds = %40, %32, %31
  call void @typec_altmode_update_active(ptr noundef %0, i1 noundef zeroext false) #8
  br label %42

42:                                               ; preds = %41, %13
  %43 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 5
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 6
  store ptr null, ptr %44, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @description_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.typec_altmode, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.3, ptr %5
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_altmode_update_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
