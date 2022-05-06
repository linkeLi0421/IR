; ModuleID = '/llk/IR/drivers/usb/gadget/function/u_serial.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/u_serial.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gs_alloc_req:\09\09\09\09\09"
module asm "\09.asciz \09\22gs_alloc_req\22\09\09\09\09\09"
module asm "__kstrtabns_gs_alloc_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gs_free_req:\09\09\09\09\09"
module asm "\09.asciz \09\22gs_free_req\22\09\09\09\09\09"
module asm "__kstrtabns_gs_free_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_free_line:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_free_line\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_free_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_alloc_line_no_console:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_alloc_line_no_console\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_alloc_line_no_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_alloc_line:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_alloc_line\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_alloc_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_connect\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_resume\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.portmaster = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.gs_port = type { %struct.tty_port, %struct.spinlock, ptr, i8, %struct.list_head, i32, i32, %struct.list_head, i32, %struct.delayed_work, %struct.list_head, i32, i32, %struct.kfifo, %struct.wait_queue_head, i8, %struct.wait_queue_head, i8, i8, %struct.usb_cdc_line_coding }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kfifo = type { %union.anon.64, [0 x i8] }
%union.anon.64 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__kstrtab_gs_alloc_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_gs_alloc_req = external dso_local constant [0 x i8], align 1
@__ksymtab_gs_alloc_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gs_alloc_req to i32), ptr @__kstrtab_gs_alloc_req, ptr @__kstrtabns_gs_alloc_req }, section "___ksymtab_gpl+gs_alloc_req", align 4
@__kstrtab_gs_free_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_gs_free_req = external dso_local constant [0 x i8], align 1
@__ksymtab_gs_free_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gs_free_req to i32), ptr @__kstrtab_gs_free_req, ptr @__kstrtabns_gs_free_req }, section "___ksymtab_gpl+gs_free_req", align 4
@ports = internal global [8 x %struct.portmaster] zeroinitializer, align 4
@gs_tty_driver = internal unnamed_addr global ptr null, align 4
@__kstrtab_gserial_free_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_free_line = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_free_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_free_line to i32), ptr @__kstrtab_gserial_free_line, ptr @__kstrtabns_gserial_free_line }, section "___ksymtab_gpl+gserial_free_line", align 4
@.str = private unnamed_addr constant [51 x i8] c"\013%s: failed to register tty for port %d, err %ld\0A\00", align 1
@__func__.gserial_alloc_line_no_console = private unnamed_addr constant [30 x i8] c"gserial_alloc_line_no_console\00", align 1
@__kstrtab_gserial_alloc_line_no_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_alloc_line_no_console = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_alloc_line_no_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_alloc_line_no_console to i32), ptr @__kstrtab_gserial_alloc_line_no_console, ptr @__kstrtabns_gserial_alloc_line_no_console }, section "___ksymtab_gpl+gserial_alloc_line_no_console", align 4
@__kstrtab_gserial_alloc_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_alloc_line = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_alloc_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_alloc_line to i32), ptr @__kstrtab_gserial_alloc_line, ptr @__kstrtabns_gserial_alloc_line }, section "___ksymtab_gpl+gserial_alloc_line", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013serial line %d not allocated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\013serial line %d is in use.\0A\00", align 1
@__kstrtab_gserial_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_connect to i32), ptr @__kstrtab_gserial_connect, ptr @__kstrtabns_gserial_connect }, section "___ksymtab_gpl+gserial_connect", align 4
@__kstrtab_gserial_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_disconnect to i32), ptr @__kstrtab_gserial_disconnect, ptr @__kstrtabns_gserial_disconnect }, section "___ksymtab_gpl+gserial_disconnect", align 4
@__kstrtab_gserial_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_suspend to i32), ptr @__kstrtab_gserial_suspend, ptr @__kstrtabns_gserial_suspend }, section "___ksymtab_gpl+gserial_suspend", align 4
@__kstrtab_gserial_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_resume to i32), ptr @__kstrtab_gserial_resume, ptr @__kstrtabns_gserial_resume }, section "___ksymtab_gpl+gserial_resume", align 4
@__UNIQUE_ID_license220 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"drivers/usb/gadget/function/u_serial.c\00", align 1
@gs_port_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"&port->drain_wait\00", align 1
@gs_port_alloc.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"&port->close_wait\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\014ttyGS%d: unexpected RX status %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"\014%s: unexpected %s status %d\0A\00", align 1
@__func__.gs_write_complete = private unnamed_addr constant [18 x i8] c"gs_write_complete\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.9 = private unnamed_addr constant [9 x i8] c"g_serial\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ttyGS\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@gs_tty_ops = internal constant %struct.tty_operations { ptr null, ptr null, ptr null, ptr @gs_open, ptr @gs_close, ptr null, ptr null, ptr @gs_write, ptr @gs_put_char, ptr @gs_flush_chars, ptr @gs_write_room, ptr @gs_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @gs_unthrottle, ptr null, ptr null, ptr null, ptr @gs_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@userial_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"&ports[i].lock\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\013%s: cannot register, err %d\0A\00", align 1
@__func__.userial_init = private unnamed_addr constant [13 x i8] c"userial_init\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_license220, ptr @__ksymtab_gs_alloc_req, ptr @__ksymtab_gs_free_req, ptr @__ksymtab_gserial_alloc_line, ptr @__ksymtab_gserial_alloc_line_no_console, ptr @__ksymtab_gserial_connect, ptr @__ksymtab_gserial_disconnect, ptr @__ksymtab_gserial_free_line, ptr @__ksymtab_gserial_resume, ptr @__ksymtab_gserial_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gs_alloc_req(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @usb_ep_alloc_request(ptr noundef %0, i32 noundef %2) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_request, ptr %4, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef %2) #10
  store ptr %8, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %11

11:                                               ; preds = %10, %6, %3
  %12 = phi ptr [ null, %10 ], [ %4, %6 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gs_free_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gserial_free_line(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %2
  tail call void @mutex_lock(ptr noundef %3) #9
  %4 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %3) #9
  br label %10

8:                                                ; preds = %1
  store ptr null, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #9
  tail call fastcc void @gserial_free_port(ptr noundef nonnull %5)
  %9 = load ptr, ptr @gs_tty_driver, align 4
  tail call void @tty_unregister_device(ptr noundef %9, i32 noundef %2) #9
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gserial_free_port(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 9
  %4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %9 = load i16, ptr %5, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br i1 %8, label %21, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %12 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 16
  br label %13

13:                                               ; preds = %19, %11
  %14 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 2) #9
  call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %17 = load i16, ptr %5, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br i1 %16, label %20, label %19

19:                                               ; preds = %13
  call void @schedule() #9
  br label %13

20:                                               ; preds = %13
  call void @finish_wait(ptr noundef %12, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !14

25:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1191, i32 noundef 9, ptr noundef null) #9
  br label %26

26:                                               ; preds = %25, %21
  call void @tty_port_destroy(ptr noundef %0) #9
  call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gserial_alloc_line_no_console(ptr nocapture noundef writeonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ports) #9
  %2 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 0, i32 1), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %38

4:                                                ; preds = %56, %53, %50, %47, %44, %41, %38, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %38 ], [ 2, %41 ], [ 3, %44 ], [ 4, %47 ], [ 5, %50 ], [ 6, %53 ], [ 7, %56 ]
  %6 = phi ptr [ @ports, %1 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1), %38 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2), %41 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3), %44 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4), %47 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5), %50 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6), %53 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7), %56 ]
  %7 = phi ptr [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 0, i32 1), %1 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1, i32 1), %38 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2, i32 1), %41 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3, i32 1), %44 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4, i32 1), %47 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5, i32 1), %50 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6, i32 1), %53 ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7, i32 1), %56 ]
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 372) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @mutex_unlock(ptr noundef %6) #9
  br label %65

12:                                               ; preds = %4
  tail call void @tty_port_init(ptr noundef nonnull %9) #9
  %13 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @gs_port_alloc.__key) #9
  %15 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull @gs_port_alloc.__key.5) #9
  %16 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 9
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 9, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 9, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 9, i32 0, i32 2
  store ptr @gs_rx_push, ptr %19, align 8
  %20 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %21 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 4
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 4, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 7
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 7, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 10
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 10, i32 1
  store ptr %25, ptr %26, align 4
  %27 = trunc i32 %5 to i8
  %28 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 3
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 19
  store i32 9600, ptr %29, align 2
  %30 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 19, i32 1
  store i8 8, ptr %30, align 2
  %31 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 19, i32 2
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.gs_port, ptr %9, i32 0, i32 19, i32 3
  store i8 0, ptr %32, align 8
  store ptr %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #9
  %33 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %5, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr @gs_tty_driver, align 4
  %36 = tail call ptr @tty_port_register_device(ptr noundef %34, ptr noundef %35, i32 noundef %5, ptr noundef null) #9
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %60, label %64

38:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @ports) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1)) #9
  %39 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1, i32 1), align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %4, label %41

41:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1)) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2)) #9
  %42 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2, i32 1), align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %4, label %44

44:                                               ; preds = %41
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2)) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3)) #9
  %45 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3, i32 1), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %4, label %47

47:                                               ; preds = %44
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3)) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4)) #9
  %48 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4, i32 1), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %4, label %50

50:                                               ; preds = %47
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4)) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5)) #9
  %51 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5, i32 1), align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %4, label %53

53:                                               ; preds = %50
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5)) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6)) #9
  %54 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6, i32 1), align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %4, label %56

56:                                               ; preds = %53
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6)) #9
  tail call void @mutex_lock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7)) #9
  %57 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7, i32 1), align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %4, label %59

59:                                               ; preds = %56
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7)) #9
  br label %65

60:                                               ; preds = %12
  %61 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %5
  %62 = ptrtoint ptr %36 to i32
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.gserial_alloc_line_no_console, i32 noundef %5, i32 noundef %62) #12
  tail call void @mutex_lock(ptr noundef %61) #9
  store ptr null, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef %61) #9
  tail call fastcc void @gserial_free_port(ptr noundef %34)
  br label %65

64:                                               ; preds = %12
  store i8 %27, ptr %0, align 1
  br label %65

65:                                               ; preds = %64, %60, %59, %11
  %66 = phi i32 [ %62, %60 ], [ 0, %64 ], [ -12, %11 ], [ -16, %59 ]
  ret i32 %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gserial_alloc_line(ptr nocapture noundef %0) #0 {
  %2 = tail call i32 @gserial_alloc_line_no_console(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gserial_connect(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = zext i8 %1 to i32
  %4 = icmp ugt i8 %1, 7
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3) #12
  br label %52

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #12
  br label %52

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @usb_ep_enable(ptr noundef %19) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @usb_ep_enable(ptr noundef %25) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %24, align 4
  store ptr %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 1
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #9
  %32 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 1
  store ptr %7, ptr %32, align 4
  store ptr %0, ptr %12, align 4
  %33 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 4
  %34 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(7) %33, ptr noundef align 2 dereferenceable(7) %34, i32 7, i1 false)
  %35 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  tail call fastcc void @gs_start_io(ptr noundef nonnull %7)
  %39 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %46

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %38
  %47 = phi ptr [ %40, %38 ], [ %44, %42 ]
  tail call void %47(ptr noundef %0) #9
  br label %48

48:                                               ; preds = %46, %42, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #9
  br label %52

49:                                               ; preds = %22
  %50 = load ptr, ptr %18, align 4
  %51 = tail call i32 @usb_ep_disable(ptr noundef %50) #9
  br label %52

52:                                               ; preds = %49, %48, %17, %15, %9, %2
  %53 = phi i32 [ -16, %15 ], [ %26, %49 ], [ 0, %48 ], [ -22, %9 ], [ -6, %2 ], [ %20, %17 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gs_start_io(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gserial, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 4
  %11 = sub i32 16, %10
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %11, %9 ], [ 16, %1 ]
  %15 = getelementptr inbounds %struct.usb_ep, ptr %6, i32 0, i32 7
  %16 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 4, i32 1
  br label %17

17:                                               ; preds = %40, %13
  %18 = phi i32 [ 0, %13 ], [ %41, %40 ]
  %19 = load i56, ptr %15, align 2
  %20 = tail call ptr @usb_ep_alloc_request(ptr noundef %6, i32 noundef 2592) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = trunc i56 %19 to i32
  %24 = and i32 %23, 65535
  %25 = getelementptr inbounds %struct.usb_request, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 2592) #10
  store ptr %26, ptr %20, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  tail call void @usb_ep_free_request(ptr noundef %6, ptr noundef nonnull %20) #9
  br label %29

29:                                               ; preds = %28, %17
  %30 = load volatile ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %145, label %43

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.usb_request, ptr %20, i32 0, i32 7
  store ptr @gs_read_complete, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_request, ptr %20, i32 0, i32 9
  %35 = load ptr, ptr %16, align 4
  store ptr %34, ptr %16, align 4
  store ptr %2, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_request, ptr %20, i32 0, i32 9, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %34, ptr %35, align 4
  br i1 %8, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %7, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = add nuw nsw i32 %18, 1
  %42 = icmp eq i32 %41, %14
  br i1 %42, label %43, label %17

43:                                               ; preds = %40, %29, %9
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.gserial, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 10
  %48 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, ptr %48, align 4
  %52 = sub i32 16, %51
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %50, %43
  %55 = phi i32 [ %52, %50 ], [ 16, %43 ]
  %56 = getelementptr inbounds %struct.usb_ep, ptr %46, i32 0, i32 7
  %57 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 10, i32 1
  br label %58

58:                                               ; preds = %81, %54
  %59 = phi i32 [ 0, %54 ], [ %82, %81 ]
  %60 = load i56, ptr %56, align 2
  %61 = tail call ptr @usb_ep_alloc_request(ptr noundef %46, i32 noundef 2592) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = trunc i56 %60 to i32
  %65 = and i32 %64, 65535
  %66 = getelementptr inbounds %struct.usb_request, ptr %61, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 2592) #10
  store ptr %67, ptr %61, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  tail call void @usb_ep_free_request(ptr noundef %46, ptr noundef nonnull %61) #9
  br label %70

70:                                               ; preds = %69, %58
  %71 = load volatile ptr, ptr %47, align 4
  %72 = icmp eq ptr %71, %47
  br i1 %72, label %84, label %101

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.usb_request, ptr %61, i32 0, i32 7
  store ptr @gs_write_complete, ptr %74, align 4
  %75 = getelementptr inbounds %struct.usb_request, ptr %61, i32 0, i32 9
  %76 = load ptr, ptr %57, align 4
  store ptr %75, ptr %57, align 4
  store ptr %47, ptr %75, align 4
  %77 = getelementptr inbounds %struct.usb_request, ptr %61, i32 0, i32 9, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %75, ptr %76, align 4
  br i1 %49, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %48, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %48, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = add nuw nsw i32 %59, 1
  %83 = icmp eq i32 %82, %55
  br i1 %83, label %101, label %58

84:                                               ; preds = %70
  %85 = load volatile ptr, ptr %2, align 4
  %86 = icmp eq ptr %85, %2
  br i1 %86, label %145, label %87

87:                                               ; preds = %98, %84
  %88 = phi ptr [ %99, %98 ], [ %85, %84 ]
  %89 = getelementptr i8, ptr %88, i32 -36
  %90 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %88, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %91, ptr %93, align 4
  store volatile ptr %92, ptr %91, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %90, align 4
  %94 = load ptr, ptr %89, align 4
  tail call void @kfree(ptr noundef %94) #9
  tail call void @usb_ep_free_request(ptr noundef %6, ptr noundef %89) #9
  br i1 %8, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, ptr %7, align 4
  %97 = add i32 %96, -1
  store i32 %97, ptr %7, align 4
  br label %98

98:                                               ; preds = %95, %87
  %99 = load volatile ptr, ptr %2, align 4
  %100 = icmp eq ptr %99, %2
  br i1 %100, label %145, label %87

101:                                              ; preds = %81, %70, %50
  %102 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 8
  store i32 0, ptr %102, align 4
  %103 = tail call fastcc i32 @gs_start_rx(ptr noundef %0)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  tail call fastcc void @gs_start_tx(ptr noundef %0)
  %106 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void @tty_wakeup(ptr noundef %107) #9
  br label %145

108:                                              ; preds = %101
  %109 = load volatile ptr, ptr %2, align 4
  %110 = icmp eq ptr %109, %2
  br i1 %110, label %125, label %111

111:                                              ; preds = %122, %108
  %112 = phi ptr [ %123, %122 ], [ %109, %108 ]
  %113 = getelementptr i8, ptr %112, i32 -36
  %114 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = load ptr, ptr %112, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %115, ptr %117, align 4
  store volatile ptr %116, ptr %115, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %112, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %114, align 4
  %118 = load ptr, ptr %113, align 4
  tail call void @kfree(ptr noundef %118) #9
  tail call void @usb_ep_free_request(ptr noundef %6, ptr noundef %113) #9
  br i1 %8, label %122, label %119

119:                                              ; preds = %111
  %120 = load i32, ptr %7, align 4
  %121 = add i32 %120, -1
  store i32 %121, ptr %7, align 4
  br label %122

122:                                              ; preds = %119, %111
  %123 = load volatile ptr, ptr %2, align 4
  %124 = icmp eq ptr %123, %2
  br i1 %124, label %125, label %111

125:                                              ; preds = %122, %108
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr inbounds %struct.gserial, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = load volatile ptr, ptr %47, align 4
  %130 = icmp eq ptr %129, %47
  br i1 %130, label %145, label %131

131:                                              ; preds = %142, %125
  %132 = phi ptr [ %143, %142 ], [ %129, %125 ]
  %133 = getelementptr i8, ptr %132, i32 -36
  %134 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %132, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %135, ptr %137, align 4
  store volatile ptr %136, ptr %135, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %132, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %134, align 4
  %138 = load ptr, ptr %133, align 4
  tail call void @kfree(ptr noundef %138) #9
  tail call void @usb_ep_free_request(ptr noundef %128, ptr noundef %133) #9
  br i1 %49, label %142, label %139

139:                                              ; preds = %131
  %140 = load i32, ptr %48, align 4
  %141 = add i32 %140, -1
  store i32 %141, ptr %48, align 4
  br label %142

142:                                              ; preds = %139, %131
  %143 = load volatile ptr, ptr %47, align 4
  %144 = icmp eq ptr %143, %47
  br i1 %144, label %145, label %131

145:                                              ; preds = %142, %125, %105, %98, %84, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gserial_disconnect(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 19
  %9 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(7) %8, ptr noundef align 4 dereferenceable(7) %9, i32 7, i1 false)
  %10 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 2
  store ptr null, ptr %10, align 4
  store ptr null, ptr %2, align 4
  %11 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %16 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @tty_hangup(ptr noundef nonnull %17) #9
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 17
  store i8 0, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  %22 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @usb_ep_disable(ptr noundef %23) #9
  %25 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @usb_ep_disable(ptr noundef %26) #9
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %29 = load i32, ptr %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 13
  tail call void @__kfifo_free(ptr noundef %32) #9
  br label %33

33:                                               ; preds = %31, %20
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 4
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %50, label %38

38:                                               ; preds = %38, %33
  %39 = phi ptr [ %46, %38 ], [ %36, %33 ]
  %40 = getelementptr i8, ptr %39, i32 -36
  %41 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  %45 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %45) #9
  tail call void @usb_ep_free_request(ptr noundef %34, ptr noundef %40) #9
  %46 = load volatile ptr, ptr %35, align 4
  %47 = icmp eq ptr %46, %35
  br i1 %47, label %48, label %38

48:                                               ; preds = %38
  %49 = load ptr, ptr %22, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi ptr [ %49, %48 ], [ %34, %33 ]
  %52 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 7
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %65, label %55

55:                                               ; preds = %55, %50
  %56 = phi ptr [ %63, %55 ], [ %53, %50 ]
  %57 = getelementptr i8, ptr %56, i32 -36
  %58 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %62 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %62) #9
  tail call void @usb_ep_free_request(ptr noundef %51, ptr noundef %57) #9
  %63 = load volatile ptr, ptr %52, align 4
  %64 = icmp eq ptr %63, %52
  br i1 %64, label %65, label %55

65:                                               ; preds = %55, %50
  %66 = load ptr, ptr %25, align 4
  %67 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 10
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %80, label %70

70:                                               ; preds = %70, %65
  %71 = phi ptr [ %78, %70 ], [ %68, %65 ]
  %72 = getelementptr i8, ptr %71, i32 -36
  %73 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %71, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %73, align 4
  %77 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %77) #9
  tail call void @usb_ep_free_request(ptr noundef %66, ptr noundef %72) #9
  %78 = load volatile ptr, ptr %67, align 4
  %79 = icmp eq ptr %78, %67
  br i1 %79, label %80, label %70

80:                                               ; preds = %70, %65
  %81 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 11
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 12
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 5
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 6
  store i32 0, ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %28) #9
  br label %85

85:                                               ; preds = %80, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gserial_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 17
  store i8 1, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gserial_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 17
  store i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 18
  %8 = load i8, ptr %7, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  tail call fastcc void @gs_start_io(ptr noundef %3)
  %11 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #9
  br label %15

15:                                               ; preds = %14, %10
  store i8 0, ptr %7, align 1
  br label %16

16:                                               ; preds = %15, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef nonnull @__this_module, i32 noundef 12) #9
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %20

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 4
  store ptr @.str.9, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 5
  store ptr @.str.10, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10
  store i16 3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  store i16 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %10, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 36, i1 false)
  %11 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 2
  store i32 3261, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 6
  store i32 9600, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 12, i32 7
  store i32 9600, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 20
  store ptr @gs_tty_ops, ptr %14, align 4
  tail call void @__mutex_init(ptr noundef nonnull @ports, ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7), ptr noundef nonnull @.str.11, ptr noundef nonnull @userial_init.__key) #9
  %15 = tail call i32 @tty_register_driver(ptr noundef %1) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.userial_init, i32 noundef %15) #12
  tail call void @tty_driver_kref_put(ptr noundef %1) #9
  br label %20

19:                                               ; preds = %5
  store ptr %1, ptr @gs_tty_driver, align 4
  br label %20

20:                                               ; preds = %19, %17, %3
  %21 = phi i32 [ %4, %3 ], [ %15, %17 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gs_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %1) #9
  %2 = load ptr, ptr @gs_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %2) #9
  store ptr null, ptr @gs_tty_driver, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gs_rx_push(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -252
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -40
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 -168
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %68, label %9

9:                                                ; preds = %1
  %10 = icmp ne ptr %6, null
  %11 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  %12 = getelementptr i8, ptr %0, i32 -32
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = getelementptr i8, ptr %0, i32 -28
  %15 = getelementptr i8, ptr %0, i32 -20
  br label %16

16:                                               ; preds = %53, %9
  %17 = phi ptr [ %7, %9 ], [ %63, %53 ]
  %18 = phi i1 [ false, %9 ], [ %54, %53 ]
  %19 = phi i1 [ false, %9 ], [ %34, %53 ]
  %20 = getelementptr i8, ptr %17, i32 -36
  br i1 %10, label %21, label %25

21:                                               ; preds = %16
  %22 = load volatile i32, ptr %11, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21, %16
  %26 = getelementptr i8, ptr %17, i32 12
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %29 [
    i32 -108, label %28
    i32 0, label %33
  ]

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  %30 = load i8, ptr %12, align 4
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %31, i32 noundef %27) #12
  br label %33

33:                                               ; preds = %29, %28, %25
  %34 = phi i1 [ %19, %29 ], [ %19, %25 ], [ true, %28 ]
  %35 = getelementptr i8, ptr %17, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %37, i1 %10, i1 false
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load ptr, ptr %20, align 4
  %41 = load i32, ptr %13, align 4
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = sub i32 %36, %41
  %44 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %2, ptr noundef %42, i8 noundef zeroext 0, i32 noundef %43) #9
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %45, i1 true, i1 %18
  %47 = icmp eq i32 %44, %43
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, ptr %13, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load i32, ptr %13, align 4
  %51 = add i32 %50, %44
  store i32 %51, ptr %13, align 4
  br i1 %46, label %66, label %68

52:                                               ; preds = %21
  br i1 %18, label %66, label %68

53:                                               ; preds = %48, %33
  %54 = phi i1 [ %18, %33 ], [ %46, %48 ]
  %55 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %17, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %57, ptr %56, align 4
  %59 = load ptr, ptr %14, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %17, ptr %60, align 4
  store ptr %59, ptr %17, align 4
  store ptr %14, ptr %55, align 4
  store volatile ptr %17, ptr %14, align 4
  %61 = load i32, ptr %15, align 4
  %62 = add i32 %61, -1
  store i32 %62, ptr %15, align 4
  %63 = load volatile ptr, ptr %3, align 4
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %65, label %16

65:                                               ; preds = %53
  br i1 %54, label %66, label %68

66:                                               ; preds = %65, %52, %49
  %67 = phi i1 [ %19, %52 ], [ %34, %65 ], [ %34, %49 ]
  tail call void @tty_flip_buffer_push(ptr noundef %2) #9
  br label %68

68:                                               ; preds = %66, %65, %52, %49, %1
  %69 = phi i1 [ %19, %52 ], [ %67, %66 ], [ %34, %65 ], [ %34, %49 ], [ false, %1 ]
  %70 = load volatile ptr, ptr %3, align 4
  %71 = icmp eq ptr %70, %3
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load ptr, ptr @system_wq, align 4
  %79 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %0, i32 noundef 1) #9
  br label %80

80:                                               ; preds = %77, %72, %68
  br i1 %69, label %87, label %81

81:                                               ; preds = %80
  %82 = getelementptr i8, ptr %0, i32 -36
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call fastcc i32 @gs_start_rx(ptr noundef %2)
  br label %87

87:                                               ; preds = %85, %81, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %88 = load i16, ptr %4, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gs_start_rx(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gserial, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.usb_ep, ptr %6, i32 0, i32 7
  %10 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %38, %1
  %12 = load volatile ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %8, align 4
  %19 = icmp sgt i32 %18, 15
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %12, i32 -36
  %22 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %26 = load i56, ptr %9, align 2
  %27 = trunc i56 %26 to i32
  %28 = and i32 %27, 65535
  %29 = getelementptr i8, ptr %12, i32 -32
  store i32 %28, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %30 = load i16, ptr %10, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %32 = tail call i32 @usb_ep_queue(ptr noundef %6, ptr noundef %21, i32 noundef 2592) #9
  tail call void @_raw_spin_lock(ptr noundef %10) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %12, ptr %37, align 4
  store ptr %36, ptr %12, align 4
  store ptr %2, ptr %35, align 4
  store volatile ptr %12, ptr %2, align 4
  br label %43

38:                                               ; preds = %20
  %39 = load i32, ptr %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %8, align 4
  %41 = load ptr, ptr %3, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %11

43:                                               ; preds = %38, %34, %17, %14, %11
  %44 = load i32, ptr %8, align 4
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gs_read_complete(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr %5, ptr %7, align 4
  store ptr %6, ptr %5, align 4
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %5, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 9
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10, i32 noundef 0) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gs_write_complete(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  store ptr %7, ptr %5, align 4
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9, i32 1
  store ptr %6, ptr %9, align 4
  store volatile ptr %5, ptr %6, align 4
  %10 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 0, label %19
    i32 -108, label %20
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gs_write_complete, ptr noundef %17, i32 noundef %14) #12
  br label %19

19:                                               ; preds = %15, %2
  tail call fastcc void @gs_start_tx(ptr noundef %3)
  br label %20

20:                                               ; preds = %19, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gs_start_tx(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gserial, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 11
  %11 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 7
  %12 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 13, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 1
  %15 = load i8, ptr %9, align 4, !range !15
  %16 = icmp eq i8 %15, 0
  br label %17

17:                                               ; preds = %64, %6
  %18 = phi i1 [ %16, %6 ], [ true, %64 ]
  %19 = phi i1 [ false, %6 ], [ true, %64 ]
  br i1 %18, label %20, label %70

20:                                               ; preds = %17
  %21 = load volatile ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %70, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %10, align 4
  %25 = icmp sgt i32 %24, 15
  br i1 %25, label %69, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %21, i32 -36
  %28 = load i56, ptr %11, align 2
  %29 = trunc i56 %28 to i32
  %30 = and i32 %29, 65535
  %31 = load i32, ptr %12, align 4
  %32 = load i32, ptr %13, align 4
  %33 = sub i32 %31, %32
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %30) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 4
  %38 = tail call i32 @__kfifo_out(ptr noundef %12, ptr noundef %37, i32 noundef %34) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %26
  %41 = getelementptr inbounds %struct.gs_port, ptr %0, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %41, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br i1 %19, label %71, label %76

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %21, i32 -32
  store i32 %38, ptr %43, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  %48 = load i32, ptr %12, align 4
  %49 = load i32, ptr %13, align 4
  %50 = icmp eq i32 %48, %49
  %51 = getelementptr i8, ptr %21, i32 -12
  %52 = load i32, ptr %51, align 4
  %53 = select i1 %50, i32 262144, i32 0
  %54 = and i32 %52, -262145
  %55 = or i32 %54, %53
  store i32 %55, ptr %51, align 4
  store i8 1, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %56 = load i16, ptr %14, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %58 = tail call i32 @usb_ep_queue(ptr noundef %8, ptr noundef %27, i32 noundef 2592) #9
  tail call void @_raw_spin_lock(ptr noundef %14) #9
  store i8 0, ptr %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %21, ptr %63, align 4
  store ptr %62, ptr %21, align 4
  store ptr %2, ptr %61, align 4
  store volatile ptr %21, ptr %2, align 4
  br label %71

64:                                               ; preds = %42
  %65 = load i32, ptr %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %10, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %17

69:                                               ; preds = %23
  br i1 %19, label %71, label %76

70:                                               ; preds = %20, %17
  br i1 %19, label %71, label %76

71:                                               ; preds = %70, %69, %64, %60, %40
  %72 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @tty_wakeup(ptr noundef nonnull %73) #9
  br label %76

76:                                               ; preds = %75, %71, %70, %69, %40, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gs_open(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %4
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 13, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %16 = load i16, ptr %10, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %18 = tail call i32 @__kfifo_alloc(ptr noundef %15, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #9
  br label %21

21:                                               ; preds = %20, %9
  %22 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  store ptr %7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 1
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 17
  %34 = load i8, ptr %33, align 4, !range !15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  tail call fastcc void @gs_start_io(ptr noundef nonnull %7)
  %37 = getelementptr inbounds %struct.gserial, ptr %30, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef nonnull %30) #9
  br label %43

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.gs_port, ptr %7, i32 0, i32 18
  store i8 1, ptr %42, align 1
  br label %43

43:                                               ; preds = %41, %40, %36, %26, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %44 = load i16, ptr %10, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %46

46:                                               ; preds = %43, %14, %2
  %47 = phi i32 [ 0, %43 ], [ -19, %2 ], [ %18, %14 ]
  tail call void @mutex_unlock(ptr noundef %5) #9
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gs_close(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %89, %2
  %11 = phi i32 [ %90, %89 ], [ %8, %2 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 680, i32 noundef 9, ptr noundef null) #9
  br label %102

14:                                               ; preds = %10
  %15 = add i32 %11, -1
  store i32 %15, ptr %7, align 4
  br label %102

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 13
  br label %95

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 17
  %24 = load i8, ptr %23, align 4, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gserial, ptr %18, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef nonnull %18) #9
  br label %31

31:                                               ; preds = %30, %26, %22
  %32 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 13, i32 0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %97, label %37

37:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %38 = load i16, ptr %6, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %40 = load ptr, ptr %17, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %86, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %32, align 4
  %44 = load i32, ptr %34, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %83, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %7, align 4
  %48 = icmp slt i32 %47, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %49 = load i16, ptr %6, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br i1 %48, label %51, label %89

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %52 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 14
  br label %53

53:                                               ; preds = %79, %51
  %54 = phi i32 [ 1500, %51 ], [ %80, %79 ]
  %55 = call i32 @prepare_to_wait_event(ptr noundef %52, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %56 = load ptr, ptr %17, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %32, align 4
  %60 = load i32, ptr %34, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %7, align 4
  %64 = icmp sgt i32 %63, 1
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %62, %58, %53
  %67 = phi i32 [ 1, %58 ], [ 1, %53 ], [ %65, %62 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %68 = load i16, ptr %6, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %70 = icmp ne i32 %67, 0
  %71 = xor i1 %70, true
  %72 = icmp ne i32 %54, 0
  %73 = select i1 %71, i1 true, i1 %72
  %74 = select i1 %73, i32 %54, i32 1
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %70, i1 true, i1 %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = icmp eq i32 %55, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = call i32 @schedule_timeout(i32 noundef %74) #9
  br label %53

81:                                               ; preds = %66
  call void @finish_wait(ptr noundef %52, ptr noundef nonnull %3) #9
  br label %82

82:                                               ; preds = %81, %77
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %89

83:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %84 = load i16, ptr %6, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %89

86:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %87 = load i16, ptr %6, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %89

89:                                               ; preds = %86, %83, %82, %46
  call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %90 = load i32, ptr %7, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %10

92:                                               ; preds = %89
  %93 = load ptr, ptr %17, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %20
  %96 = phi ptr [ %21, %20 ], [ %32, %92 ]
  call void @__kfifo_free(ptr noundef %96) #9
  br label %98

97:                                               ; preds = %92, %31
  store i32 0, ptr %34, align 4
  store i32 0, ptr %32, align 4
  br label %98

98:                                               ; preds = %97, %95
  %99 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 18
  store i8 0, ptr %99, align 1
  store i32 0, ptr %7, align 4
  %100 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  store ptr null, ptr %100, align 4
  %101 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 16
  call void @__wake_up(ptr noundef %101, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %102

102:                                              ; preds = %98, %14, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %103 = load i16, ptr %6, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 13
  %11 = tail call i32 @__kfifo_in(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.gs_port, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @gs_start_tx(ptr noundef %5)
  br label %18

18:                                               ; preds = %17, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gs_put_char(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 13, i32 0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 13, i32 0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ule i32 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 13, i32 0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = and i32 %13, %8
  %19 = getelementptr i8, ptr %17, i32 %18
  store i8 %1, ptr %19, align 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !17
  %20 = load i32, ptr %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %7, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = zext i1 %14 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gs_flush_chars(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @gs_start_tx(ptr noundef %3)
  br label %10

10:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gs_write_room(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 13
  %11 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %12, 1
  %17 = sub i32 %16, %13
  %18 = add i32 %17, %15
  br label %19

19:                                               ; preds = %9, %1
  %20 = phi i32 [ %18, %9 ], [ 0, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gs_chars_in_buffer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gs_unthrottle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 9
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10, i32 noundef 0) #9
  br label %13

13:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gs_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.gs_port, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gserial, ptr %7, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %7, i32 noundef %1) #9
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], [ 0, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %17 = load i16, ptr %5, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2149199641}
!9 = !{i64 2149195465}
!10 = !{i64 2149195540, i64 2149195567, i64 2149195614, i64 2149195636, i64 2149195664, i64 2149195684}
!11 = !{i64 340889}
!12 = !{i64 2149223785}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i8 0, i8 2}
!16 = !{i64 2149222644}
!17 = !{i64 2153018794}
