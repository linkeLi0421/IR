; ModuleID = '/llk/IR/sound/hda/hdac_controller.c_pt.bc'
source_filename = "../sound/hda/hdac_controller.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_init_cmd_io:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_init_cmd_io\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_init_cmd_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_stop_cmd_io:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_stop_cmd_io\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_stop_cmd_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_send_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_update_rirb:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_update_rirb\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_update_rirb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_get_response:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_get_response\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_get_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_parse_capabilities:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_parse_capabilities\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_parse_capabilities:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_enter_link_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_enter_link_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_enter_link_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_exit_link_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_exit_link_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_exit_link_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_reset_link:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_reset_link\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_reset_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_init_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_init_chip\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_init_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_stop_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_stop_chip\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_stop_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_handle_stream_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_handle_stream_irq\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_handle_stream_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_alloc_stream_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_alloc_stream_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_alloc_stream_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_free_stream_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_free_stream_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_free_stream_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_bus_link_power:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_bus_link_power\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_bus_link_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
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
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@snd_hdac_bus_init_cmd_io.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"sound/hda/hdac_controller.c\00", align 1
@__kstrtab_snd_hdac_bus_init_cmd_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_init_cmd_io = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_init_cmd_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_init_cmd_io to i32), ptr @__kstrtab_snd_hdac_bus_init_cmd_io, ptr @__kstrtabns_snd_hdac_bus_init_cmd_io }, section "___ksymtab_gpl+snd_hdac_bus_init_cmd_io", align 4
@__kstrtab_snd_hdac_bus_stop_cmd_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_stop_cmd_io = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_stop_cmd_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_stop_cmd_io to i32), ptr @__kstrtab_snd_hdac_bus_stop_cmd_io, ptr @__kstrtabns_snd_hdac_bus_stop_cmd_io }, section "___ksymtab_gpl+snd_hdac_bus_stop_cmd_io", align 4
@__kstrtab_snd_hdac_bus_send_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_send_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_send_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_send_cmd to i32), ptr @__kstrtab_snd_hdac_bus_send_cmd, ptr @__kstrtabns_snd_hdac_bus_send_cmd }, section "___ksymtab_gpl+snd_hdac_bus_send_cmd", align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"spurious response %#x:%#x, rp = %d, wp = %d\00", align 1
@snd_hdac_bus_update_rirb._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.snd_hdac_bus_update_rirb = private unnamed_addr constant [25 x i8] c"snd_hdac_bus_update_rirb\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"spurious response %#x:%#x, last cmd=%#08x\0A\00", align 1
@__kstrtab_snd_hdac_bus_update_rirb = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_update_rirb = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_update_rirb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_update_rirb to i32), ptr @__kstrtab_snd_hdac_bus_update_rirb, ptr @__kstrtabns_snd_hdac_bus_update_rirb }, section "___ksymtab_gpl+snd_hdac_bus_update_rirb", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_snd_hdac_bus_get_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_get_response = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_get_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_get_response to i32), ptr @__kstrtab_snd_hdac_bus_get_response, ptr @__kstrtabns_snd_hdac_bus_get_response }, section "___ksymtab_gpl+snd_hdac_bus_get_response", align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unknown capability %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"We exceeded HDAC capabilities!!!\0A\00", align 1
@__kstrtab_snd_hdac_bus_parse_capabilities = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_parse_capabilities = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_parse_capabilities = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_parse_capabilities to i32), ptr @__kstrtab_snd_hdac_bus_parse_capabilities, ptr @__kstrtabns_snd_hdac_bus_parse_capabilities }, section "___ksymtab_gpl+snd_hdac_bus_parse_capabilities", align 4
@__kstrtab_snd_hdac_bus_enter_link_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_enter_link_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_enter_link_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_enter_link_reset to i32), ptr @__kstrtab_snd_hdac_bus_enter_link_reset, ptr @__kstrtabns_snd_hdac_bus_enter_link_reset }, section "___ksymtab_gpl+snd_hdac_bus_enter_link_reset", align 4
@__kstrtab_snd_hdac_bus_exit_link_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_exit_link_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_exit_link_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_exit_link_reset to i32), ptr @__kstrtab_snd_hdac_bus_exit_link_reset, ptr @__kstrtabns_snd_hdac_bus_exit_link_reset }, section "___ksymtab_gpl+snd_hdac_bus_exit_link_reset", align 4
@__kstrtab_snd_hdac_bus_reset_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_reset_link = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_reset_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_reset_link to i32), ptr @__kstrtab_snd_hdac_bus_reset_link, ptr @__kstrtabns_snd_hdac_bus_reset_link }, section "___ksymtab_gpl+snd_hdac_bus_reset_link", align 4
@__kstrtab_snd_hdac_bus_init_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_init_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_init_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_init_chip to i32), ptr @__kstrtab_snd_hdac_bus_init_chip, ptr @__kstrtabns_snd_hdac_bus_init_chip }, section "___ksymtab_gpl+snd_hdac_bus_init_chip", align 4
@__kstrtab_snd_hdac_bus_stop_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_stop_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_stop_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_stop_chip to i32), ptr @__kstrtab_snd_hdac_bus_stop_chip, ptr @__kstrtabns_snd_hdac_bus_stop_chip }, section "___ksymtab_gpl+snd_hdac_bus_stop_chip", align 4
@__kstrtab_snd_hdac_bus_handle_stream_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_handle_stream_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_handle_stream_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_handle_stream_irq to i32), ptr @__kstrtab_snd_hdac_bus_handle_stream_irq, ptr @__kstrtabns_snd_hdac_bus_handle_stream_irq }, section "___ksymtab_gpl+snd_hdac_bus_handle_stream_irq", align 4
@__kstrtab_snd_hdac_bus_alloc_stream_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_alloc_stream_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_alloc_stream_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_alloc_stream_pages to i32), ptr @__kstrtab_snd_hdac_bus_alloc_stream_pages, ptr @__kstrtabns_snd_hdac_bus_alloc_stream_pages }, section "___ksymtab_gpl+snd_hdac_bus_alloc_stream_pages", align 4
@__kstrtab_snd_hdac_bus_free_stream_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_free_stream_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_free_stream_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_free_stream_pages to i32), ptr @__kstrtab_snd_hdac_bus_free_stream_pages, ptr @__kstrtabns_snd_hdac_bus_free_stream_pages }, section "___ksymtab_gpl+snd_hdac_bus_free_stream_pages", align 4
@__kstrtab_snd_hdac_bus_link_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_bus_link_power = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_bus_link_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_bus_link_power to i32), ptr @__kstrtab_snd_hdac_bus_link_power, ptr @__kstrtabns_snd_hdac_bus_link_power }, section "___ksymtab_gpl+snd_hdac_bus_link_power", align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"CORB reset timeout#1, CORBRP = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"CORB reset timeout#2, CORBRP = %d\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_snd_hdac_bus_alloc_stream_pages, ptr @__ksymtab_snd_hdac_bus_enter_link_reset, ptr @__ksymtab_snd_hdac_bus_exit_link_reset, ptr @__ksymtab_snd_hdac_bus_free_stream_pages, ptr @__ksymtab_snd_hdac_bus_get_response, ptr @__ksymtab_snd_hdac_bus_handle_stream_irq, ptr @__ksymtab_snd_hdac_bus_init_chip, ptr @__ksymtab_snd_hdac_bus_init_cmd_io, ptr @__ksymtab_snd_hdac_bus_link_power, ptr @__ksymtab_snd_hdac_bus_parse_capabilities, ptr @__ksymtab_snd_hdac_bus_reset_link, ptr @__ksymtab_snd_hdac_bus_send_cmd, ptr @__ksymtab_snd_hdac_bus_stop_chip, ptr @__ksymtab_snd_hdac_bus_stop_cmd_io, ptr @__ksymtab_snd_hdac_bus_update_rirb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_init_cmd_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 24, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @snd_hdac_bus_init_cmd_io.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @snd_hdac_bus_init_cmd_io.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #5
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 24, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 20
  %14 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 20, i32 1
  store i32 %12, ptr %14, align 4
  %15 = load ptr, ptr %2, align 4
  store ptr %15, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %16 = load i32, ptr %14, align 4
  %17 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #5, !srcloc !10
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 78
  %24 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %9
  tail call void @snd_hdac_aligned_write(i32 noundef 2, ptr noundef %23, i32 noundef 255) #5
  br label %30

29:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 2) #5, !srcloc !13
  br label %30

30:                                               ; preds = %29, %28
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %31, i32 72
  %33 = load i16, ptr %24, align 4
  %34 = and i16 %33, 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @snd_hdac_aligned_write(i32 noundef 0, ptr noundef %32, i32 noundef 65535) #5
  br label %38

37:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 0) #5, !srcloc !15
  br label %38

38:                                               ; preds = %37, %36
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr i8, ptr %39, i32 74
  %41 = load i16, ptr %24, align 4
  %42 = and i16 %41, 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void @snd_hdac_aligned_write(i32 noundef 32768, ptr noundef %40, i32 noundef 65535) #5
  br label %46

45:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 -32768) #5, !srcloc !15
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i16, ptr %24, align 4
  %48 = and i16 %47, 128
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %131

50:                                               ; preds = %69, %46
  %51 = phi i16 [ %71, %69 ], [ %47, %46 ]
  %52 = phi i32 [ %70, %69 ], [ 1000, %46 ]
  %53 = load ptr, ptr %17, align 4
  %54 = getelementptr i8, ptr %53, i32 74
  %55 = and i16 %51, 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = tail call i32 @snd_hdac_aligned_read(ptr noundef %54, i32 noundef 65535) #5
  br label %62

59:                                               ; preds = %50
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %61 = zext i16 %60 to i32
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  %64 = and i32 %63, 32768
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #5
  %68 = icmp ugt i32 %52, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = add nsw i32 %52, -1
  %71 = load i16, ptr %24, align 4
  br label %50

72:                                               ; preds = %66
  %73 = load ptr, ptr %0, align 4
  %74 = load ptr, ptr %17, align 4
  %75 = getelementptr i8, ptr %74, i32 74
  %76 = load i16, ptr %24, align 4
  %77 = and i16 %76, 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = tail call i32 @snd_hdac_aligned_read(ptr noundef %75, i32 noundef 65535) #5
  br label %84

81:                                               ; preds = %72
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %75) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %83 = zext i16 %82 to i32
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  %86 = and i32 %85, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.5, i32 noundef %86) #6
  br label %87

87:                                               ; preds = %84, %62
  %88 = load ptr, ptr %17, align 4
  %89 = getelementptr i8, ptr %88, i32 74
  %90 = load i16, ptr %24, align 4
  %91 = and i16 %90, 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  tail call void @snd_hdac_aligned_write(i32 noundef 0, ptr noundef %89, i32 noundef 65535) #5
  br label %95

94:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 0) #5, !srcloc !15
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %112, %95
  %97 = phi i32 [ %114, %112 ], [ 1000, %95 ]
  %98 = load ptr, ptr %17, align 4
  %99 = getelementptr i8, ptr %98, i32 74
  %100 = load i16, ptr %24, align 4
  %101 = and i16 %100, 2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = tail call i32 @snd_hdac_aligned_read(ptr noundef %99, i32 noundef 65535) #5
  br label %108

105:                                              ; preds = %96
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %99) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %107 = zext i16 %106 to i32
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %107, %105 ]
  %110 = trunc i32 %109 to i16
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748) #5
  %114 = add nsw i32 %97, -1
  %115 = icmp ugt i32 %97, 1
  br i1 %115, label %96, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %0, align 4
  %118 = load ptr, ptr %17, align 4
  %119 = getelementptr i8, ptr %118, i32 74
  %120 = load i16, ptr %24, align 4
  %121 = and i16 %120, 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = tail call i32 @snd_hdac_aligned_read(ptr noundef %119, i32 noundef 65535) #5
  br label %128

125:                                              ; preds = %116
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %119) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %127 = zext i16 %126 to i32
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %127, %125 ]
  %130 = and i32 %129, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.6, i32 noundef %130) #6
  br label %131

131:                                              ; preds = %128, %108, %46
  %132 = load ptr, ptr %17, align 4
  %133 = getelementptr i8, ptr %132, i32 76
  %134 = load i16, ptr %24, align 4
  %135 = and i16 %134, 2
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  tail call void @snd_hdac_aligned_write(i32 noundef 2, ptr noundef %133, i32 noundef 255) #5
  br label %139

138:                                              ; preds = %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %133, i8 2) #5, !srcloc !13
  br label %139

139:                                              ; preds = %138, %137
  %140 = load i32, ptr %11, align 4
  %141 = add i32 %140, 2048
  %142 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 21
  %143 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 1
  store i32 %141, ptr %143, align 4
  %144 = load ptr, ptr %2, align 4
  %145 = getelementptr i8, ptr %144, i32 2048
  store ptr %145, ptr %142, align 4
  %146 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %146, i8 0, i64 36, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %147 = load i32, ptr %143, align 4
  %148 = load ptr, ptr %17, align 4
  %149 = getelementptr i8, ptr %148, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %150 = load ptr, ptr %17, align 4
  %151 = getelementptr i8, ptr %150, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 0) #5, !srcloc !10
  %152 = load ptr, ptr %17, align 4
  %153 = getelementptr i8, ptr %152, i32 94
  %154 = load i16, ptr %24, align 4
  %155 = and i16 %154, 2
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %139
  tail call void @snd_hdac_aligned_write(i32 noundef 2, ptr noundef %153, i32 noundef 255) #5
  br label %159

158:                                              ; preds = %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %153, i8 2) #5, !srcloc !13
  br label %159

159:                                              ; preds = %158, %157
  %160 = load ptr, ptr %17, align 4
  %161 = getelementptr i8, ptr %160, i32 88
  %162 = load i16, ptr %24, align 4
  %163 = and i16 %162, 2
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  tail call void @snd_hdac_aligned_write(i32 noundef 32768, ptr noundef %161, i32 noundef 65535) #5
  br label %167

166:                                              ; preds = %159
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %161, i16 -32768) #5, !srcloc !15
  br label %167

167:                                              ; preds = %166, %165
  %168 = load ptr, ptr %17, align 4
  %169 = getelementptr i8, ptr %168, i32 90
  %170 = load i16, ptr %24, align 4
  %171 = and i16 %170, 2
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  tail call void @snd_hdac_aligned_write(i32 noundef 1, ptr noundef %169, i32 noundef 65535) #5
  br label %175

174:                                              ; preds = %167
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %169, i16 1) #5, !srcloc !15
  br label %175

175:                                              ; preds = %174, %173
  %176 = load ptr, ptr %17, align 4
  %177 = getelementptr i8, ptr %176, i32 92
  %178 = load i16, ptr %24, align 4
  %179 = and i16 %178, 2
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  tail call void @snd_hdac_aligned_write(i32 noundef 3, ptr noundef %177, i32 noundef 255) #5
  br label %183

182:                                              ; preds = %175
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %177, i8 3) #5, !srcloc !13
  br label %183

183:                                              ; preds = %182, %181
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %184 = load ptr, ptr %17, align 4
  %185 = getelementptr i8, ptr %184, i32 8
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %187 = or i32 %186, 256
  %188 = load ptr, ptr %17, align 4
  %189 = getelementptr i8, ptr %188, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #5, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %190 = load i16, ptr %10, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_stop_cmd_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 92
  %6 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @snd_hdac_aligned_write(i32 noundef 0, ptr noundef %5, i32 noundef 255) #5
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 0) #5, !srcloc !13
  br label %12

12:                                               ; preds = %11, %10
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 76
  %15 = load i16, ptr %6, align 4
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @snd_hdac_aligned_write(i32 noundef 0, ptr noundef %14, i32 noundef 255) #5
  br label %20

19:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 0) #5, !srcloc !13
  br label %20

20:                                               ; preds = %19, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %21 = load i16, ptr %2, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 -10, %23
  br label %25

25:                                               ; preds = %44, %20
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 92
  %28 = load i16, ptr %6, align 4
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @snd_hdac_aligned_read(ptr noundef %27, i32 noundef 255) #5
  br label %36

33:                                               ; preds = %25
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %24, %41
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #5
  br label %25

46:                                               ; preds = %40, %36
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = sub i32 -10, %47
  br label %49

49:                                               ; preds = %68, %46
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %50, i32 76
  %52 = load i16, ptr %6, align 4
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = tail call i32 @snd_hdac_aligned_read(ptr noundef %51, i32 noundef 255) #5
  br label %60

57:                                               ; preds = %49
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %59 = zext i8 %58 to i32
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %59, %57 ]
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %48, %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 2147480) #5
  br label %49

70:                                               ; preds = %64, %60
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %74 = and i32 %73, -257
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #5, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %77 = load i16, ptr %2, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_send_cmd(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 28
  %4 = icmp slt i32 %1, 0
  %5 = select i1 %4, i32 0, i32 %3
  %6 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #5
  %7 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 22, i32 %5
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 72
  %11 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @snd_hdac_aligned_read(ptr noundef %10, i32 noundef 65535) #5
  br label %20

17:                                               ; preds = %2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %19 = zext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  %22 = trunc i32 %21 to i16
  %23 = icmp eq i16 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %25 = load i16, ptr %6, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  br label %65

27:                                               ; preds = %20
  %28 = add nuw i16 %22, 1
  %29 = and i16 %28, 255
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 74
  %32 = load i16, ptr %11, align 4
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = tail call i32 @snd_hdac_aligned_read(ptr noundef %31, i32 noundef 65535) #5
  br label %40

37:                                               ; preds = %27
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %31) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %39 = zext i16 %38 to i32
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %36, %35 ], [ %39, %37 ]
  %42 = trunc i32 %41 to i16
  %43 = icmp eq i16 %29, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %45 = load i16, ptr %6, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  br label %65

47:                                               ; preds = %40
  %48 = zext i16 %29 to i32
  %49 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 4, i32 %5
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 20
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i32, ptr %53, i32 %48
  store i32 %1, ptr %54, align 4
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i8, ptr %55, i32 72
  %57 = load i16, ptr %11, align 4
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  tail call void @snd_hdac_aligned_write(i32 noundef %48, ptr noundef %56, i32 noundef 65535) #5
  br label %62

61:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 %29) #5, !srcloc !15
  br label %62

62:                                               ; preds = %61, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %63 = load i16, ptr %6, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  br label %65

65:                                               ; preds = %62, %44, %24
  %66 = phi i32 [ -5, %24 ], [ -11, %44 ], [ 0, %62 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_update_rirb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 88
  %5 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @snd_hdac_aligned_read(ptr noundef %4, i32 noundef 65535) #5
  br label %14

11:                                               ; preds = %1
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %13, %11 ]
  %16 = trunc i32 %15 to i16
  %17 = and i32 %15, 65535
  %18 = icmp eq i16 %16, -1
  br i1 %18, label %73, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 21
  %21 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, %16
  br i1 %23, label %73, label %24

24:                                               ; preds = %19
  store i16 %16, ptr %21, align 2
  %25 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, %16
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 23, i32 1
  %30 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 23
  br label %31

31:                                               ; preds = %70, %28
  %32 = phi i16 [ %26, %28 ], [ %71, %70 ]
  %33 = add i16 %32, 1
  %34 = and i16 %33, 255
  store i16 %34, ptr %25, align 4
  %35 = zext i16 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = load ptr, ptr %20, align 4
  %38 = or i32 %36, 1
  %39 = getelementptr i32, ptr %37, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i32, ptr %37, i32 %36
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %40, 15
  %44 = icmp ugt i32 %43, 7
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.1, i32 noundef %42, i32 noundef %40, i32 noundef %35, i32 noundef %17) #6
  br label %70

47:                                               ; preds = %31
  %48 = and i32 %40, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @snd_hdac_bus_queue_event(ptr noundef %0, i32 noundef %42, i32 noundef %40) #5
  br label %70

51:                                               ; preds = %47
  %52 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 4, i32 %43
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 5, i32 %43
  store i32 %42, ptr %56, align 4
  %57 = add i32 %53, -1
  store i32 %57, ptr %52, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load volatile ptr, ptr %29, align 4
  %61 = icmp eq ptr %60, %29
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %70

63:                                               ; preds = %51
  %64 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_hdac_bus_update_rirb._rs, ptr noundef nonnull @__func__.snd_hdac_bus_update_rirb) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 22, i32 %43
  %69 = load i32, ptr %68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.2, i32 noundef %42, i32 noundef %40, i32 noundef %69) #6
  br label %70

70:                                               ; preds = %66, %63, %62, %59, %55, %50, %45
  %71 = load i16, ptr %25, align 4
  %72 = icmp eq i16 %71, %16
  br i1 %72, label %73, label %31

73:                                               ; preds = %70, %24, %19, %14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_get_response(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !32
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #5
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 100
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 32
  %8 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %9 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 23
  %10 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 4, i32 %1
  br label %11

11:                                               ; preds = %58, %3
  %12 = phi i32 [ 0, %3 ], [ %59, %58 ]
  call void @_raw_spin_lock_irq(ptr noundef %7) #5
  %13 = load i16, ptr %8, align 4
  %14 = and i16 %13, 256
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  call void @prepare_to_wait(ptr noundef %9, ptr noundef nonnull %4, i32 noundef 2) #5
  %17 = load i16, ptr %8, align 4
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %11
  call void @snd_hdac_bus_update_rirb(ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, ptr %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = icmp eq ptr %2, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr %struct.hdac_bus, ptr %0, i32 0, i32 21, i32 5, i32 %1
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %2, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i16, ptr %8, align 4
  %31 = and i16 %30, 256
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %4) #5
  br label %34

34:                                               ; preds = %33, %29
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %35 = load i16, ptr %7, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  br label %62

37:                                               ; preds = %21
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %38 = load i16, ptr %7, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = sub i32 %6, %40
  %42 = icmp slt i32 %41, 0
  %43 = load i16, ptr %8, align 4
  %44 = and i16 %43, 256
  %45 = icmp eq i16 %44, 0
  br i1 %42, label %60, label %46

46:                                               ; preds = %37
  br i1 %45, label %47, label %49

47:                                               ; preds = %46
  %48 = call i32 @schedule_timeout(i32 noundef 1) #5
  br label %58

49:                                               ; preds = %46
  %50 = and i16 %43, 512
  %51 = icmp ne i16 %50, 0
  %52 = icmp ugt i32 %12, 3000
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @msleep(i32 noundef 2) #5
  br label %58

55:                                               ; preds = %49
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 2147480) #5
  %57 = call i32 @__cond_resched() #5
  br label %58

58:                                               ; preds = %55, %54, %47
  %59 = add i32 %12, 1
  br label %11

60:                                               ; preds = %37
  br i1 %45, label %61, label %62

61:                                               ; preds = %60
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %4) #5
  br label %62

62:                                               ; preds = %61, %60, %34
  %63 = phi i32 [ 0, %34 ], [ -5, %61 ], [ -5, %60 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #5
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_parse_capabilities(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @snd_hdac_aligned_read(ptr noundef %4, i32 noundef 65535) #5
  br label %14

11:                                               ; preds = %1
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %13, %11 ]
  %16 = and i32 %15, 65535
  %17 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 7
  %19 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 9
  %21 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 8
  br label %22

22:                                               ; preds = %54, %14
  %23 = phi i32 [ 0, %14 ], [ %55, %54 ]
  %24 = phi i32 [ %16, %14 ], [ %56, %54 ]
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %58, label %29

29:                                               ; preds = %22
  %30 = lshr i32 %27, 16
  %31 = and i32 %30, 4095
  switch i32 %31, label %47 [
    i32 2, label %32
    i32 1, label %35
    i32 3, label %38
    i32 4, label %41
    i32 5, label %44
  ]

32:                                               ; preds = %29
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 %24
  store ptr %34, ptr %21, align 4
  br label %49

35:                                               ; preds = %29
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 %24
  store ptr %37, ptr %20, align 4
  br label %49

38:                                               ; preds = %29
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 %24
  store ptr %40, ptr %19, align 4
  br label %49

41:                                               ; preds = %29
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr i8, ptr %42, i32 %24
  store ptr %43, ptr %18, align 4
  br label %49

44:                                               ; preds = %29
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 %24
  store ptr %46, ptr %17, align 4
  br label %49

47:                                               ; preds = %29
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef %27) #6
  br label %49

49:                                               ; preds = %47, %44, %41, %38, %35, %32
  %50 = phi i32 [ 0, %47 ], [ %27, %44 ], [ %27, %41 ], [ %27, %38 ], [ %27, %35 ], [ %27, %32 ]
  %51 = icmp eq i32 %23, 10
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.4) #6
  br label %58

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %23, 1
  %56 = and i32 %50, 65535
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %22

58:                                               ; preds = %54, %52, %22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_enter_link_reset(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !10
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %11 = sub i32 -10, %9
  br label %12

12:                                               ; preds = %31, %1
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = load i16, ptr %10, align 4
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @snd_hdac_aligned_read(ptr noundef %14, i32 noundef 255) #5
  br label %23

20:                                               ; preds = %12
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %11, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  br label %12

32:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_exit_link_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @snd_hdac_aligned_read(ptr noundef %4, i32 noundef 255) #5
  br label %14

11:                                               ; preds = %1
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %13, %11 ]
  %16 = trunc i32 %15 to i8
  %17 = or i8 %16, 1
  %18 = load i16, ptr %5, align 4
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = zext i8 %17 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %22, ptr noundef %4, i32 noundef 255) #5
  br label %24

23:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 %17) #5, !srcloc !13
  br label %24

24:                                               ; preds = %23, %21
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 -10, %25
  br label %27

27:                                               ; preds = %46, %24
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = load i16, ptr %5, align 4
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @snd_hdac_aligned_read(ptr noundef %29, i32 noundef 255) #5
  br label %38

35:                                               ; preds = %27
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = trunc i32 %39 to i8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load volatile i32, ptr @jiffies, align 64
  %44 = add i32 %26, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  br label %27

47:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_reset_link(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %58

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @snd_hdac_aligned_read(ptr noundef %6, i32 noundef 255) #5
  br label %16

13:                                               ; preds = %3
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 14
  %23 = load i16, ptr %7, align 4
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @snd_hdac_aligned_write(i32 noundef 255, ptr noundef %22, i32 noundef 65535) #5
  br label %28

27:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 255) #5, !srcloc !15
  br label %28

28:                                               ; preds = %27, %26, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %32 = and i32 %31, -2
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !10
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = sub i32 -10, %35
  br label %37

37:                                               ; preds = %56, %28
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  %40 = load i16, ptr %7, align 4
  %41 = and i16 %40, 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call i32 @snd_hdac_aligned_read(ptr noundef %39, i32 noundef 255) #5
  br label %48

45:                                               ; preds = %37
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %39) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = add i32 %36, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  br label %37

57:                                               ; preds = %52, %48
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #5
  tail call void @snd_hdac_bus_exit_link_reset(ptr noundef %0)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #5
  br label %58

58:                                               ; preds = %57, %2
  %59 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 8
  %62 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = tail call i32 @snd_hdac_aligned_read(ptr noundef %61, i32 noundef 255) #5
  br label %71

68:                                               ; preds = %58
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %70 = zext i8 %69 to i32
  br label %71

71:                                               ; preds = %68, %66
  %72 = phi i32 [ %67, %66 ], [ %70, %68 ]
  %73 = trunc i32 %72 to i8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 18
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load ptr, ptr %59, align 4
  %81 = getelementptr i8, ptr %80, i32 14
  %82 = load i16, ptr %62, align 4
  %83 = and i16 %82, 2
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call i32 @snd_hdac_aligned_read(ptr noundef %81, i32 noundef 65535) #5
  br label %90

87:                                               ; preds = %79
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #5, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %89 = zext i16 %88 to i32
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ]
  %92 = and i32 %91, 65535
  store i32 %92, ptr %76, align 4
  br label %93

93:                                               ; preds = %90, %75, %71
  %94 = phi i32 [ -16, %71 ], [ 0, %90 ], [ 0, %75 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_hdac_bus_init_chip(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = tail call i32 @snd_hdac_bus_reset_link(ptr noundef %0, i1 noundef zeroext %1)
  tail call fastcc void @azx_int_clear(ptr noundef %0)
  tail call void @snd_hdac_bus_init_cmd_io(ptr noundef %0)
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %9 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %13 = or i32 %12, -1073741824
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !10
  %16 = load i16, ptr %3, align 4
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 25, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %24 = load i32, ptr %20, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #5, !srcloc !10
  %29 = load i16, ptr %3, align 4
  br label %30

30:                                               ; preds = %23, %19, %7
  %31 = phi i16 [ %29, %23 ], [ %16, %19 ], [ %16, %7 ]
  %32 = or i16 %31, 1
  store i16 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %2
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @azx_int_clear(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %21, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %19, %18 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -180
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %6, i32 -120
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 3
  %12 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 28
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  tail call void @snd_hdac_aligned_write(i32 noundef 28, ptr noundef %11, i32 noundef 255) #5
  br label %18

17:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 28) #5, !srcloc !13
  br label %18

18:                                               ; preds = %17, %16
  %19 = load ptr, ptr %6, align 4
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %5

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 14
  %25 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  tail call void @snd_hdac_aligned_write(i32 noundef 255, ptr noundef %24, i32 noundef 65535) #5
  br label %31

30:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 255) #5, !srcloc !15
  br label %31

31:                                               ; preds = %30, %29
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr i8, ptr %32, i32 93
  %34 = load i16, ptr %25, align 4
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void @snd_hdac_aligned_write(i32 noundef 5, ptr noundef %33, i32 noundef 255) #5
  br label %39

38:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 5) #5, !srcloc !13
  br label %39

39:                                               ; preds = %38, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1073742079) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_stop_chip(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 28
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %40, label %10

10:                                               ; preds = %35, %6
  %11 = phi ptr [ %36, %35 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -180
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %11, i32 -120
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hdac_bus, ptr %13, i32 0, i32 28
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call i32 @snd_hdac_aligned_read(ptr noundef %15, i32 noundef 255) #5
  br label %25

22:                                               ; preds = %10
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, -29
  %29 = load i16, ptr %16, align 4
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = zext i8 %28 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %33, ptr noundef %15, i32 noundef 255) #5
  br label %35

34:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %28) #5, !srcloc !13
  br label %35

35:                                               ; preds = %34, %32
  %36 = load ptr, ptr %11, align 4
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %38, label %10

38:                                               ; preds = %35
  %39 = load i16, ptr %2, align 4
  br label %40

40:                                               ; preds = %38, %6
  %41 = phi i16 [ %39, %38 ], [ %3, %6 ]
  %42 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  %45 = and i16 %41, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void @snd_hdac_aligned_write(i32 noundef 0, ptr noundef %44, i32 noundef 255) #5
  br label %49

48:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 0) #5, !srcloc !13
  br label %49

49:                                               ; preds = %48, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %50 = load ptr, ptr %42, align 4
  %51 = getelementptr i8, ptr %50, i32 32
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !42
  %53 = and i32 %52, 1073741823
  %54 = load ptr, ptr %42, align 4
  %55 = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #5, !srcloc !10
  tail call fastcc void @azx_int_clear(ptr noundef %0)
  tail call void @snd_hdac_bus_stop_cmd_io(ptr noundef %0)
  %56 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 25, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %60 = load ptr, ptr %42, align 4
  %61 = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %62 = load ptr, ptr %42, align 4
  %63 = getelementptr i8, ptr %62, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #5, !srcloc !10
  br label %64

64:                                               ; preds = %59, %49
  %65 = load i16, ptr %2, align 4
  %66 = and i16 %65, -2
  store i16 %66, ptr %2, align 4
  br label %67

67:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_handle_stream_irq(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %65, label %7

7:                                                ; preds = %3
  %8 = icmp ne ptr %2, null
  br label %9

9:                                                ; preds = %61, %7
  %10 = phi ptr [ %5, %7 ], [ %63, %61 ]
  %11 = phi i32 [ 0, %7 ], [ %62, %61 ]
  %12 = getelementptr i8, ptr %10, i32 -180
  %13 = getelementptr i8, ptr %10, i32 -116
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr i8, ptr %10, i32 -120
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 3
  %22 = getelementptr inbounds %struct.hdac_bus, ptr %18, i32 0, i32 28
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @snd_hdac_aligned_read(ptr noundef %21, i32 noundef 255) #5
  br label %31

28:                                               ; preds = %17
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #5, !srcloc !28
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  %33 = load ptr, ptr %12, align 8
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr i8, ptr %34, i32 3
  %36 = getelementptr inbounds %struct.hdac_bus, ptr %33, i32 0, i32 28
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  tail call void @snd_hdac_aligned_write(i32 noundef 28, ptr noundef %35, i32 noundef 255) #5
  br label %42

41:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 28) #5, !srcloc !13
  br label %42

42:                                               ; preds = %41, %40
  %43 = getelementptr i8, ptr %10, i32 -99
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = or i32 %46, %11
  %48 = getelementptr i8, ptr %10, i32 -112
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %42
  %52 = getelementptr i8, ptr %10, i32 -92
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = and i32 %32, 4
  %58 = icmp ne i32 %57, 0
  %59 = and i1 %8, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void %2(ptr noundef %0, ptr noundef %12) #5
  br label %61

61:                                               ; preds = %60, %56, %51, %42, %9
  %62 = phi i32 [ %47, %60 ], [ %47, %56 ], [ %47, %51 ], [ %47, %42 ], [ %11, %9 ]
  %63 = load ptr, ptr %10, align 4
  %64 = icmp eq ptr %63, %4
  br i1 %64, label %65, label %9

65:                                               ; preds = %61, %3
  %66 = phi i32 [ 0, %3 ], [ %62, %61 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 26
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 2, i32 %3
  %6 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %22, label %9

9:                                                ; preds = %16, %1
  %10 = phi ptr [ %18, %16 ], [ %7, %1 ]
  %11 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %10, i32 -176
  %14 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %5, ptr noundef %12, i32 noundef 0, i32 noundef 4096, ptr noundef %13) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %9
  %17 = add i32 %11, 1
  %18 = load ptr, ptr %10, align 4
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %20, label %9

20:                                               ; preds = %16
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %20, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 9, ptr noundef null) #5
  br label %49

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 4
  %25 = shl i32 %17, 3
  %26 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 25
  %27 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %5, ptr noundef %24, i32 noundef 0, i32 noundef %25, ptr noundef %26) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 4
  %31 = icmp eq ptr %30, %6
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 25, i32 1
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %30, %32 ], [ %43, %34 ]
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr i8, ptr %35, i32 -99
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 3
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = getelementptr i8, ptr %35, i32 -144
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %35, align 4
  %44 = icmp eq ptr %43, %6
  br i1 %44, label %45, label %34

45:                                               ; preds = %34, %29
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 24
  %48 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %5, ptr noundef %46, i32 noundef 0, i32 noundef 4096, ptr noundef %47) #5
  br label %49

49:                                               ; preds = %45, %23, %22, %9
  %50 = phi i32 [ -22, %22 ], [ %48, %45 ], [ -12, %23 ], [ -12, %9 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_free_stream_pages(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -160
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 -176
  tail call void @snd_dma_free_pages(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 24, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 24
  tail call void @snd_dma_free_pages(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 25, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 25
  tail call void @snd_dma_free_pages(ptr noundef %26) #5
  br label %27

27:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_bus_link_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 19
  br i1 %1, label %8, label %9

8:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef %4, ptr noundef %7) #5
  br label %10

9:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef %4, ptr noundef %7) #5
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153051321}
!10 = !{i64 3765157}
!11 = !{i64 2153052111}
!12 = !{i64 2153030961}
!13 = !{i64 3764960}
!14 = !{i64 2153031368}
!15 = !{i64 3764537}
!16 = !{i64 3764737}
!17 = !{i64 2153032342}
!18 = !{i64 2153053520}
!19 = !{i64 2153054310}
!20 = !{i64 2153057255}
!21 = !{i64 3765575}
!22 = !{i64 2153057801}
!23 = !{i64 2149182479}
!24 = !{i64 2149178303}
!25 = !{i64 2149178378, i64 2149178405, i64 2149178452, i64 2149178474, i64 2149178502, i64 2149178522}
!26 = !{i64 321238}
!27 = !{i64 2149206623}
!28 = !{i64 3765355}
!29 = !{i64 2153031854}
!30 = !{i64 2153063673}
!31 = !{i64 2153064212}
!32 = !{!"auto-init"}
!33 = !{i64 2153079761}
!34 = !{i64 2153089544}
!35 = !{i64 2153090083}
!36 = !{i64 2153100203}
!37 = !{i64 2153100779}
!38 = !{i64 2153112836}
!39 = !{i64 2153113636}
!40 = !{i64 2153112176}
!41 = !{i64 2153107051}
!42 = !{i64 2153107605}
!43 = !{i64 2153115647}
!44 = !{i64 2153116195}
