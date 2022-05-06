; ModuleID = '/llk/IR/drivers/usb/core/urb.c_pt.bc'
source_filename = "../drivers/usb/core/urb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_init_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_init_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_init_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_alloc_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_alloc_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_alloc_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_free_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_free_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_free_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_anchor_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_anchor_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_anchor_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unanchor_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unanchor_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unanchor_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_pipe_type_check:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_pipe_type_check\22\09\09\09\09\09"
module asm "__kstrtabns_usb_pipe_type_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_urb_ep_type_check:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_urb_ep_type_check\22\09\09\09\09\09"
module asm "__kstrtabns_usb_urb_ep_type_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_submit_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_submit_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_submit_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unlink_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unlink_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unlink_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_kill_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_kill_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_kill_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_poison_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_poison_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_poison_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unpoison_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unpoison_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unpoison_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_block_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_block_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_block_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_kill_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_kill_anchored_urbs\22\09\09\09\09\09"
module asm "__kstrtabns_usb_kill_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_poison_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_poison_anchored_urbs\22\09\09\09\09\09"
module asm "__kstrtabns_usb_poison_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unpoison_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unpoison_anchored_urbs\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unpoison_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unlink_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unlink_anchored_urbs\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unlink_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_anchor_suspend_wakeups:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_anchor_suspend_wakeups\22\09\09\09\09\09"
module asm "__kstrtabns_usb_anchor_suspend_wakeups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_anchor_resume_wakeups:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_anchor_resume_wakeups\22\09\09\09\09\09"
module asm "__kstrtabns_usb_anchor_resume_wakeups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_wait_anchor_empty_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_wait_anchor_empty_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_usb_wait_anchor_empty_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_from_anchor:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_from_anchor\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_from_anchor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_scuttle_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_scuttle_anchored_urbs\22\09\09\09\09\09"
module asm "__kstrtabns_usb_scuttle_anchored_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_anchor_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_anchor_empty\22\09\09\09\09\09"
module asm "__kstrtabns_usb_anchor_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_usb_init_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_init_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_init_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_init_urb to i32), ptr @__kstrtab_usb_init_urb, ptr @__kstrtabns_usb_init_urb }, section "___ksymtab_gpl+usb_init_urb", align 4
@__kstrtab_usb_alloc_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_alloc_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_alloc_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_alloc_urb to i32), ptr @__kstrtab_usb_alloc_urb, ptr @__kstrtabns_usb_alloc_urb }, section "___ksymtab_gpl+usb_alloc_urb", align 4
@__kstrtab_usb_free_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_free_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_free_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_free_urb to i32), ptr @__kstrtab_usb_free_urb, ptr @__kstrtabns_usb_free_urb }, section "___ksymtab_gpl+usb_free_urb", align 4
@__kstrtab_usb_get_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_urb to i32), ptr @__kstrtab_usb_get_urb, ptr @__kstrtabns_usb_get_urb }, section "___ksymtab_gpl+usb_get_urb", align 4
@__kstrtab_usb_anchor_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_anchor_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_anchor_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_anchor_urb to i32), ptr @__kstrtab_usb_anchor_urb, ptr @__kstrtabns_usb_anchor_urb }, section "___ksymtab_gpl+usb_anchor_urb", align 4
@__kstrtab_usb_unanchor_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unanchor_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unanchor_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unanchor_urb to i32), ptr @__kstrtab_usb_unanchor_urb, ptr @__kstrtabns_usb_unanchor_urb }, section "___ksymtab_gpl+usb_unanchor_urb", align 4
@pipetypes = internal unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 3, i32 1], align 4
@__kstrtab_usb_pipe_type_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_pipe_type_check = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_pipe_type_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_pipe_type_check to i32), ptr @__kstrtab_usb_pipe_type_check, ptr @__kstrtabns_usb_pipe_type_check }, section "___ksymtab_gpl+usb_pipe_type_check", align 4
@__kstrtab_usb_urb_ep_type_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_urb_ep_type_check = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_urb_ep_type_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_urb_ep_type_check to i32), ptr @__kstrtab_usb_urb_ep_type_check, ptr @__kstrtabns_usb_urb_ep_type_check }, section "___ksymtab_gpl+usb_urb_ep_type_check", align 4
@usb_submit_urb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"drivers/usb/core/urb.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"URB %pK submitted while active\0A\00", align 1
@usb_submit_urb.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"%s %s: BOGUS control dir, pipe %x doesn't match bRequestType %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s %s: BOGUS urb xfer, pipe %x != type %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s %s: BOGUS urb flags, %x --> %x\0A\00", align 1
@__kstrtab_usb_submit_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_submit_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_submit_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_submit_urb to i32), ptr @__kstrtab_usb_submit_urb, ptr @__kstrtabns_usb_submit_urb }, section "___ksymtab_gpl+usb_submit_urb", align 4
@__kstrtab_usb_unlink_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unlink_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unlink_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unlink_urb to i32), ptr @__kstrtab_usb_unlink_urb, ptr @__kstrtabns_usb_unlink_urb }, section "___ksymtab_gpl+usb_unlink_urb", align 4
@usb_kill_urb_queue = external dso_local global %struct.wait_queue_head, align 4
@__kstrtab_usb_kill_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_kill_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_kill_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_kill_urb to i32), ptr @__kstrtab_usb_kill_urb, ptr @__kstrtabns_usb_kill_urb }, section "___ksymtab_gpl+usb_kill_urb", align 4
@__kstrtab_usb_poison_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_poison_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_poison_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_poison_urb to i32), ptr @__kstrtab_usb_poison_urb, ptr @__kstrtabns_usb_poison_urb }, section "___ksymtab_gpl+usb_poison_urb", align 4
@__kstrtab_usb_unpoison_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unpoison_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unpoison_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unpoison_urb to i32), ptr @__kstrtab_usb_unpoison_urb, ptr @__kstrtabns_usb_unpoison_urb }, section "___ksymtab_gpl+usb_unpoison_urb", align 4
@__kstrtab_usb_block_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_block_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_block_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_block_urb to i32), ptr @__kstrtab_usb_block_urb, ptr @__kstrtabns_usb_block_urb }, section "___ksymtab_gpl+usb_block_urb", align 4
@__kstrtab_usb_kill_anchored_urbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_kill_anchored_urbs = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_kill_anchored_urbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_kill_anchored_urbs to i32), ptr @__kstrtab_usb_kill_anchored_urbs, ptr @__kstrtabns_usb_kill_anchored_urbs }, section "___ksymtab_gpl+usb_kill_anchored_urbs", align 4
@__kstrtab_usb_poison_anchored_urbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_poison_anchored_urbs = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_poison_anchored_urbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_poison_anchored_urbs to i32), ptr @__kstrtab_usb_poison_anchored_urbs, ptr @__kstrtabns_usb_poison_anchored_urbs }, section "___ksymtab_gpl+usb_poison_anchored_urbs", align 4
@__kstrtab_usb_unpoison_anchored_urbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unpoison_anchored_urbs = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unpoison_anchored_urbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unpoison_anchored_urbs to i32), ptr @__kstrtab_usb_unpoison_anchored_urbs, ptr @__kstrtabns_usb_unpoison_anchored_urbs }, section "___ksymtab_gpl+usb_unpoison_anchored_urbs", align 4
@__kstrtab_usb_unlink_anchored_urbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unlink_anchored_urbs = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unlink_anchored_urbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unlink_anchored_urbs to i32), ptr @__kstrtab_usb_unlink_anchored_urbs, ptr @__kstrtabns_usb_unlink_anchored_urbs }, section "___ksymtab_gpl+usb_unlink_anchored_urbs", align 4
@__kstrtab_usb_anchor_suspend_wakeups = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_anchor_suspend_wakeups = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_anchor_suspend_wakeups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_anchor_suspend_wakeups to i32), ptr @__kstrtab_usb_anchor_suspend_wakeups, ptr @__kstrtabns_usb_anchor_suspend_wakeups }, section "___ksymtab_gpl+usb_anchor_suspend_wakeups", align 4
@__kstrtab_usb_anchor_resume_wakeups = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_anchor_resume_wakeups = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_anchor_resume_wakeups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_anchor_resume_wakeups to i32), ptr @__kstrtab_usb_anchor_resume_wakeups, ptr @__kstrtabns_usb_anchor_resume_wakeups }, section "___ksymtab_gpl+usb_anchor_resume_wakeups", align 4
@__kstrtab_usb_wait_anchor_empty_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_wait_anchor_empty_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_wait_anchor_empty_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_wait_anchor_empty_timeout to i32), ptr @__kstrtab_usb_wait_anchor_empty_timeout, ptr @__kstrtabns_usb_wait_anchor_empty_timeout }, section "___ksymtab_gpl+usb_wait_anchor_empty_timeout", align 4
@__kstrtab_usb_get_from_anchor = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_from_anchor = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_from_anchor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_from_anchor to i32), ptr @__kstrtab_usb_get_from_anchor, ptr @__kstrtabns_usb_get_from_anchor }, section "___ksymtab_gpl+usb_get_from_anchor", align 4
@__kstrtab_usb_scuttle_anchored_urbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_scuttle_anchored_urbs = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_scuttle_anchored_urbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_scuttle_anchored_urbs to i32), ptr @__kstrtab_usb_scuttle_anchored_urbs, ptr @__kstrtabns_usb_scuttle_anchored_urbs }, section "___ksymtab_gpl+usb_scuttle_anchored_urbs", align 4
@__kstrtab_usb_anchor_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_anchor_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_anchor_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_anchor_empty to i32), ptr @__kstrtab_usb_anchor_empty, ptr @__kstrtabns_usb_anchor_empty }, section "___ksymtab_gpl+usb_anchor_empty", align 4
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_usb_alloc_urb, ptr @__ksymtab_usb_anchor_empty, ptr @__ksymtab_usb_anchor_resume_wakeups, ptr @__ksymtab_usb_anchor_suspend_wakeups, ptr @__ksymtab_usb_anchor_urb, ptr @__ksymtab_usb_block_urb, ptr @__ksymtab_usb_free_urb, ptr @__ksymtab_usb_get_from_anchor, ptr @__ksymtab_usb_get_urb, ptr @__ksymtab_usb_init_urb, ptr @__ksymtab_usb_kill_anchored_urbs, ptr @__ksymtab_usb_kill_urb, ptr @__ksymtab_usb_pipe_type_check, ptr @__ksymtab_usb_poison_anchored_urbs, ptr @__ksymtab_usb_poison_urb, ptr @__ksymtab_usb_scuttle_anchored_urbs, ptr @__ksymtab_usb_submit_urb, ptr @__ksymtab_usb_unanchor_urb, ptr @__ksymtab_usb_unlink_anchored_urbs, ptr @__ksymtab_usb_unlink_urb, ptr @__ksymtab_usb_unpoison_anchored_urbs, ptr @__ksymtab_usb_unpoison_urb, ptr @__ksymtab_usb_urb_ep_type_check, ptr @__ksymtab_usb_wait_anchor_empty_timeout], section "llvm.metadata"

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_init_urb(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(124) %4, i8 0, i32 120, i1 false)
  store volatile i32 1, ptr %0, align 4
  %5 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 6
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 6, i32 1
  store ptr %7, ptr %8, align 4
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_alloc_urb(i32 noundef %0, i32 noundef %1) #2 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 16) #9
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 124) #9
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef %1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(124) %11, i8 0, i32 120, i1 false) #9
  store volatile i32 1, ptr %8, align 64
  %12 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 5
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 5, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 6
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 6, i32 1
  store ptr %14, ptr %15, align 32
  br label %16

16:                                               ; preds = %10, %2
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_free_urb(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !10
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %19, label %9, !prof !11

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %19

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #9
  br label %18

18:                                               ; preds = %15, %10
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %19

19:                                               ; preds = %18, %9, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_urb(ptr noundef returned %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !13
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !14

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #9
  br label %13

13:                                               ; preds = %11, %7, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_anchor_urb(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_anchor, ptr %1, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !13
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !14

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %15) #9
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %17, ptr %18, align 4
  store ptr %1, ptr %17, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 6, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %17, ptr %19, align 4
  %21 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 7
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_anchor, ptr %1, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26, !prof !11

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #9, !srcloc !9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #9, !srcloc !15
  br label %29

29:                                               ; preds = %26, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unanchor_urb(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_anchor, ptr %5, i32 0, i32 2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %7
  tail call fastcc void @__usb_unanchor_urb(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %13

13:                                               ; preds = %12, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br label %14

14:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__usb_unanchor_urb(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 7
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !10
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %26, label %16, !prof !11

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #9
  br label %26

17:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %18 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %22, %17
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %26

26:                                               ; preds = %25, %16, %14, %2
  %27 = getelementptr inbounds %struct.usb_anchor, ptr %1, i32 0, i32 3
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load volatile ptr, ptr %1, align 4
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.usb_anchor, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %34, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %35

35:                                               ; preds = %33, %30, %26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_pipe_type_check(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = and i32 %1, 128
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 21
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 22
  %7 = select i1 %4, ptr %6, ptr %5
  %8 = lshr i32 %1, 15
  %9 = and i32 %8, 15
  %10 = getelementptr ptr, ptr %7, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = lshr i32 %1, 30
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 3
  %18 = zext i8 %17 to i32
  %19 = getelementptr [4 x i32], ptr @pipetypes, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %14, %20
  %22 = select i1 %21, i32 0, i32 -22
  br label %23

23:                                               ; preds = %13, %2
  %24 = phi i32 [ -22, %2 ], [ %22, %13 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_urb_ep_type_check(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 21
  %9 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 22
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = lshr i32 %5, 15
  %12 = and i32 %11, 15
  %13 = getelementptr ptr, ptr %10, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = lshr i32 %5, 30
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 3
  %21 = zext i8 %20 to i32
  %22 = getelementptr [4 x i32], ptr @pipetypes, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %17, %23
  %25 = select i1 %24, i32 0, i32 -22
  br label %26

26:                                               ; preds = %16, %1
  %27 = phi i32 [ -22, %1 ], [ %25, %16 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_submit_urb(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %312, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %312, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i1, ptr @usb_submit_urb.__already_done, align 1
  br i1 %13, label %312, label %14, !prof !11

14:                                               ; preds = %12
  store i1 true, ptr @usb_submit_urb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 378, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #9
  br label %312

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %312, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %312, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 21
  %29 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 22
  %30 = select i1 %27, ptr %29, ptr %28
  %31 = lshr i32 %25, 15
  %32 = and i32 %31, 15
  %33 = getelementptr ptr, ptr %30, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %312, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  store ptr %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  store i32 -115, ptr %38, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %34, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 3
  %43 = zext i8 %42 to i32
  %44 = icmp eq i8 %42, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 21
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %312, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %47, align 1
  %51 = icmp sgt i8 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %47, i32 0, i32 4
  %54 = load i16, ptr %53, align 1
  %55 = icmp eq i16 %54, 0
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ true, %49 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = lshr i32 %25, 7
  %60 = and i32 %59, 1
  %61 = xor i32 %60, 1
  %62 = icmp ne i32 %61, %58
  %63 = load i1, ptr @usb_submit_urb.__already_done.2, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %79, !prof !14

66:                                               ; preds = %56
  store i1 true, ptr @usb_submit_urb.__already_done.2, align 1
  %67 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %68 = tail call ptr @dev_driver_string(ptr noundef %67) #9
  %69 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load ptr, ptr %67, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi ptr [ %73, %72 ], [ %70, %66 ]
  %76 = load i32, ptr %24, align 4
  %77 = load i8, ptr %47, align 1
  %78 = zext i8 %77 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %68, ptr noundef %75, i32 noundef %76, i32 noundef %78) #9
  br label %79

79:                                               ; preds = %74, %56
  %80 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %47, i32 0, i32 4
  %81 = load i16, ptr %80, align 1
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %82
  br i1 %85, label %105, label %312

86:                                               ; preds = %36
  %87 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %34, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -8323585
  %92 = icmp slt i8 %88, 0
  %93 = and i8 %88, -128
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 2
  %96 = or i32 %95, %91
  store i32 %96, ptr %89, align 4
  %97 = load i32, ptr %20, align 8
  %98 = icmp ult i32 %97, 7
  br i1 %98, label %312, label %99

99:                                               ; preds = %86
  %100 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %34, i32 0, i32 4
  %101 = load i16, ptr %100, align 1
  %102 = and i16 %101, 2047
  %103 = zext i16 %102 to i32
  %104 = icmp eq i16 %102, 0
  br i1 %104, label %312, label %117

105:                                              ; preds = %79
  %106 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, -8323585
  %109 = xor i1 %57, true
  %110 = select i1 %57, i32 0, i32 512
  %111 = or i32 %108, %110
  store i32 %111, ptr %106, align 4
  %112 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %34, i32 0, i32 4
  %113 = load i16, ptr %112, align 1
  %114 = and i16 %113, 2047
  %115 = zext i16 %114 to i32
  %116 = icmp eq i16 %114, 0
  br i1 %116, label %312, label %167

117:                                              ; preds = %99
  %118 = icmp eq i8 %42, 1
  br i1 %118, label %119, label %167

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, 4
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.usb_host_endpoint, ptr %34, i32 0, i32 1, i32 2
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %126, 1
  %128 = getelementptr inbounds %struct.usb_host_endpoint, ptr %34, i32 0, i32 1, i32 3
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, 3
  %131 = add nuw nsw i8 %130, 1
  %132 = zext i8 %131 to i32
  %133 = mul nuw nsw i32 %127, %103
  %134 = mul nuw nsw i32 %133, %132
  %135 = icmp ne i32 %121, 6
  %136 = icmp sgt i8 %129, -1
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %149, label %138

138:                                              ; preds = %123
  %139 = getelementptr inbounds %struct.usb_host_endpoint, ptr %34, i32 0, i32 2, i32 3
  %140 = load i32, ptr %139, align 1
  br label %149

141:                                              ; preds = %119
  %142 = icmp eq i32 %121, 3
  br i1 %142, label %143, label %149

143:                                              ; preds = %141
  %144 = lshr i16 %101, 11
  %145 = and i16 %144, 3
  %146 = add nuw nsw i16 %145, 1
  %147 = mul nuw nsw i16 %146, %102
  %148 = zext i16 %147 to i32
  br label %149

149:                                              ; preds = %143, %141, %138, %123
  %150 = phi i32 [ %148, %143 ], [ %103, %141 ], [ %134, %123 ], [ %140, %138 ]
  %151 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 24
  %152 = load i32, ptr %151, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %312, label %154

154:                                              ; preds = %161, %149
  %155 = phi i32 [ %164, %161 ], [ 0, %149 ]
  %156 = getelementptr %struct.urb, ptr %0, i32 0, i32 29, i32 %155, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = icmp slt i32 %157, 0
  %159 = icmp sgt i32 %157, %150
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %312, label %161

161:                                              ; preds = %154
  %162 = getelementptr %struct.urb, ptr %0, i32 0, i32 29, i32 %155, i32 3
  store i32 -18, ptr %162, align 4
  %163 = getelementptr %struct.urb, ptr %0, i32 0, i32 29, i32 %155, i32 2
  store i32 0, ptr %163, align 4
  %164 = add nuw nsw i32 %155, 1
  %165 = load i32, ptr %151, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %154, label %205

167:                                              ; preds = %117, %105
  %168 = phi i1 [ %92, %117 ], [ %109, %105 ]
  %169 = phi ptr [ %89, %117 ], [ %106, %105 ]
  %170 = phi i32 [ %103, %117 ], [ %115, %105 ]
  %171 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 18
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %205, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr %16, align 4
  %176 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 12
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.usb_bus, ptr %177, i32 0, i32 6
  %179 = load i8, ptr %178, align 2
  %180 = and i8 %179, 8
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = icmp ne i32 %184, 4
  %186 = add i32 %172, -1
  %187 = icmp sgt i32 %186, 0
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %189, label %205

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 16
  %191 = load ptr, ptr %190, align 4
  br label %192

192:                                              ; preds = %199, %189
  %193 = phi i32 [ %200, %199 ], [ 0, %189 ]
  %194 = phi ptr [ %201, %199 ], [ %191, %189 ]
  %195 = getelementptr inbounds %struct.scatterlist, ptr %194, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = urem i32 %196, %170
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %312

199:                                              ; preds = %192
  %200 = add nuw nsw i32 %193, 1
  %201 = tail call ptr @sg_next(ptr noundef %194) #9
  %202 = load i32, ptr %171, align 4
  %203 = add i32 %202, -1
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %192, label %205

205:                                              ; preds = %199, %182, %174, %167, %161
  %206 = phi i1 [ %168, %174 ], [ %168, %182 ], [ %168, %167 ], [ %168, %199 ], [ %92, %161 ]
  %207 = phi ptr [ %169, %174 ], [ %169, %182 ], [ %169, %167 ], [ %169, %199 ], [ %89, %161 ]
  %208 = phi i32 [ %170, %174 ], [ %170, %182 ], [ %170, %167 ], [ %170, %199 ], [ %150, %161 ]
  %209 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %210 = load i32, ptr %209, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %312, label %212

212:                                              ; preds = %205
  %213 = load ptr, ptr %16, align 4
  %214 = load i32, ptr %24, align 4
  %215 = and i32 %214, 128
  %216 = icmp eq i32 %215, 0
  %217 = getelementptr inbounds %struct.usb_device, ptr %213, i32 0, i32 21
  %218 = getelementptr inbounds %struct.usb_device, ptr %213, i32 0, i32 22
  %219 = select i1 %216, ptr %218, ptr %217
  %220 = lshr i32 %214, 15
  %221 = and i32 %220, 15
  %222 = getelementptr ptr, ptr %219, i32 %221
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %234, label %225

225:                                              ; preds = %212
  %226 = lshr i32 %214, 30
  %227 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %223, i32 0, i32 3
  %228 = load i8, ptr %227, align 1
  %229 = and i8 %228, 3
  %230 = zext i8 %229 to i32
  %231 = getelementptr [4 x i32], ptr @pipetypes, i32 0, i32 %230
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %226, %232
  br i1 %233, label %248, label %234

234:                                              ; preds = %225, %212
  %235 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %236 = tail call ptr @dev_driver_string(ptr noundef %235) #9
  %237 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15, i32 3
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load ptr, ptr %235, align 4
  br label %242

242:                                              ; preds = %240, %234
  %243 = phi ptr [ %241, %240 ], [ %238, %234 ]
  %244 = load i32, ptr %24, align 4
  %245 = lshr i32 %244, 30
  %246 = getelementptr [4 x i32], ptr @pipetypes, i32 0, i32 %43
  %247 = load i32, ptr %246, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %236, ptr noundef %243, i32 noundef %245, i32 noundef %247) #9
  br label %248

248:                                              ; preds = %242, %225
  switch i32 %43, label %251 [
    i32 2, label %249
    i32 3, label %249
    i32 1, label %255
  ]

249:                                              ; preds = %248, %248
  %250 = select i1 %206, i32 900, i32 964
  br label %251

251:                                              ; preds = %249, %248
  %252 = phi i32 [ 900, %248 ], [ %250, %249 ]
  %253 = zext i1 %206 to i32
  %254 = or i32 %252, %253
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i32 [ %254, %251 ], [ 902, %248 ]
  %257 = load i32, ptr %207, align 4
  %258 = and i32 %257, %256
  %259 = icmp eq i32 %258, %257
  br i1 %259, label %271, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %262 = tail call ptr @dev_driver_string(ptr noundef %261) #9
  %263 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15, i32 3
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = load ptr, ptr %261, align 4
  br label %268

268:                                              ; preds = %266, %260
  %269 = phi ptr [ %267, %266 ], [ %264, %260 ]
  %270 = load i32, ptr %207, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 527, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %262, ptr noundef %269, i32 noundef %270, i32 noundef %258) #9
  br label %271

271:                                              ; preds = %268, %255
  switch i32 %43, label %310 [
    i32 1, label %272
    i32 3, label %272
  ]

272:                                              ; preds = %271, %271
  %273 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 4
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, 4
  %276 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 25
  %277 = load i32, ptr %276, align 4
  br i1 %275, label %278, label %282

278:                                              ; preds = %272
  %279 = icmp slt i32 %277, 6
  %280 = icmp eq i8 %42, 3
  %281 = select i1 %279, i1 %280, i1 false
  br i1 %281, label %312, label %282

282:                                              ; preds = %278, %272
  %283 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 25
  %284 = icmp slt i32 %277, 1
  br i1 %284, label %312, label %285

285:                                              ; preds = %282
  switch i32 %274, label %312 [
    i32 6, label %286
    i32 5, label %286
    i32 4, label %288
    i32 3, label %290
    i32 2, label %292
    i32 1, label %292
  ]

286:                                              ; preds = %285, %285
  %287 = icmp ugt i32 %277, 32768
  br i1 %287, label %312, label %300

288:                                              ; preds = %285
  %289 = icmp ugt i32 %277, 16
  br i1 %289, label %312, label %300

290:                                              ; preds = %285
  %291 = icmp ugt i32 %277, 8192
  br i1 %291, label %298, label %300

292:                                              ; preds = %285, %285
  %293 = icmp eq i8 %42, 3
  br i1 %293, label %294, label %296

294:                                              ; preds = %292
  %295 = icmp ugt i32 %277, 255
  br i1 %295, label %312, label %300

296:                                              ; preds = %292
  %297 = icmp ugt i32 %277, 1024
  br i1 %297, label %298, label %300

298:                                              ; preds = %296, %290
  %299 = phi i32 [ 8192, %290 ], [ 1024, %296 ]
  store i32 %299, ptr %283, align 4
  br label %300

300:                                              ; preds = %298, %296, %294, %290, %288, %286
  %301 = phi i32 [ %277, %288 ], [ %277, %286 ], [ %277, %290 ], [ %277, %294 ], [ %277, %296 ], [ %299, %298 ]
  %302 = phi i32 [ %208, %288 ], [ 32768, %286 ], [ 8192, %290 ], [ 128, %294 ], [ 1024, %296 ], [ %299, %298 ]
  %303 = load i32, ptr %273, align 4
  %304 = icmp eq i32 %303, 4
  br i1 %304, label %310, label %305

305:                                              ; preds = %300
  %306 = tail call i32 @llvm.ctlz.i32(i32 %301, i1 true) #9, !range !16
  %307 = xor i32 %306, 31
  %308 = shl nuw i32 1, %307
  %309 = tail call i32 @llvm.smin.i32(i32 %302, i32 %308)
  store i32 %309, ptr %283, align 4
  br label %310

310:                                              ; preds = %305, %300, %271
  %311 = tail call i32 @usb_hcd_submit_urb(ptr noundef nonnull %0, i32 noundef %1) #9
  br label %312

312:                                              ; preds = %310, %294, %288, %286, %285, %282, %278, %205, %192, %154, %149, %105, %99, %86, %79, %45, %23, %19, %15, %14, %12, %4, %2
  %313 = phi i32 [ %311, %310 ], [ -53, %79 ], [ -22, %4 ], [ -22, %2 ], [ -16, %14 ], [ -16, %12 ], [ -19, %19 ], [ -19, %15 ], [ -2, %23 ], [ -19, %86 ], [ -90, %99 ], [ -90, %205 ], [ -22, %278 ], [ -22, %282 ], [ -22, %286 ], [ -22, %288 ], [ -22, %294 ], [ -22, %285 ], [ -90, %105 ], [ -8, %45 ], [ -22, %149 ], [ -22, %192 ], [ -90, %154 ]
  ret i32 %313
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_unlink_urb(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @usb_hcd_unlink_urb(ptr noundef nonnull %0, i32 noundef -104) #9
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi i32 [ %12, %11 ], [ -22, %1 ], [ -19, %3 ], [ -43, %7 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_unlink_urb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_kill_urb(ptr noundef %0) #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %15 = tail call i32 @usb_hcd_unlink_urb(ptr noundef nonnull %0, i32 noundef -2) #9
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %20 = call i32 @prepare_to_wait_event(ptr noundef nonnull @usb_kill_urb_queue, ptr noundef nonnull %2, i32 noundef 2) #9
  %21 = load volatile i32, ptr %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %19
  call void @schedule() #9
  %24 = call i32 @prepare_to_wait_event(ptr noundef nonnull @usb_kill_urb_queue, ptr noundef nonnull %2, i32 noundef 2) #9
  %25 = load volatile i32, ptr %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %19
  call void @finish_wait(ptr noundef nonnull @usb_kill_urb_queue, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %28

28:                                               ; preds = %27, %12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !9
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !19
  br label %30

30:                                               ; preds = %28, %8, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_poison_urb(ptr noundef %0) #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #9, !srcloc !9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #9, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @usb_hcd_unlink_urb(ptr noundef nonnull %0, i32 noundef -2) #9
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %20 = call i32 @prepare_to_wait_event(ptr noundef nonnull @usb_kill_urb_queue, ptr noundef nonnull %2, i32 noundef 2) #9
  %21 = load volatile i32, ptr %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %19
  call void @schedule() #9
  %24 = call i32 @prepare_to_wait_event(ptr noundef nonnull @usb_kill_urb_queue, ptr noundef nonnull %2, i32 noundef 2) #9
  %25 = load volatile i32, ptr %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %19
  call void @finish_wait(ptr noundef nonnull @usb_kill_urb_queue, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %28

28:                                               ; preds = %27, %14, %10, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unpoison_urb(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !19
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_block_urb(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !15
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_kill_anchored_urbs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %56, %1
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #9
  %6 = load volatile ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %49, label %8

8:                                                ; preds = %46, %5
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 -28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #9, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #9, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !14

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %24, label %20, !prof !11

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %21) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %22 = load i16, ptr %2, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %27

24:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %25 = load i16, ptr %2, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %27

27:                                               ; preds = %24, %20
  tail call void @usb_kill_urb(ptr noundef nonnull %10)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #9, !srcloc !9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #9, !srcloc !10
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %46, label %33, !prof !11

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 3) #9
  br label %46

34:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %35 = getelementptr i8, ptr %9, i32 32
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %9, i32 36
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #9
  br label %42

42:                                               ; preds = %39, %34
  tail call void @kfree(ptr noundef nonnull %10) #9
  br label %46

43:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %44 = load i16, ptr %2, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void @usb_kill_urb(ptr noundef null)
  br label %46

46:                                               ; preds = %43, %42, %33, %31
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #9
  %47 = load volatile ptr, ptr %0, align 4
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %49, label %8

49:                                               ; preds = %46, %5
  %50 = load volatile i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load volatile ptr, ptr %0, align 4
  %54 = icmp eq ptr %53, %0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ 0, %49 ], [ %55, %52 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %58 = load i16, ptr %2, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %5, label %61

61:                                               ; preds = %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_poison_anchored_urbs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 3
  br label %6

6:                                                ; preds = %59, %1
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #9
  %7 = load i8, ptr %3, align 4
  %8 = or i8 %7, 1
  store i8 %8, ptr %3, align 4
  %9 = load volatile ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %52, label %11

11:                                               ; preds = %49, %6
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 -28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #9, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #9, !srcloc !13
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !14

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %27, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %24) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %25 = load i16, ptr %2, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %30

27:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %28 = load i16, ptr %2, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %30

30:                                               ; preds = %27, %23
  tail call void @usb_poison_urb(ptr noundef nonnull %13)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #9, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #9, !srcloc !10
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %49, label %36, !prof !11

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #9
  br label %49

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %38 = getelementptr i8, ptr %12, i32 32
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %12, i32 36
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #9
  br label %45

45:                                               ; preds = %42, %37
  tail call void @kfree(ptr noundef nonnull %13) #9
  br label %49

46:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %47 = load i16, ptr %2, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void @usb_poison_urb(ptr noundef null)
  br label %49

49:                                               ; preds = %46, %45, %36, %34
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #9
  %50 = load volatile ptr, ptr %0, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %11

52:                                               ; preds = %49, %6
  %53 = load volatile i32, ptr %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load volatile ptr, ptr %0, align 4
  %57 = icmp eq ptr %56, %0
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i32 [ 0, %52 ], [ %58, %55 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %61 = load i16, ptr %2, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !29
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %6, label %64

64:                                               ; preds = %59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unpoison_anchored_urbs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %16, label %6

6:                                                ; preds = %13, %1
  %7 = phi ptr [ %14, %13 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %7, i32 -12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #9, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #9, !srcloc !19
  br label %13

13:                                               ; preds = %10, %6
  %14 = load ptr, ptr %7, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %6

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unlink_anchored_urbs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %52, label %6

6:                                                ; preds = %47, %1
  %7 = phi ptr [ %49, %47 ], [ %4, %1 ]
  %8 = phi i32 [ %48, %47 ], [ %3, %1 ]
  %9 = getelementptr i8, ptr %7, i32 -28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !13
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !14

15:                                               ; preds = %11
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %15, %11
  %20 = phi i32 [ 2, %11 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef %20) #9
  br label %21

21:                                               ; preds = %19, %15
  tail call fastcc void @__usb_unanchor_urb(ptr noundef nonnull %9, ptr noundef %0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #9
  %22 = getelementptr i8, ptr %7, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %7, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @usb_hcd_unlink_urb(ptr noundef nonnull %9, i32 noundef -104) #9
  br label %31

31:                                               ; preds = %29, %25, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !10
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %47, label %37, !prof !11

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #9
  br label %47

38:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %39 = getelementptr i8, ptr %7, i32 32
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %7, i32 36
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #9
  br label %46

46:                                               ; preds = %43, %38
  tail call void @kfree(ptr noundef nonnull %9) #9
  br label %47

47:                                               ; preds = %46, %37, %35
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %49 = load volatile ptr, ptr %0, align 4
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %52, label %6

51:                                               ; preds = %6
  tail call fastcc void @__usb_unanchor_urb(ptr noundef %9, ptr noundef %0) #9
  br label %52

52:                                               ; preds = %51, %47, %1
  %53 = phi i32 [ %8, %51 ], [ %3, %1 ], [ %48, %47 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %53) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_from_anchor(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 -28
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #9, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #9, !srcloc !13
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !14

13:                                               ; preds = %9
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 2, %9 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef %18) #9
  br label %19

19:                                               ; preds = %17, %13, %6
  tail call fastcc void @__usb_unanchor_urb(ptr noundef %7, ptr noundef %0)
  br label %20

20:                                               ; preds = %19, %1
  %21 = phi ptr [ %7, %19 ], [ null, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_anchor_suspend_wakeups(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !15
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_anchor_resume_wakeups(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !19
  %6 = load volatile i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load volatile ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %13

13:                                               ; preds = %11, %8, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #9
  %5 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load volatile ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, %0
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = xor i1 %12, true
  %14 = icmp ne i32 %4, 0
  %15 = select i1 %13, i1 true, i1 %14
  %16 = select i1 %15, i32 %4, i32 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %12, i1 true, i1 %17
  br i1 %18, label %43, label %19

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !18
  %20 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %21 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %40, %19
  %23 = phi i32 [ %20, %19 ], [ %41, %40 ]
  %24 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 2) #9
  %25 = load volatile i32, ptr %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load volatile ptr, ptr %0, align 4
  %29 = icmp eq ptr %28, %0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ 0, %22 ], [ %30, %27 ]
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = icmp ne i32 %23, 0
  %36 = select i1 %34, i1 true, i1 %35
  %37 = select i1 %36, i32 %23, i32 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %33, i1 true, i1 %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = call i32 @schedule_timeout(i32 noundef %37) #9
  br label %22

42:                                               ; preds = %31
  call void @finish_wait(ptr noundef %21, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %43

43:                                               ; preds = %42, %11
  %44 = phi i32 [ %16, %11 ], [ %37, %42 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_scuttle_anchored_urbs(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.usb_anchor, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %21, %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %7 = load volatile ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %14, label %9

9:                                                ; preds = %9, %5
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 -28
  tail call fastcc void @__usb_unanchor_urb(ptr noundef %11, ptr noundef %0)
  %12 = load volatile ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %5
  %15 = load volatile i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load volatile ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, %0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ 0, %14 ], [ %20, %17 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %6) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !31
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %5, label %24

24:                                               ; preds = %21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_anchor_empty(ptr noundef %0) #6 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2148177747}
!9 = !{i64 574681, i64 2148064652, i64 2148064678, i64 2148064725, i64 2148064747, i64 2148064775, i64 2148064795}
!10 = !{i64 2148079882, i64 2148079914, i64 2148079943, i64 2148079977, i64 2148080008, i64 2148080031}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149027194}
!13 = !{i64 2148077525, i64 2148077557, i64 2148077586, i64 2148077620, i64 2148077651, i64 2148077674}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148076067, i64 2148076093, i64 2148076122, i64 2148076156, i64 2148076187, i64 2148076210}
!16 = !{i32 0, i32 33}
!17 = !{i64 2153071718}
!18 = !{!"auto-init"}
!19 = !{i64 2148078424, i64 2148078450, i64 2148078479, i64 2148078513, i64 2148078544, i64 2148078567}
!20 = !{i64 2153074383}
!21 = !{i64 2148959206}
!22 = !{i64 2148955030}
!23 = !{i64 2148955105, i64 2148955132, i64 2148955179, i64 2148955201, i64 2148955229, i64 2148955249}
!24 = !{i64 480604}
!25 = !{i64 2148983350}
!26 = !{i64 2153080994}
!27 = !{i64 2153080836}
!28 = !{i64 2153084049}
!29 = !{i64 2153083891}
!30 = !{i64 2153108149}
!31 = !{i64 2153107991}
