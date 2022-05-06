; ModuleID = '/llk/IR/drivers/input/serio/libps2.c_pt.bc'
source_filename = "../drivers/input/serio/libps2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_sendbyte:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_sendbyte\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_sendbyte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_begin_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_begin_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_begin_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_end_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_end_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_end_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_drain\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_is_keyboard_id:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_is_keyboard_id\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_is_keyboard_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__ps2_command\22\09\09\09\09\09"
module asm "__kstrtabns___ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_sliced_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_sliced_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_sliced_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_init\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_handle_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_handle_ack\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_handle_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_handle_response:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_handle_response\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_handle_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_cmd_aborted:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_cmd_aborted\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_cmd_aborted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }

@__UNIQUE_ID_author210 = internal constant [45 x i8] c"libps2.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [39 x i8] c"libps2.description=PS/2 driver library\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [39 x i8] c"libps2.file=drivers/input/serio/libps2\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [19 x i8] c"libps2.license=GPL\00", section ".modinfo", align 1
@__kstrtab_ps2_sendbyte = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_sendbyte = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_sendbyte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_sendbyte to i32), ptr @__kstrtab_ps2_sendbyte, ptr @__kstrtabns_ps2_sendbyte }, section "___ksymtab+ps2_sendbyte", align 4
@__kstrtab_ps2_begin_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_begin_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_begin_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_begin_command to i32), ptr @__kstrtab_ps2_begin_command, ptr @__kstrtabns_ps2_begin_command }, section "___ksymtab+ps2_begin_command", align 4
@__kstrtab_ps2_end_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_end_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_end_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_end_command to i32), ptr @__kstrtab_ps2_end_command, ptr @__kstrtabns_ps2_end_command }, section "___ksymtab+ps2_end_command", align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/input/serio/libps2.c\00", align 1
@__kstrtab_ps2_drain = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_drain = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_drain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_drain to i32), ptr @__kstrtab_ps2_drain, ptr @__kstrtabns_ps2_drain }, section "___ksymtab+ps2_drain", align 4
@ps2_is_keyboard_id.keyboard_ids = internal constant [6 x i8] c"\AB\AC+]`G", align 1
@__kstrtab_ps2_is_keyboard_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_is_keyboard_id = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_is_keyboard_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_is_keyboard_id to i32), ptr @__kstrtab_ps2_is_keyboard_id, ptr @__kstrtabns_ps2_is_keyboard_id }, section "___ksymtab+ps2_is_keyboard_id", align 4
@__kstrtab___ps2_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___ps2_command = external dso_local constant [0 x i8], align 1
@__ksymtab___ps2_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ps2_command to i32), ptr @__kstrtab___ps2_command, ptr @__kstrtabns___ps2_command }, section "___ksymtab+__ps2_command", align 4
@__kstrtab_ps2_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_command to i32), ptr @__kstrtab_ps2_command, ptr @__kstrtabns_ps2_command }, section "___ksymtab+ps2_command", align 4
@__kstrtab_ps2_sliced_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_sliced_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_sliced_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_sliced_command to i32), ptr @__kstrtab_ps2_sliced_command, ptr @__kstrtabns_ps2_sliced_command }, section "___ksymtab+ps2_sliced_command", align 4
@ps2_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&ps2dev->cmd_mutex\00", align 1
@ps2_init.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"&ps2dev->wait\00", align 1
@__kstrtab_ps2_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_init to i32), ptr @__kstrtab_ps2_init, ptr @__kstrtabns_ps2_init }, section "___ksymtab+ps2_init", align 4
@__kstrtab_ps2_handle_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_handle_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_handle_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_handle_ack to i32), ptr @__kstrtab_ps2_handle_ack, ptr @__kstrtabns_ps2_handle_ack }, section "___ksymtab+ps2_handle_ack", align 4
@__kstrtab_ps2_handle_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_handle_response = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_handle_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_handle_response to i32), ptr @__kstrtab_ps2_handle_response, ptr @__kstrtabns_ps2_handle_response }, section "___ksymtab+ps2_handle_response", align 4
@__kstrtab_ps2_cmd_aborted = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_cmd_aborted = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_cmd_aborted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_cmd_aborted to i32), ptr @__kstrtab_ps2_cmd_aborted, ptr @__kstrtabns_ps2_cmd_aborted }, section "___ksymtab+ps2_cmd_aborted", align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__ksymtab___ps2_command, ptr @__ksymtab_ps2_begin_command, ptr @__ksymtab_ps2_cmd_aborted, ptr @__ksymtab_ps2_command, ptr @__ksymtab_ps2_drain, ptr @__ksymtab_ps2_end_command, ptr @__ksymtab_ps2_handle_ack, ptr @__ksymtab_ps2_handle_response, ptr @__ksymtab_ps2_init, ptr @__ksymtab_ps2_is_keyboard_id, ptr @__ksymtab_ps2_sendbyte, ptr @__ksymtab_ps2_sliced_command], section "llvm.metadata"
@switch.table.ps2_do_sendbyte = private unnamed_addr constant [5 x i32] [i32 -71, i32 -5, i32 -11, i32 -5, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ps2_sendbyte(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #7
  %6 = tail call fastcc i32 @ps2_do_sendbyte(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef 1)
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ps2_do_sendbyte(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %59, %4
  %10 = phi i32 [ 1, %4 ], [ 2, %59 ]
  store i8 1, ptr %6, align 1
  %11 = load i32, ptr %7, align 4
  %12 = or i32 %11, 1
  store i32 %12, ptr %7, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %9
  %22 = call i32 %19(ptr noundef %17, i8 noundef zeroext %1) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = call i32 @__msecs_to_jiffies(i32 noundef %2) #7
  %26 = load i32, ptr %7, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = icmp eq i32 %25, 0
  %31 = select i1 %28, i1 %30, i1 false
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %59, label %33

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !13
  %34 = call i32 @__msecs_to_jiffies(i32 noundef %2) #7
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #7
  %35 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 2) #7
  %36 = load i32, ptr %7, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = icmp ne i32 %34, 0
  %41 = select i1 %38, i1 true, i1 %40
  %42 = select i1 %41, i32 %34, i32 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %39, i1 true, i1 %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %45, %33
  %46 = phi i32 [ %55, %45 ], [ %42, %33 ]
  %47 = call i32 @schedule_timeout(i32 noundef %46) #7
  %48 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 2) #7
  %49 = load i32, ptr %7, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = icmp ne i32 %47, 0
  %54 = select i1 %51, i1 true, i1 %53
  %55 = select i1 %54, i32 %47, i32 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %52, i1 true, i1 %56
  br i1 %57, label %58, label %45

58:                                               ; preds = %45, %33
  call void @finish_wait(ptr noundef %8, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #7
  br label %59

59:                                               ; preds = %58, %24, %21, %9
  %60 = phi i1 [ true, %24 ], [ true, %58 ], [ false, %21 ], [ false, %9 ]
  %61 = phi i32 [ 0, %24 ], [ 0, %58 ], [ %22, %21 ], [ -1, %9 ]
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %63) #7
  %64 = load i8, ptr %6, align 1
  %65 = icmp eq i8 %64, -2
  %66 = icmp ult i32 %10, %3
  %67 = and i1 %66, %65
  br i1 %67, label %9, label %68

68:                                               ; preds = %59
  %69 = load i32, ptr %7, align 4
  %70 = and i32 %69, -2
  store i32 %70, ptr %7, align 4
  br i1 %60, label %71, label %78

71:                                               ; preds = %68
  %72 = add i8 %64, 4
  %73 = icmp ult i8 %72, 5
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = sext i8 %72 to i32
  %76 = getelementptr inbounds [5 x i32], ptr @switch.table.ps2_do_sendbyte, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %74, %71, %68
  %79 = phi i32 [ %61, %68 ], [ %77, %74 ], [ -5, %71 ]
  ret i32 %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ps2_begin_command(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 1
  %7 = select i1 %5, ptr %6, ptr %4
  tail call void @mutex_lock(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ps2_end_command(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 1
  %7 = select i1 %5, ptr %6, ptr %4
  tail call void @mutex_unlock(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ps2_drain(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = icmp ugt i32 %1, 8
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 8, %6 ], [ %1, %3 ]
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 1
  %14 = select i1 %12, ptr %13, ptr %11
  tail call void @mutex_lock(ptr noundef %14) #7
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  store i32 2, ptr %17, align 4
  %18 = trunc i32 %8 to i8
  %19 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5
  store i8 %18, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %22 = load i16, ptr %21, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %24 = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #7
  %25 = load i32, ptr %17, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = icmp eq i32 %24, 0
  %30 = select i1 %27, i1 %29, i1 false
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %59, label %32

32:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !13
  %33 = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #7
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #7
  %34 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  %35 = call i32 @prepare_to_wait_event(ptr noundef %34, ptr noundef nonnull %4, i32 noundef 2) #7
  %36 = load i32, ptr %17, align 4
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = icmp ne i32 %33, 0
  %41 = select i1 %38, i1 true, i1 %40
  %42 = select i1 %41, i32 %33, i32 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %39, i1 true, i1 %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %45, %32
  %46 = phi i32 [ %55, %45 ], [ %42, %32 ]
  %47 = call i32 @schedule_timeout(i32 noundef %46) #7
  %48 = call i32 @prepare_to_wait_event(ptr noundef %34, ptr noundef nonnull %4, i32 noundef 2) #7
  %49 = load i32, ptr %17, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = icmp ne i32 %47, 0
  %54 = select i1 %51, i1 true, i1 %53
  %55 = select i1 %54, i32 %47, i32 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %52, i1 true, i1 %56
  br i1 %57, label %58, label %45

58:                                               ; preds = %45, %32
  call void @finish_wait(ptr noundef %34, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %59

59:                                               ; preds = %58, %7
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 20
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr %13, ptr %62
  call void @mutex_unlock(ptr noundef %64) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext %0) #4 {
  %2 = zext i8 %0 to i32
  %3 = tail call ptr @memchr(ptr noundef nonnull @ps2_is_keyboard_id.keyboard_ids, i32 noundef %2, i32 noundef 6)
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ps2_command(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = lshr i32 %2, 12
  %7 = and i32 %6, 15
  %8 = lshr i32 %2, 8
  %9 = and i32 %8, 15
  %10 = icmp ugt i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #7
  br label %207

12:                                               ; preds = %3
  %13 = icmp eq i32 %7, 0
  %14 = icmp ne ptr %1, null
  %15 = or i1 %14, %13
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef null) #7
  br label %207

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #7
  %20 = icmp eq i32 %2, 754
  %21 = select i1 %20, i32 8, i32 0
  %22 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = trunc i32 %9 to i8
  %24 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5
  store i8 %23, ptr %24, align 4
  %25 = icmp ne i32 %9, 0
  %26 = and i1 %14, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %17
  %28 = load i8, ptr %1, align 1
  %29 = add nsw i32 %9, -1
  %30 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %29
  store i8 %28, ptr %30, align 1
  %31 = icmp eq i32 %9, 1
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %1, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = add nsw i32 %9, -2
  %36 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %35
  store i8 %34, ptr %36, align 1
  %37 = icmp eq i32 %9, 2
  br i1 %37, label %73, label %38

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %1, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = add nsw i32 %9, -3
  %42 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %41
  store i8 %40, ptr %42, align 1
  %43 = icmp eq i32 %9, 3
  br i1 %43, label %73, label %44

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %1, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = add nsw i32 %9, -4
  %48 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %47
  store i8 %46, ptr %48, align 1
  %49 = icmp eq i32 %9, 4
  br i1 %49, label %73, label %50

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %1, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = add nsw i32 %9, -5
  %54 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %53
  store i8 %52, ptr %54, align 1
  %55 = icmp eq i32 %9, 5
  br i1 %55, label %73, label %56

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %1, i32 5
  %58 = load i8, ptr %57, align 1
  %59 = add nsw i32 %9, -6
  %60 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %59
  store i8 %58, ptr %60, align 1
  %61 = icmp eq i32 %9, 6
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %1, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = add nsw i32 %9, -7
  %66 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %65
  store i8 %64, ptr %66, align 1
  %67 = icmp eq i32 %9, 7
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %1, i32 7
  %70 = load i8, ptr %69, align 1
  %71 = add nsw i32 %9, -8
  %72 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %71
  store i8 %70, ptr %72, align 1
  br label %73

73:                                               ; preds = %68, %62, %56, %50, %44, %38, %32, %27
  %74 = load i32, ptr %22, align 4
  br label %75

75:                                               ; preds = %73, %17
  %76 = phi i32 [ %74, %73 ], [ %21, %17 ]
  %77 = or i32 %76, 32
  store i32 %77, ptr %22, align 4
  %78 = icmp eq i32 %2, 767
  %79 = select i1 %78, i32 1000, i32 200
  %80 = trunc i32 %2 to i8
  %81 = tail call fastcc i32 @ps2_do_sendbyte(ptr noundef %0, i8 noundef zeroext %80, i32 noundef %79, i32 noundef 2)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %199

83:                                               ; preds = %75
  %84 = load i32, ptr %22, align 4
  %85 = and i32 %84, -33
  store i32 %85, ptr %22, align 4
  br i1 %13, label %95, label %89

86:                                               ; preds = %89
  %87 = add nuw nsw i32 %90, 1
  %88 = icmp eq i32 %87, %7
  br i1 %88, label %95, label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %87, %86 ], [ 0, %83 ]
  %91 = getelementptr i8, ptr %1, i32 %90
  %92 = load i8, ptr %91, align 1
  %93 = tail call fastcc i32 @ps2_do_sendbyte(ptr noundef %0, i8 noundef zeroext %92, i32 noundef 200, i32 noundef 2)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %86, label %199

95:                                               ; preds = %86, %83
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr inbounds %struct.serio, ptr %96, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %98 = load i16, ptr %97, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %97, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %100 = select i1 %78, i32 4000, i32 500
  %101 = tail call i32 @__msecs_to_jiffies(i32 noundef %100) #7
  %102 = load i32, ptr %22, align 4
  %103 = and i32 %102, 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = icmp ne i32 %101, 0
  %107 = select i1 %104, i1 true, i1 %106
  %108 = select i1 %107, i32 %101, i32 1
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %105, i1 true, i1 %109
  br i1 %110, label %137, label %111

111:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #7
  %112 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  %113 = call i32 @prepare_to_wait_event(ptr noundef %112, ptr noundef nonnull %4, i32 noundef 2) #7
  %114 = load i32, ptr %22, align 4
  %115 = and i32 %114, 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = select i1 %116, i1 true, i1 %106
  %119 = select i1 %118, i32 %101, i32 1
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %117, i1 true, i1 %120
  br i1 %121, label %135, label %122

122:                                              ; preds = %122, %111
  %123 = phi i32 [ %132, %122 ], [ %119, %111 ]
  %124 = call i32 @schedule_timeout(i32 noundef %123) #7
  %125 = call i32 @prepare_to_wait_event(ptr noundef %112, ptr noundef nonnull %4, i32 noundef 2) #7
  %126 = load i32, ptr %22, align 4
  %127 = and i32 %126, 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = icmp ne i32 %124, 0
  %131 = select i1 %128, i1 true, i1 %130
  %132 = select i1 %131, i32 %124, i32 1
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %129, i1 true, i1 %133
  br i1 %134, label %135, label %122

135:                                              ; preds = %122, %111
  %136 = phi i32 [ %119, %111 ], [ %132, %122 ]
  call void @finish_wait(ptr noundef %112, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %137

137:                                              ; preds = %135, %95
  %138 = phi i32 [ %108, %95 ], [ %136, %135 ]
  %139 = load i8, ptr %24, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %180, label %141

141:                                              ; preds = %137
  %142 = load i32, ptr %22, align 4
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %180

145:                                              ; preds = %141
  %146 = call fastcc i32 @ps2_adjust_timeout(ptr noundef %0, i32 noundef %2, i32 noundef %138)
  %147 = load i32, ptr %22, align 4
  %148 = and i32 %147, 2
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = icmp eq i32 %146, 0
  %152 = select i1 %149, i1 %151, i1 false
  %153 = select i1 %150, i1 true, i1 %152
  br i1 %153, label %180, label %154

154:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #7
  %155 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  %156 = call i32 @prepare_to_wait_event(ptr noundef %155, ptr noundef nonnull %5, i32 noundef 2) #7
  %157 = load i32, ptr %22, align 4
  %158 = and i32 %157, 2
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = icmp ne i32 %146, 0
  %162 = select i1 %159, i1 true, i1 %161
  %163 = select i1 %162, i32 %146, i32 1
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %160, i1 true, i1 %164
  br i1 %165, label %179, label %166

166:                                              ; preds = %166, %154
  %167 = phi i32 [ %176, %166 ], [ %163, %154 ]
  %168 = call i32 @schedule_timeout(i32 noundef %167) #7
  %169 = call i32 @prepare_to_wait_event(ptr noundef %155, ptr noundef nonnull %5, i32 noundef 2) #7
  %170 = load i32, ptr %22, align 4
  %171 = and i32 %170, 2
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = icmp ne i32 %168, 0
  %175 = select i1 %172, i1 true, i1 %174
  %176 = select i1 %175, i32 %168, i32 1
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %173, i1 true, i1 %177
  br i1 %178, label %179, label %166

179:                                              ; preds = %166, %154
  call void @finish_wait(ptr noundef %155, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #7
  br label %180

180:                                              ; preds = %179, %145, %141, %137
  %181 = load ptr, ptr %0, align 4
  %182 = getelementptr inbounds %struct.serio, ptr %181, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %182) #7
  br i1 %26, label %183, label %192

183:                                              ; preds = %183, %180
  %184 = phi i32 [ %190, %183 ], [ 0, %180 ]
  %185 = xor i32 %184, -1
  %186 = add nsw i32 %9, %185
  %187 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %186
  %188 = load i8, ptr %187, align 1
  %189 = getelementptr i8, ptr %1, i32 %184
  store i8 %188, ptr %189, align 1
  %190 = add nuw nsw i32 %184, 1
  %191 = icmp eq i32 %190, %9
  br i1 %191, label %192, label %183

192:                                              ; preds = %183, %180
  %193 = load i8, ptr %24, align 4
  %194 = icmp eq i8 %193, 0
  %195 = icmp eq i8 %193, 1
  %196 = select i1 %78, i1 %195, i1 false
  %197 = or i1 %194, %196
  %198 = select i1 %197, i32 0, i32 -71
  br label %199

199:                                              ; preds = %192, %89, %75
  %200 = phi i32 [ %81, %75 ], [ %198, %192 ], [ %93, %89 ]
  store i32 0, ptr %22, align 4
  %201 = load ptr, ptr %0, align 4
  %202 = getelementptr inbounds %struct.serio, ptr %201, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %203 = load i16, ptr %202, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %202, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %205 = icmp eq i32 %200, -11
  %206 = select i1 %205, i32 -71, i32 %200
  br label %207

207:                                              ; preds = %199, %16, %11
  %208 = phi i32 [ -22, %11 ], [ -22, %16 ], [ %206, %199 ]
  ret i32 %208
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ps2_adjust_timeout(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  switch i32 %1, label %34 [
    i32 767, label %4
    i32 754, label %6
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 10)
  br label %34

6:                                                ; preds = %3
  %7 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -86
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %18 = load i8, ptr %7, align 1
  br label %19

19:                                               ; preds = %10, %6
  %20 = phi i8 [ %18, %10 ], [ %8, %6 ]
  %21 = phi i32 [ 0, %10 ], [ %2, %6 ]
  %22 = zext i8 %20 to i32
  %23 = tail call ptr @memchr(ptr noundef nonnull @ps2_is_keyboard_id.keyboard_ids, i32 noundef %22, i32 noundef 6) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.serio, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  store i32 0, ptr %29, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.serio, ptr %30, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %34

34:                                               ; preds = %25, %19, %4, %3
  %35 = phi i32 [ %2, %3 ], [ %21, %19 ], [ 0, %25 ], [ %5, %4 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ps2_command(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 20
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 1
  %9 = select i1 %7, ptr %8, ptr %6
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = tail call i32 @__ps2_command(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 20
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %8, ptr %13
  tail call void @mutex_unlock(ptr noundef %15) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ps2_sliced_command(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 20
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 1
  %9 = select i1 %7, ptr %8, ptr %6
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = tail call i32 @__ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 230)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %13 = lshr i8 %1, 6
  store i8 %13, ptr %3, align 1
  %14 = call i32 @__ps2_command(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4328)
  %15 = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %17 = lshr i8 %1, 4
  %18 = and i8 %17, 3
  store i8 %18, ptr %3, align 1
  %19 = call i32 @__ps2_command(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4328)
  %20 = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %22 = lshr i8 %1, 2
  %23 = and i8 %22, 3
  store i8 %23, ptr %3, align 1
  %24 = call i32 @__ps2_command(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4328)
  %25 = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %27 = and i8 %1, 3
  store i8 %27, ptr %3, align 1
  %28 = call i32 @__ps2_command(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4328)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %29

29:                                               ; preds = %26, %21, %16, %12, %2
  %30 = phi i32 [ %10, %2 ], [ %14, %12 ], [ %19, %16 ], [ %24, %21 ], [ %28, %26 ]
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 20
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %8, ptr %33
  call void @mutex_unlock(ptr noundef %35) #7
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ps2_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @ps2_init.__key) #7
  %4 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @ps2_init.__key.2) #7
  store ptr %1, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ps2_handle_ack(ptr noundef %0, i8 noundef zeroext %1) #0 {
  switch i8 %1, label %3 [
    i8 -6, label %32
    i8 -2, label %6
    i8 -4, label %10
    i8 0, label %17
    i8 3, label %17
    i8 4, label %17
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  br label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 16
  store i32 %9, ptr %7, align 4
  br label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = and i32 %12, -17
  store i32 %16, ptr %11, align 4
  br label %28

17:                                               ; preds = %10, %2, %2, %2
  %18 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17, %3
  %23 = phi i32 [ %5, %3 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %25 = and i32 %23, -9
  store i32 %25, ptr %24, align 4
  %26 = and i32 %23, 32
  %27 = icmp ne i32 %26, 0
  br label %73

28:                                               ; preds = %15, %6
  %29 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 6
  store i8 %1, ptr %29, align 1
  %30 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  br label %42

32:                                               ; preds = %17, %2
  %33 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 6
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -17
  %37 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  %40 = or i32 %36, 6
  %41 = select i1 %39, i32 %36, i32 %40
  br label %42

42:                                               ; preds = %32, %28
  %43 = phi i32 [ %31, %28 ], [ %41, %32 ]
  %44 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %45 = and i32 %43, -2
  store i32 %45, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %46, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %47 = icmp eq i8 %1, -6
  br i1 %47, label %73, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = add i8 %50, -1
  store i8 %53, ptr %49, align 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %54
  store i8 %1, ptr %55, align 1
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, ptr %44, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = and i32 %57, -5
  store i32 %61, ptr %44, align 4
  %62 = load i8, ptr %49, align 4
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  tail call void @__wake_up(ptr noundef %46, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i8, ptr %49, align 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, ptr %44, align 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi i32 [ %69, %68 ], [ %61, %60 ]
  %72 = and i32 %71, -3
  store i32 %72, ptr %44, align 4
  tail call void @__wake_up(ptr noundef %46, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %73

73:                                               ; preds = %70, %65, %42, %22
  %74 = phi i1 [ %27, %22 ], [ true, %42 ], [ true, %65 ], [ true, %70 ]
  ret i1 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ps2_handle_response(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = add i8 %4, -1
  store i8 %7, ptr %3, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.ps2dev, ptr %0, i32 0, i32 4, i32 %8
  store i8 %1, ptr %9, align 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = and i32 %12, -5
  store i32 %16, ptr %11, align 4
  %17 = load i8, ptr %3, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %20, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i8, ptr %3, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i32 [ %25, %24 ], [ %16, %15 ]
  %28 = and i32 %27, -3
  store i32 %28, ptr %11, align 4
  %29 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %29, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %30

30:                                               ; preds = %26, %21
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ps2_cmd_aborted(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 6
  store i8 1, ptr %7, align 1
  br label %8

8:                                                ; preds = %6, %1
  %9 = and i32 %3, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ps2dev, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %13 = load i32, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %13, %11 ], [ %3, %8 ]
  %16 = and i32 %15, 16
  store i32 %16, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!8 = !{i64 2149176792}
!9 = !{i64 2149172616}
!10 = !{i64 2149172691, i64 2149172718, i64 2149172765, i64 2149172787, i64 2149172815, i64 2149172835}
!11 = !{i64 294450}
!12 = !{i64 2149200936}
!13 = !{!"auto-init"}
