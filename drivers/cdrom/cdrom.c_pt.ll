; ModuleID = '/llk/IR/drivers/cdrom/cdrom.c_pt.bc'
source_filename = "../drivers/cdrom/cdrom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_dummy_generic_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_dummy_generic_packet\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_dummy_generic_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_check_events:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_check_events\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_check_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_multisession:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_multisession\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_multisession:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_read_tocentry:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_read_tocentry\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_read_tocentry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_get_last_written:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_get_last_written\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_get_last_written:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22register_cdrom\22\09\09\09\09\09"
module asm "__kstrtabns_register_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_cdrom\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_open:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_open\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_release\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_number_of_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_number_of_slots\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_number_of_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_mode_select:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_mode_select\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_mode_select:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_mode_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_mode_sense\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_mode_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_cdrom_command:\09\09\09\09\09"
module asm "\09.asciz \09\22init_cdrom_command\22\09\09\09\09\09"
module asm "__kstrtabns_init_cdrom_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdrom_get_media_event:\09\09\09\09\09"
module asm "\09.asciz \09\22cdrom_get_media_event\22\09\09\09\09\09"
module asm "__kstrtabns_cdrom_get_media_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.cdrom_sysctl_settings = type { [1000 x i8], i32, i32, i32, i32, i32 }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdrom_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lockdep_map = type {}
%struct.disc_information = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [8 x i8], i8, i8 }
%struct.event_header = type { i16, i8, i8 }
%struct.tracktype = type { i32, i32, i32, i32, i32 }
%struct.mode_page_header = type { i16, i8, i8, i8, i8, i16 }
%struct.cdrom_mechstat_header = type { i16, [3 x i8], i8, i16 }
%struct.cdrom_changer_info = type { %struct.cdrom_mechstat_header, [256 x %struct.cdrom_slot] }
%struct.cdrom_slot = type { i8, [3 x i8] }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_msf0 = type { i8, i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%struct.track_information = type { i16, i8, i8, i8, [3 x i8], i32, i32, i32, i32, i32, i32 }
%struct.cdrom_mcn = type { [14 x i8] }
%struct.cdrom_timed_media_change_info = type { i64, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cdrom_subchnl = type { i8, i8, i8, i8, i8, %union.cdrom_addr, %union.cdrom_addr }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_msf = type { i8, i8, i8, i8, i8, i8 }
%struct.cdrom_ti = type { i8, i8, i8, i8 }
%struct.cdrom_volctrl = type { i8, i8, i8, i8 }
%struct.modesel_head = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdrom_read_audio = type { %union.cdrom_addr, i8, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cdrom_blk = type { i32, i16 }
%struct.dvd_physical = type { i8, i8, [2 x i8], [4 x %struct.dvd_layer] }
%struct.dvd_layer = type <{ [3 x i8], i16, [3 x i8], i32, i32, i32 }>
%struct.dvd_copyright = type { i8, i8, i8, i8 }
%struct.dvd_disckey = type { i8, i8, [2048 x i8], [2 x i8] }
%struct.dvd_bca = type { i8, i32, [188 x i8] }
%struct.dvd_manufact = type { i8, i8, i32, [2048 x i8] }
%struct.rpc_state_t = type { i16, i8, i8, i8, i8, i8, i8 }
%union.dvd_authinfo = type { %struct.dvd_lu_send_title_key }
%struct.dvd_lu_send_title_key = type { i8, i8, [5 x i8], i32, i8 }
%struct.dvd_lu_send_agid = type { i8, i8, [2 x i8] }
%struct.dvd_send_key = type { i8, i8, [5 x i8], i8 }
%struct.dvd_lu_send_challenge = type { i8, i8, [10 x i8] }
%struct.dvd_lu_send_asf = type { i8, i8, [2 x i8] }
%struct.dvd_host_send_challenge = type { i8, i8, [10 x i8] }
%struct.dvd_lu_send_rpcstate = type { i8, i8, i8 }
%struct.dvd_host_send_rpcstate = type { i8, i8 }

@__param_str_debug = internal constant [12 x i8] c"cdrom.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i8 0, align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.73 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype270 = internal constant [26 x i8] c"cdrom.parmtype=debug:bool\00", section ".modinfo", align 1
@__param_str_autoclose = internal constant [16 x i8] c"cdrom.autoclose\00", align 1
@autoclose = internal global i8 1, align 1
@__param_autoclose = internal constant %struct.kernel_param { ptr @__param_str_autoclose, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.73 { ptr @autoclose } }, section "__param", align 4
@__UNIQUE_ID_autoclosetype271 = internal constant [30 x i8] c"cdrom.parmtype=autoclose:bool\00", section ".modinfo", align 1
@__param_str_autoeject = internal constant [16 x i8] c"cdrom.autoeject\00", align 1
@autoeject = internal global i8 0, align 1
@__param_autoeject = internal constant %struct.kernel_param { ptr @__param_str_autoeject, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.73 { ptr @autoeject } }, section "__param", align 4
@__UNIQUE_ID_autoejecttype272 = internal constant [30 x i8] c"cdrom.parmtype=autoeject:bool\00", section ".modinfo", align 1
@__param_str_lockdoor = internal constant [15 x i8] c"cdrom.lockdoor\00", align 1
@lockdoor = internal global i8 1, align 1
@__param_lockdoor = internal constant %struct.kernel_param { ptr @__param_str_lockdoor, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.73 { ptr @lockdoor } }, section "__param", align 4
@__UNIQUE_ID_lockdoortype273 = internal constant [29 x i8] c"cdrom.parmtype=lockdoor:bool\00", section ".modinfo", align 1
@__param_str_check_media_type = internal constant [23 x i8] c"cdrom.check_media_type\00", align 1
@check_media_type = internal global i8 0, align 1
@__param_check_media_type = internal constant %struct.kernel_param { ptr @__param_str_check_media_type, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.73 { ptr @check_media_type } }, section "__param", align 4
@__UNIQUE_ID_check_media_typetype274 = internal constant [37 x i8] c"cdrom.parmtype=check_media_type:bool\00", section ".modinfo", align 1
@__param_str_mrw_format_restart = internal constant [25 x i8] c"cdrom.mrw_format_restart\00", align 1
@mrw_format_restart = internal global i8 1, align 1
@__param_mrw_format_restart = internal constant %struct.kernel_param { ptr @__param_str_mrw_format_restart, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.73 { ptr @mrw_format_restart } }, section "__param", align 4
@__UNIQUE_ID_mrw_format_restarttype275 = internal constant [39 x i8] c"cdrom.parmtype=mrw_format_restart:bool\00", section ".modinfo", align 1
@__kstrtab_cdrom_dummy_generic_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_dummy_generic_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_dummy_generic_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_dummy_generic_packet to i32), ptr @__kstrtab_cdrom_dummy_generic_packet, ptr @__kstrtabns_cdrom_dummy_generic_packet }, section "___ksymtab+cdrom_dummy_generic_packet", align 4
@register_cdrom.banner_printed = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [47 x i8] c"\016cdrom: Uniform CD-ROM driver Revision: 3.20\0A\00", align 1
@register_cdrom.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"drivers/cdrom/cdrom.c\00", align 1
@register_cdrom.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@register_cdrom.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cdrom_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cdrom_mutex, i64 12), ptr getelementptr (i8, ptr @cdrom_mutex, i64 12) } }, align 4
@cdrom_list = internal global %struct.list_head { ptr @cdrom_list, ptr @cdrom_list }, align 4
@__kstrtab_cdrom_check_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_check_events = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_check_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_check_events to i32), ptr @__kstrtab_cdrom_check_events, ptr @__kstrtabns_cdrom_check_events }, section "___ksymtab+cdrom_check_events", align 4
@__kstrtab_cdrom_multisession = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_multisession = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_multisession = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_multisession to i32), ptr @__kstrtab_cdrom_multisession, ptr @__kstrtabns_cdrom_multisession }, section "___ksymtab_gpl+cdrom_multisession", align 4
@__kstrtab_cdrom_read_tocentry = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_read_tocentry = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_read_tocentry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_read_tocentry to i32), ptr @__kstrtab_cdrom_read_tocentry, ptr @__kstrtabns_cdrom_read_tocentry }, section "___ksymtab_gpl+cdrom_read_tocentry", align 4
@__kstrtab_cdrom_get_last_written = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_get_last_written = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_get_last_written = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_get_last_written to i32), ptr @__kstrtab_cdrom_get_last_written, ptr @__kstrtabns_cdrom_get_last_written }, section "___ksymtab+cdrom_get_last_written", align 4
@__kstrtab_register_cdrom = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_cdrom = external dso_local constant [0 x i8], align 1
@__ksymtab_register_cdrom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_cdrom to i32), ptr @__kstrtab_register_cdrom, ptr @__kstrtabns_register_cdrom }, section "___ksymtab+register_cdrom", align 4
@__kstrtab_unregister_cdrom = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_cdrom = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_cdrom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_cdrom to i32), ptr @__kstrtab_unregister_cdrom, ptr @__kstrtabns_unregister_cdrom }, section "___ksymtab+unregister_cdrom", align 4
@__kstrtab_cdrom_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_open = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_open to i32), ptr @__kstrtab_cdrom_open, ptr @__kstrtabns_cdrom_open }, section "___ksymtab+cdrom_open", align 4
@__kstrtab_cdrom_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_release to i32), ptr @__kstrtab_cdrom_release, ptr @__kstrtabns_cdrom_release }, section "___ksymtab+cdrom_release", align 4
@__kstrtab_cdrom_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_ioctl to i32), ptr @__kstrtab_cdrom_ioctl, ptr @__kstrtabns_cdrom_ioctl }, section "___ksymtab+cdrom_ioctl", align 4
@__kstrtab_cdrom_number_of_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_number_of_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_number_of_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_number_of_slots to i32), ptr @__kstrtab_cdrom_number_of_slots, ptr @__kstrtabns_cdrom_number_of_slots }, section "___ksymtab+cdrom_number_of_slots", align 4
@__kstrtab_cdrom_mode_select = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_mode_select = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_mode_select = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_mode_select to i32), ptr @__kstrtab_cdrom_mode_select, ptr @__kstrtabns_cdrom_mode_select }, section "___ksymtab+cdrom_mode_select", align 4
@__kstrtab_cdrom_mode_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_mode_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_mode_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_mode_sense to i32), ptr @__kstrtab_cdrom_mode_sense, ptr @__kstrtabns_cdrom_mode_sense }, section "___ksymtab+cdrom_mode_sense", align 4
@__kstrtab_init_cdrom_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_cdrom_command = external dso_local constant [0 x i8], align 1
@__ksymtab_init_cdrom_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_cdrom_command to i32), ptr @__kstrtab_init_cdrom_command, ptr @__kstrtabns_init_cdrom_command }, section "___ksymtab+init_cdrom_command", align 4
@__kstrtab_cdrom_get_media_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdrom_get_media_event = external dso_local constant [0 x i8], align 1
@__ksymtab_cdrom_get_media_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdrom_get_media_event to i32), ptr @__kstrtab_cdrom_get_media_event, ptr @__kstrtabns_cdrom_get_media_event }, section "___ksymtab+cdrom_get_media_event", align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"\016cdrom: Uniform CD-ROM driver unloaded\0A\00", align 1
@__initcall__kmod_cdrom__278_3744_cdrom_init6 = internal global ptr @cdrom_init, section ".initcall6.init", align 4
@__exitcall_cdrom_exit = internal global ptr @cdrom_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file279 = internal constant [31 x i8] c"cdrom.file=drivers/cdrom/cdrom\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [18 x i8] c"cdrom.license=GPL\00", section ".modinfo", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\016cdrom: issuing MRW background format suspend\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\013cdrom: failed setting lba address space\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\016cdrom: open: mrw_status '%s'\0A\00", align 1
@mrw_format_status = internal unnamed_addr constant [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@.str.14 = private unnamed_addr constant [44 x i8] c"\016cdrom: %s: mrw address space %s selected\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"not mrw\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"bgformat inactive\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"bgformat active\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"mrw complete\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"\016cdrom: %sstarting format\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"Re\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"\016cdrom: bgformat failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"\016cdrom: %s: dirty DVD+RW media, \22finalizing\22\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.28 = private unnamed_addr constant [39 x i8] c"\016cdrom: dropping to single frame dma\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"\016cdrom: dropping to old style cdda (sense=%x)\0A\00", align 1
@cdrom_sysctl_register.initialized = internal global %struct.atomic_t zeroinitializer, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"dev/cdrom\00", align 1
@cdrom_table = internal global [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.31, ptr @cdrom_sysctl_settings, i32 1000, i16 292, ptr null, ptr @cdrom_sysctl_info, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.32, ptr getelementptr (i8, ptr @cdrom_sysctl_settings, i64 1000), i32 4, i16 420, ptr null, ptr @cdrom_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @cdrom_sysctl_settings, i64 1004), i32 4, i16 420, ptr null, ptr @cdrom_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @cdrom_sysctl_settings, i64 1008), i32 4, i16 420, ptr null, ptr @cdrom_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @cdrom_sysctl_settings, i64 1012), i32 4, i16 420, ptr null, ptr @cdrom_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr getelementptr (i8, ptr @cdrom_sysctl_settings, i64 1016), i32 4, i16 420, ptr null, ptr @cdrom_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@cdrom_sysctl_header = internal unnamed_addr global ptr null, align 4
@cdrom_sysctl_settings = internal global %struct.cdrom_sysctl_settings zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"autoclose\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"autoeject\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"check_media\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"CD-ROM information, Id: cdrom.c 3.20 2003/12/17\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"\0Adrive name:\09\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\0Adrive speed:\09\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"\0Adrive # of slots:\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"\0ACan close tray:\09\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\0ACan open tray:\09\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"\0ACan lock tray:\09\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"\0ACan change speed:\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"\0ACan select disk:\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"\0ACan read multisession:\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"\0ACan read MCN:\09\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"\0AReports media changed:\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"\0ACan play audio:\09\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"\0ACan write CD-R:\09\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"\0ACan write CD-RW:\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"\0ACan read DVD:\09\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"\0ACan write DVD-R:\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"\0ACan write DVD-RAM:\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"\0ACan read MRW:\09\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"\0ACan write MRW:\09\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"\0ACan write RAM:\09\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"\016cdrom: info buffer too small\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_autoclosetype271, ptr @__UNIQUE_ID_autoejecttype272, ptr @__UNIQUE_ID_check_media_typetype274, ptr @__UNIQUE_ID_debugtype270, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__UNIQUE_ID_lockdoortype273, ptr @__UNIQUE_ID_mrw_format_restarttype275, ptr @__exitcall_cdrom_exit, ptr @__initcall__kmod_cdrom__278_3744_cdrom_init6, ptr @__ksymtab_cdrom_check_events, ptr @__ksymtab_cdrom_dummy_generic_packet, ptr @__ksymtab_cdrom_get_last_written, ptr @__ksymtab_cdrom_get_media_event, ptr @__ksymtab_cdrom_ioctl, ptr @__ksymtab_cdrom_mode_select, ptr @__ksymtab_cdrom_mode_sense, ptr @__ksymtab_cdrom_multisession, ptr @__ksymtab_cdrom_number_of_slots, ptr @__ksymtab_cdrom_open, ptr @__ksymtab_cdrom_read_tocentry, ptr @__ksymtab_cdrom_release, ptr @__ksymtab_init_cdrom_command, ptr @__ksymtab_register_cdrom, ptr @__ksymtab_unregister_cdrom, ptr @__param_autoclose, ptr @__param_autoeject, ptr @__param_check_media_type, ptr @__param_debug, ptr @__param_lockdoor, ptr @__param_mrw_format_restart, ptr @cdrom_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cdrom_dummy_generic_packet(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 1
  store i8 5, ptr %7, align 1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 2
  store i8 32, ptr %9, align 1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %10, i32 0, i32 3
  store i8 0, ptr %11, align 1
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 3
  store i32 -5, ptr %13, align 4
  ret i32 -5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_cdrom(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %229, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %229, label %10

10:                                               ; preds = %6
  %11 = load i1, ptr @register_cdrom.banner_printed, align 1
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  store i1 true, ptr @register_cdrom.banner_printed, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @cdrom_sysctl_register.initialized) #15, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cdrom_sysctl_register.initialized, ptr nonnull @cdrom_sysctl_register.initialized, i32 1, i32 1, ptr nonnull elementtype(i32) @cdrom_sysctl_register.initialized) #15, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %18 = tail call ptr @register_sysctl(ptr noundef nonnull @.str.30, ptr noundef nonnull @cdrom_table) #15
  store ptr %18, ptr @cdrom_sysctl_header, align 4
  %19 = load i8, ptr @autoclose, align 1, !range !12
  %20 = zext i8 %19 to i32
  store i32 %20, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 1), align 4
  %21 = load i8, ptr @autoeject, align 1, !range !12
  %22 = zext i8 %21 to i32
  store i32 %22, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 2), align 4
  %23 = load i8, ptr @debug, align 1, !range !12
  %24 = zext i8 %23 to i32
  store i32 %24, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 3), align 4
  %25 = load i8, ptr @lockdoor, align 1, !range !12
  %26 = zext i8 %25 to i32
  store i32 %26, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 4), align 4
  %27 = load i8, ptr @check_media_type, align 1, !range !12
  %28 = zext i8 %27 to i32
  store i32 %28, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 5), align 4
  br label %29

29:                                               ; preds = %17, %12, %10
  %30 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 2
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 20
  store ptr %1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2048
  %39 = icmp ne i32 %38, 0
  %40 = load i1, ptr @register_cdrom.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !13

43:                                               ; preds = %35
  store i1 true, ptr @register_cdrom.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 613, i32 noundef 9, ptr noundef null) #15
  br label %44

44:                                               ; preds = %43, %35, %29
  %45 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 144
  %52 = icmp ne i32 %51, 0
  %53 = load i1, ptr @register_cdrom.__already_done.2, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !13

56:                                               ; preds = %48
  store i1 true, ptr @register_cdrom.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 615, i32 noundef 9, ptr noundef null) #15
  br label %57

57:                                               ; preds = %56, %48, %44
  %58 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 3
  %65 = icmp ne i32 %64, 0
  %66 = load i1, ptr @register_cdrom.__already_done.3, align 1
  %67 = xor i1 %66, true
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %70, !prof !13

69:                                               ; preds = %61
  store i1 true, ptr @register_cdrom.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 616, i32 noundef 9, ptr noundef null) #15
  br label %70

70:                                               ; preds = %69, %61, %57
  %71 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  %79 = load i1, ptr @register_cdrom.__already_done.4, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !13

82:                                               ; preds = %74
  store i1 true, ptr @register_cdrom.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 617, i32 noundef 9, ptr noundef null) #15
  br label %83

83:                                               ; preds = %82, %74, %70
  %84 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 8
  %91 = icmp ne i32 %90, 0
  %92 = load i1, ptr @register_cdrom.__already_done.5, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %96, !prof !13

95:                                               ; preds = %87
  store i1 true, ptr @register_cdrom.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 618, i32 noundef 9, ptr noundef null) #15
  br label %96

96:                                               ; preds = %95, %87, %83
  %97 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 8
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 32
  %104 = icmp ne i32 %103, 0
  %105 = load i1, ptr @register_cdrom.__already_done.6, align 1
  %106 = xor i1 %105, true
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %109, !prof !13

108:                                              ; preds = %100
  store i1 true, ptr @register_cdrom.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 619, i32 noundef 9, ptr noundef null) #15
  br label %109

109:                                              ; preds = %108, %100, %96
  %110 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 9
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 64
  %117 = icmp ne i32 %116, 0
  %118 = load i1, ptr @register_cdrom.__already_done.7, align 1
  %119 = xor i1 %118, true
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %122, !prof !13

121:                                              ; preds = %113
  store i1 true, ptr @register_cdrom.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 620, i32 noundef 9, ptr noundef null) #15
  br label %122

122:                                              ; preds = %121, %113, %109
  %123 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 10
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 512
  %130 = icmp ne i32 %129, 0
  %131 = load i1, ptr @register_cdrom.__already_done.8, align 1
  %132 = xor i1 %131, true
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %135, !prof !13

134:                                              ; preds = %126
  store i1 true, ptr @register_cdrom.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 621, i32 noundef 9, ptr noundef null) #15
  br label %135

135:                                              ; preds = %134, %126, %122
  %136 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 12
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 4096
  %143 = icmp ne i32 %142, 0
  %144 = load i1, ptr @register_cdrom.__already_done.9, align 1
  %145 = xor i1 %144, true
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %148, !prof !13

147:                                              ; preds = %139
  store i1 true, ptr @register_cdrom.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 622, i32 noundef 9, ptr noundef null) #15
  br label %148

148:                                              ; preds = %147, %139, %135
  %149 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 7
  store i32 4, ptr %149, align 8
  %150 = tail call i64 @ktime_get() #15
  %151 = tail call i64 @llvm.abs.i64(i64 %150, i1 false) #15
  %152 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %151) #16, !srcloc !14
  %153 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %151, i64 %152, i32 0) #16, !srcloc !15
  %154 = extractvalue { i64, i32 } %153, 0
  %155 = icmp slt i64 %150, 0
  %156 = lshr i64 %154, 18
  %157 = sub nsw i64 0, %156
  %158 = select i1 %155, i64 %157, i64 %156
  %159 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 20
  store i64 %158, ptr %159, align 8
  %160 = load i8, ptr @autoclose, align 1, !range !12
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %148
  %163 = load ptr, ptr %1, align 8
  %164 = getelementptr inbounds %struct.cdrom_device_ops, ptr %163, i32 0, i32 14
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = xor i32 %167, -1
  %169 = and i32 %165, 1
  %170 = and i32 %169, %168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %162
  %173 = load i32, ptr %149, align 8
  %174 = or i32 %173, 1
  store i32 %174, ptr %149, align 8
  br label %175

175:                                              ; preds = %172, %162, %148
  %176 = load i8, ptr @autoeject, align 1, !range !12
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %1, align 8
  %180 = getelementptr inbounds %struct.cdrom_device_ops, ptr %179, i32 0, i32 14
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 4
  %183 = load i32, ptr %182, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %181, 2
  %186 = and i32 %185, %184
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %178
  %189 = load i32, ptr %149, align 8
  %190 = or i32 %189, 2
  store i32 %190, ptr %149, align 8
  br label %191

191:                                              ; preds = %188, %178, %175
  %192 = load i8, ptr @lockdoor, align 1, !range !12
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, ptr %149, align 8
  %196 = or i32 %195, 8
  store i32 %196, ptr %149, align 8
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i8, ptr @check_media_type, align 1, !range !12
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, ptr %149, align 8
  %202 = or i32 %201, 16
  store i32 %202, ptr %149, align 8
  br label %203

203:                                              ; preds = %200, %197
  %204 = load ptr, ptr %1, align 8
  %205 = getelementptr inbounds %struct.cdrom_device_ops, ptr %204, i32 0, i32 14
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 4
  %208 = load i32, ptr %207, align 4
  %209 = xor i32 %208, -1
  %210 = and i32 %206, 1048576
  %211 = and i32 %210, %209
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 18
  store ptr @cdrom_mrw_exit, ptr %214, align 4
  br label %215

215:                                              ; preds = %213, %203
  %216 = getelementptr inbounds %struct.cdrom_device_ops, ptr %204, i32 0, i32 13
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  %219 = select i1 %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 13
  store i32 %219, ptr %220, align 8
  %221 = load ptr, ptr %136, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224, !prof !13

223:                                              ; preds = %215
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 644, i32 noundef 9, ptr noundef null) #15
  br label %224

224:                                              ; preds = %223, %215
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #15
  %225 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 1
  %226 = load ptr, ptr @cdrom_list, align 4
  %227 = getelementptr inbounds %struct.list_head, ptr %226, i32 0, i32 1
  store ptr %225, ptr %227, align 4
  store ptr %226, ptr %225, align 4
  %228 = getelementptr inbounds %struct.cdrom_device_info, ptr %1, i32 0, i32 1, i32 1
  store ptr @cdrom_list, ptr %228, align 4
  store volatile ptr %225, ptr @cdrom_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #15
  br label %229

229:                                              ; preds = %224, %6, %2
  %230 = phi i32 [ 0, %224 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %230
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdrom_mrw_exit(ptr noundef %0) #1 {
  %2 = alloca %struct.packet_command, align 4
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca %struct.disc_information, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #15
  %6 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #15
  %7 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  %8 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 700, ptr %10, align 4
  store i8 81, ptr %4, align 4
  store i32 2, ptr %8, align 4
  %11 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cdrom_device_ops, ptr %6, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, ptr noundef nonnull %4) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i16, ptr %5, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18) #15
  %20 = call i16 @llvm.umin.i16(i16 %19, i16 34) #15
  %21 = add nuw nsw i16 %20, 2
  %22 = zext i16 %21 to i32
  store i32 %22, ptr %8, align 4
  %23 = trunc i16 %21 to i8
  store i8 %23, ptr %11, align 4
  %24 = load ptr, ptr %13, align 4
  %25 = call i32 %24(ptr noundef %0, ptr noundef nonnull %4) #15
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %22, i32 %25
  br label %28

28:                                               ; preds = %17, %1
  %29 = phi i32 [ %15, %1 ], [ %27, %17 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.disc_information, ptr %5, i32 0, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  %38 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false) #15
  store i8 3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i8 91, ptr %3, align 4
  %40 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  store i8 2, ptr %40, align 2
  store i32 30000, ptr %39, align 4
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.cdrom_device_ops, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %0, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36, %31
  %47 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 15
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  %51 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i64 44, i1 false) #15
  store i8 3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i8 53, ptr %2, align 4
  store i32 30000, ptr %52, align 4
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.cdrom_device_ops, ptr %53, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %0, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  br label %57

57:                                               ; preds = %50, %46, %36, %28
  %58 = phi i32 [ 1, %28 ], [ %44, %36 ], [ %56, %50 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #15
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_cdrom(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #15
  %2 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #15
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #15
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_get_media_event(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #15
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 8, ptr %6, align 4
  %7 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 700, ptr %8, align 4
  store i8 74, ptr %3, align 4
  %9 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 1, ptr %9, align 1
  %10 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 16, ptr %10, align 4
  %11 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 6
  store i32 1, ptr %12, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.cdrom_device_ops, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, ptr noundef nonnull %3) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i16, ptr %4, align 8
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %21 = icmp ult i16 %20, 4
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.event_header, ptr %4, i32 0, i32 1
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, -121
  %26 = icmp eq i8 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds [8 x i8], ptr %4, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %1, align 1
  br label %30

30:                                               ; preds = %27, %22, %18, %2
  %31 = phi i32 [ 0, %27 ], [ 1, %2 ], [ 1, %18 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_cdrom_command(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %0, i8 0, i32 44, i1 false)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %1, i8 0, i32 %2, i1 false)
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.packet_command, ptr %0, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.packet_command, ptr %0, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = trunc i32 %3 to i8
  %11 = getelementptr inbounds %struct.packet_command, ptr %0, i32 0, i32 5
  store i8 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.packet_command, ptr %0, i32 0, i32 7
  store i32 700, ptr %12, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_open(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca [255 x i8], align 4
  %6 = alloca %struct.packet_command, align 4
  %7 = alloca [24 x i8], align 1
  %8 = alloca %struct.packet_command, align 4
  %9 = alloca [16 x i8], align 1
  %10 = alloca %struct.packet_command, align 4
  %11 = alloca %struct.disc_information, align 4
  %12 = alloca %struct.packet_command, align 4
  %13 = alloca %struct.packet_command, align 4
  %14 = alloca [16 x i8], align 2
  %15 = alloca %struct.disc_information, align 4
  %16 = alloca %struct.packet_command, align 4
  %17 = alloca [24 x i8], align 1
  %18 = alloca %struct.packet_command, align 4
  %19 = alloca [16 x i8], align 1
  %20 = alloca %struct.packet_command, align 4
  %21 = alloca [16 x i8], align 1
  %22 = alloca %struct.packet_command, align 4
  %23 = alloca [32 x i8], align 1
  %24 = alloca %struct.tracktype, align 4
  %25 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = and i32 %2, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %509

35:                                               ; preds = %30, %3
  %36 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %24) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %24, i8 0, i32 20, i1 false) #15, !annotation !16
  %37 = getelementptr inbounds %struct.cdrom_device_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %40

40:                                               ; preds = %35
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef 2147483647) #15
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.cdrom_device_ops, ptr %44, i32 0, i32 14
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %46, 1
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %112, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %112, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.cdrom_device_ops, ptr %36, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %0, i32 noundef 0) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %112

63:                                               ; preds = %58
  %64 = load ptr, ptr %37, align 4
  %65 = tail call i32 %64(ptr noundef %0, i32 noundef 2147483647) #15
  %66 = add i32 %65, -1
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %112, label %68

68:                                               ; preds = %63, %40
  %69 = load ptr, ptr %37, align 4
  %70 = tail call i32 %69(ptr noundef %0, i32 noundef 2147483647) #15
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %112

72:                                               ; preds = %68, %35
  call fastcc void @cdrom_count_tracks(ptr noundef %0, ptr noundef nonnull %24) #15
  %73 = getelementptr inbounds %struct.tracktype, ptr %24, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %112, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %24, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %79, %76
  %85 = load ptr, ptr %36, align 4
  %86 = tail call i32 %85(ptr noundef %0, i32 noundef 0) #15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.cdrom_device_ops, ptr %89, i32 0, i32 14
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %91, 4
  %96 = and i32 %95, %94
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %128, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.cdrom_device_ops, ptr %36, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 %105(ptr noundef %0, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %24) #15
  %107 = load ptr, ptr %0, align 8
  %108 = getelementptr inbounds %struct.cdrom_device_ops, ptr %107, i32 0, i32 14
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr %92, align 4
  %111 = xor i32 %110, -1
  br label %134

112:                                              ; preds = %84, %79, %72, %68, %63, %58, %53, %43
  %113 = phi i32 [ -123, %68 ], [ %86, %84 ], [ -123, %43 ], [ -123, %53 ], [ -123, %58 ], [ -123, %63 ], [ -123, %72 ], [ -124, %79 ]
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr inbounds %struct.cdrom_device_ops, ptr %114, i32 0, i32 14
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %116, 4
  %121 = and i32 %120, %119
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %130

128:                                              ; preds = %98, %88
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %24) #15
  br label %134

129:                                              ; preds = %123, %112
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %24) #15
  br label %537

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.cdrom_device_ops, ptr %36, i32 0, i32 5
  %132 = load ptr, ptr %131, align 4
  %133 = tail call i32 %132(ptr noundef %0, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %24) #15
  br label %537

134:                                              ; preds = %128, %103
  %135 = phi i32 [ %111, %103 ], [ %94, %128 ]
  %136 = phi i32 [ %109, %103 ], [ %91, %128 ]
  %137 = phi ptr [ %107, %103 ], [ %89, %128 ]
  %138 = and i32 %136, 4096
  %139 = and i32 %138, %135
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %166, label %141

141:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #15
  %142 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %142, i8 0, i32 40, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %23, i8 0, i32 32, i1 false) #15
  %143 = getelementptr inbounds %struct.packet_command, ptr %22, i32 0, i32 1
  store ptr %23, ptr %143, align 4
  %144 = getelementptr inbounds %struct.packet_command, ptr %22, i32 0, i32 2
  store i32 32, ptr %144, align 4
  %145 = getelementptr inbounds %struct.packet_command, ptr %22, i32 0, i32 5
  store i8 2, ptr %145, align 4
  %146 = getelementptr inbounds %struct.packet_command, ptr %22, i32 0, i32 7
  store i32 700, ptr %146, align 4
  store i8 70, ptr %22, align 4
  %147 = getelementptr inbounds [12 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %147, align 1
  %148 = getelementptr inbounds [12 x i8], ptr %22, i32 0, i32 3
  store i8 0, ptr %148, align 1
  %149 = getelementptr inbounds [12 x i8], ptr %22, i32 0, i32 2
  store i8 0, ptr %149, align 2
  %150 = getelementptr inbounds [12 x i8], ptr %22, i32 0, i32 8
  store i8 32, ptr %150, align 4
  %151 = getelementptr inbounds %struct.packet_command, ptr %22, i32 0, i32 6
  store i32 1, ptr %151, align 4
  %152 = getelementptr inbounds %struct.cdrom_device_ops, ptr %137, i32 0, i32 12
  %153 = load ptr, ptr %152, align 4
  %154 = call i32 %153(ptr noundef %0, ptr noundef nonnull %22) #15
  %155 = icmp eq i32 %154, 0
  %156 = getelementptr inbounds [32 x i8], ptr %23, i32 0, i32 6
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i16
  %159 = shl nuw i16 %158, 8
  %160 = getelementptr inbounds [32 x i8], ptr %23, i32 0, i32 7
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i16
  %163 = or i16 %159, %162
  %164 = select i1 %155, i16 %163, i16 -1
  %165 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 16
  store i16 %164, ptr %165, align 2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %22) #15
  br label %166

166:                                              ; preds = %141, %134
  %167 = and i32 %2, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %541, label %169

169:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %20, i8 0, i32 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %21, i8 0, i32 16, i1 false) #15
  %170 = getelementptr inbounds %struct.packet_command, ptr %20, i32 0, i32 1
  store ptr %21, ptr %170, align 4
  %171 = getelementptr inbounds %struct.packet_command, ptr %20, i32 0, i32 2
  store i32 16, ptr %171, align 4
  %172 = getelementptr inbounds %struct.packet_command, ptr %20, i32 0, i32 5
  store i8 2, ptr %172, align 4
  %173 = getelementptr inbounds %struct.packet_command, ptr %20, i32 0, i32 7
  store i32 700, ptr %173, align 4
  store i8 70, ptr %20, align 4
  %174 = getelementptr inbounds [12 x i8], ptr %20, i32 0, i32 3
  store i8 40, ptr %174, align 1
  %175 = getelementptr inbounds [12 x i8], ptr %20, i32 0, i32 8
  store i8 16, ptr %175, align 4
  %176 = getelementptr inbounds %struct.packet_command, ptr %20, i32 0, i32 6
  store i32 1, ptr %176, align 4
  %177 = load ptr, ptr %0, align 8
  %178 = getelementptr inbounds %struct.cdrom_device_ops, ptr %177, i32 0, i32 12
  %179 = load ptr, ptr %178, align 4
  %180 = call i32 %179(ptr noundef %0, ptr noundef nonnull %20) #15
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %219

182:                                              ; preds = %169
  %183 = getelementptr inbounds [16 x i8], ptr %21, i32 0, i32 8
  %184 = load i16, ptr %183, align 2
  %185 = icmp eq i16 %184, 10240
  br i1 %185, label %186, label %219

186:                                              ; preds = %182
  %187 = getelementptr inbounds [16 x i8], ptr %21, i32 0, i32 12
  %188 = load i8, ptr %187, align 2
  %189 = and i8 %188, 1
  %190 = zext i8 %189 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #15
  %191 = getelementptr inbounds i8, ptr %18, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %191, i8 0, i32 24, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %19, i8 0, i32 16, i1 false) #15
  %192 = getelementptr inbounds %struct.packet_command, ptr %18, i32 0, i32 1
  store ptr %19, ptr %192, align 4
  %193 = getelementptr inbounds %struct.packet_command, ptr %18, i32 0, i32 2
  store i32 16, ptr %193, align 4
  %194 = getelementptr inbounds %struct.packet_command, ptr %18, i32 0, i32 5
  %195 = getelementptr inbounds %struct.packet_command, ptr %18, i32 0, i32 7
  store i32 100, ptr %195, align 4
  %196 = getelementptr inbounds %struct.packet_command, ptr %18, i32 0, i32 6
  store i32 1, ptr %196, align 4
  %197 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %18, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %18, align 4
  %198 = getelementptr inbounds [12 x i8], ptr %18, i32 0, i32 2
  store i8 3, ptr %198, align 2
  %199 = getelementptr inbounds [12 x i8], ptr %18, i32 0, i32 8
  store i8 16, ptr %199, align 4
  store i8 2, ptr %194, align 4
  %200 = getelementptr inbounds %struct.cdrom_device_ops, ptr %197, i32 0, i32 12
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 %201(ptr noundef %0, ptr noundef nonnull %18) #15
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %186
  %205 = getelementptr inbounds [12 x i8], ptr %18, i32 0, i32 7
  %206 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %18, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %18, align 4
  store i8 44, ptr %198, align 2
  %207 = load i32, ptr %193, align 4
  %208 = lshr i32 %207, 8
  %209 = trunc i32 %208 to i8
  store i8 %209, ptr %205, align 1
  %210 = trunc i32 %207 to i8
  store i8 %210, ptr %199, align 4
  store i8 2, ptr %194, align 4
  %211 = getelementptr inbounds %struct.cdrom_device_ops, ptr %206, i32 0, i32 12
  %212 = load ptr, ptr %211, align 4
  %213 = call i32 %212(ptr noundef %0, ptr noundef nonnull %18) #15
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %204, %186
  %216 = phi i32 [ 3, %186 ], [ 44, %204 ]
  %217 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 19
  store i32 %216, ptr %217, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %18) #15
  br label %219

218:                                              ; preds = %204
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %18) #15
  br label %219

219:                                              ; preds = %218, %215, %182, %169
  %220 = phi i32 [ %190, %215 ], [ 0, %218 ], [ 0, %182 ], [ 0, %169 ]
  %221 = phi i32 [ 0, %215 ], [ 1, %218 ], [ 1, %182 ], [ %180, %169 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %20) #15
  %222 = icmp eq i32 %221, 0
  %223 = load ptr, ptr %0, align 8
  %224 = getelementptr inbounds %struct.cdrom_device_ops, ptr %223, i32 0, i32 14
  %225 = load i32, ptr %224, align 4
  %226 = load i32, ptr %92, align 4
  %227 = xor i32 %226, -1
  %228 = and i32 %225, 262144
  %229 = and i32 %228, %227
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %219
  %232 = load i32, ptr %92, align 4
  %233 = and i32 %232, -3670017
  %234 = select i1 %222, i32 0, i32 524288
  %235 = icmp eq i32 %220, 0
  %236 = select i1 %235, i32 1048576, i32 0
  br label %268

237:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %16, i8 0, i32 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %17, i8 0, i32 24, i1 false) #15
  %238 = getelementptr inbounds %struct.packet_command, ptr %16, i32 0, i32 1
  store ptr %17, ptr %238, align 4
  %239 = getelementptr inbounds %struct.packet_command, ptr %16, i32 0, i32 2
  store i32 24, ptr %239, align 4
  %240 = getelementptr inbounds %struct.packet_command, ptr %16, i32 0, i32 5
  store i8 2, ptr %240, align 4
  %241 = getelementptr inbounds %struct.packet_command, ptr %16, i32 0, i32 7
  store i32 700, ptr %241, align 4
  store i8 70, ptr %16, align 4
  %242 = getelementptr inbounds [12 x i8], ptr %16, i32 0, i32 3
  store i8 32, ptr %242, align 1
  %243 = getelementptr inbounds [12 x i8], ptr %16, i32 0, i32 8
  store i8 24, ptr %243, align 4
  %244 = getelementptr inbounds %struct.packet_command, ptr %16, i32 0, i32 6
  store i32 1, ptr %244, align 4
  %245 = getelementptr inbounds %struct.cdrom_device_ops, ptr %223, i32 0, i32 12
  %246 = load ptr, ptr %245, align 4
  %247 = call i32 %246(ptr noundef %0, ptr noundef nonnull %16) #15
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %16) #15
  %250 = load i32, ptr %92, align 4
  %251 = and i32 %250, -3670017
  %252 = select i1 %222, i32 0, i32 524288
  %253 = icmp eq i32 %220, 0
  %254 = select i1 %253, i32 1048576, i32 0
  br label %264

255:                                              ; preds = %237
  %256 = getelementptr inbounds [24 x i8], ptr %17, i32 0, i32 8
  %257 = load i16, ptr %256, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %16) #15
  %258 = icmp eq i16 %257, 8192
  %259 = load i32, ptr %92, align 4
  %260 = and i32 %259, -3670017
  %261 = select i1 %222, i32 0, i32 524288
  %262 = icmp eq i32 %220, 0
  %263 = select i1 %262, i32 1048576, i32 0
  br i1 %258, label %268, label %264

264:                                              ; preds = %255, %249
  %265 = phi i32 [ %254, %249 ], [ %263, %255 ]
  %266 = phi i32 [ %252, %249 ], [ %261, %255 ]
  %267 = phi i32 [ %251, %249 ], [ %260, %255 ]
  br label %268

268:                                              ; preds = %264, %255, %231
  %269 = phi i32 [ %265, %264 ], [ %263, %255 ], [ %236, %231 ]
  %270 = phi i32 [ %266, %264 ], [ %261, %255 ], [ %234, %231 ]
  %271 = phi i32 [ %267, %264 ], [ %260, %255 ], [ %233, %231 ]
  %272 = phi i32 [ 2097152, %264 ], [ 0, %255 ], [ 0, %231 ]
  %273 = or i32 %270, %269
  %274 = or i32 %273, %272
  %275 = or i32 %274, %271
  store i32 %275, ptr %92, align 4
  %276 = load ptr, ptr %0, align 8
  %277 = getelementptr inbounds %struct.cdrom_device_ops, ptr %276, i32 0, i32 14
  %278 = load i32, ptr %277, align 4
  %279 = xor i32 %275, -1
  %280 = and i32 %278, %279
  %281 = and i32 %280, 1048576
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %374, label %283

283:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %15, i8 0, i32 36, i1 false) #15, !annotation !16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #15
  %284 = getelementptr inbounds i8, ptr %13, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %284, i8 0, i32 24, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %14, i8 0, i32 16, i1 false) #15
  %285 = getelementptr inbounds %struct.packet_command, ptr %13, i32 0, i32 1
  %286 = getelementptr inbounds %struct.packet_command, ptr %13, i32 0, i32 2
  %287 = getelementptr inbounds %struct.packet_command, ptr %13, i32 0, i32 5
  %288 = getelementptr inbounds %struct.packet_command, ptr %13, i32 0, i32 7
  store i32 700, ptr %288, align 4
  store ptr %14, ptr %285, align 4
  store i32 16, ptr %286, align 4
  %289 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 19
  %290 = load i32, ptr %289, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %13, align 4
  %291 = trunc i32 %290 to i8
  %292 = getelementptr inbounds [12 x i8], ptr %13, i32 0, i32 2
  store i8 %291, ptr %292, align 2
  %293 = getelementptr inbounds [12 x i8], ptr %13, i32 0, i32 8
  store i8 16, ptr %293, align 4
  store i8 2, ptr %287, align 4
  %294 = getelementptr inbounds %struct.cdrom_device_ops, ptr %276, i32 0, i32 12
  %295 = load ptr, ptr %294, align 4
  %296 = call i32 %295(ptr noundef %0, ptr noundef nonnull %13) #15
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %321

298:                                              ; preds = %283
  %299 = getelementptr inbounds [12 x i8], ptr %13, i32 0, i32 7
  %300 = getelementptr inbounds %struct.mode_page_header, ptr %14, i32 0, i32 5
  %301 = load i16, ptr %300, align 2
  %302 = call i16 @llvm.bswap.i16(i16 %301) #15
  %303 = zext i16 %302 to i32
  %304 = load i16, ptr %14, align 2
  %305 = call i16 @llvm.bswap.i16(i16 %304) #15
  %306 = zext i16 %305 to i32
  %307 = add nuw nsw i32 %306, 2
  %308 = add nuw nsw i32 %303, 3
  %309 = getelementptr [16 x i8], ptr %14, i32 0, i32 %308
  store i8 0, ptr %309, align 1
  store i32 %307, ptr %286, align 4
  %310 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i32 12, i1 false) #15
  %311 = load ptr, ptr %285, align 4
  store i16 0, ptr %311, align 1
  store i8 85, ptr %13, align 4
  %312 = getelementptr inbounds [12 x i8], ptr %13, i32 0, i32 1
  store i8 16, ptr %312, align 1
  %313 = load i32, ptr %286, align 4
  %314 = lshr i32 %313, 8
  %315 = trunc i32 %314 to i8
  store i8 %315, ptr %299, align 1
  %316 = trunc i32 %313 to i8
  store i8 %316, ptr %293, align 4
  store i8 1, ptr %287, align 4
  %317 = getelementptr inbounds %struct.cdrom_device_ops, ptr %310, i32 0, i32 12
  %318 = load ptr, ptr %317, align 4
  %319 = call i32 %318(ptr noundef %0, ptr noundef nonnull %13) #15
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %298, %283
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %13) #15
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  br label %372

323:                                              ; preds = %298
  %324 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 11
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %324, ptr noundef nonnull @.str.15) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %13) #15
  %326 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %12, i8 0, i64 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %15, i8 0, i32 36, i1 false) #15
  %327 = getelementptr inbounds %struct.packet_command, ptr %12, i32 0, i32 1
  store ptr %15, ptr %327, align 4
  %328 = getelementptr inbounds %struct.packet_command, ptr %12, i32 0, i32 2
  %329 = getelementptr inbounds %struct.packet_command, ptr %12, i32 0, i32 5
  store i8 2, ptr %329, align 4
  %330 = getelementptr inbounds %struct.packet_command, ptr %12, i32 0, i32 7
  store i32 700, ptr %330, align 4
  store i8 81, ptr %12, align 4
  store i32 2, ptr %328, align 4
  %331 = getelementptr inbounds [12 x i8], ptr %12, i32 0, i32 8
  store i8 2, ptr %331, align 4
  %332 = getelementptr inbounds %struct.packet_command, ptr %12, i32 0, i32 6
  store i32 1, ptr %332, align 4
  %333 = getelementptr inbounds %struct.cdrom_device_ops, ptr %326, i32 0, i32 12
  %334 = load ptr, ptr %333, align 4
  %335 = call i32 %334(ptr noundef %0, ptr noundef nonnull %12) #15
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %323
  %338 = load i16, ptr %15, align 4
  %339 = call i16 @llvm.bswap.i16(i16 %338) #15
  %340 = call i16 @llvm.umin.i16(i16 %339, i16 34) #15
  %341 = add nuw nsw i16 %340, 2
  %342 = zext i16 %341 to i32
  store i32 %342, ptr %328, align 4
  %343 = trunc i16 %341 to i8
  store i8 %343, ptr %331, align 4
  %344 = load ptr, ptr %333, align 4
  %345 = call i32 %344(ptr noundef %0, ptr noundef nonnull %12) #15
  %346 = icmp eq i32 %345, 0
  %347 = select i1 %346, i32 %342, i32 %345
  br label %348

348:                                              ; preds = %337, %323
  %349 = phi i32 [ %335, %323 ], [ %347, %337 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %12) #15
  %350 = icmp slt i32 %349, 8
  br i1 %350, label %372, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.disc_information, ptr %15, i32 0, i32 1
  %353 = load i8, ptr %352, align 2
  %354 = and i8 %353, 16
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %372, label %356

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.disc_information, ptr %15, i32 0, i32 6
  %358 = load i8, ptr %357, align 1
  %359 = and i8 %358, 3
  %360 = zext i8 %359 to i32
  %361 = getelementptr [4 x ptr], ptr @mrw_format_status, i32 0, i32 %360
  %362 = load ptr, ptr %361, align 4
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %362) #14
  %364 = load i8, ptr %357, align 1
  %365 = trunc i8 %364 to i2
  switch i2 %365, label %371 [
    i2 0, label %372
    i2 1, label %366
  ]

366:                                              ; preds = %356
  %367 = load i8, ptr @mrw_format_restart, align 1, !range !12
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %366
  %370 = call fastcc i32 @cdrom_mrw_bgformat(ptr noundef %0) #15
  br label %372

371:                                              ; preds = %356
  br label %372

372:                                              ; preds = %371, %369, %366, %356, %351, %348, %321
  %373 = phi i32 [ 1, %321 ], [ 1, %348 ], [ 1, %351 ], [ %370, %369 ], [ 0, %366 ], [ 1, %356 ], [ 0, %371 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #15
  br label %495

374:                                              ; preds = %268
  %375 = and i32 %280, 131072
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %408, label %377

377:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %10, i8 0, i64 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %11, i8 0, i32 36, i1 false) #15
  %378 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 1
  store ptr %11, ptr %378, align 4
  %379 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 2
  %380 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 5
  store i8 2, ptr %380, align 4
  %381 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 7
  store i32 700, ptr %381, align 4
  store i8 81, ptr %10, align 4
  store i32 2, ptr %379, align 4
  %382 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 8
  store i8 2, ptr %382, align 4
  %383 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 6
  store i32 1, ptr %383, align 4
  %384 = getelementptr inbounds %struct.cdrom_device_ops, ptr %276, i32 0, i32 12
  %385 = load ptr, ptr %384, align 4
  %386 = call i32 %385(ptr noundef %0, ptr noundef nonnull %10) #15
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %377
  %389 = load i16, ptr %11, align 4
  %390 = call i16 @llvm.bswap.i16(i16 %389) #15
  %391 = call i16 @llvm.umin.i16(i16 %390, i16 34) #15
  %392 = add nuw nsw i16 %391, 2
  %393 = zext i16 %392 to i32
  store i32 %393, ptr %379, align 4
  %394 = trunc i16 %392 to i8
  store i8 %394, ptr %382, align 4
  %395 = load ptr, ptr %384, align 4
  %396 = call i32 %395(ptr noundef %0, ptr noundef nonnull %10) #15
  %397 = icmp eq i32 %396, 0
  %398 = select i1 %397, i32 %393, i32 %396
  br label %399

399:                                              ; preds = %388, %377
  %400 = phi i32 [ %386, %377 ], [ %398, %388 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %10) #15
  %401 = icmp sgt i32 %400, 2
  %402 = getelementptr inbounds %struct.disc_information, ptr %11, i32 0, i32 1
  %403 = load i8, ptr %402, align 2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #15
  %404 = and i8 %403, 16
  %405 = icmp eq i8 %404, 0
  %406 = select i1 %401, i1 %405, i1 false
  %407 = zext i1 %406 to i32
  br label %495

408:                                              ; preds = %374
  %409 = and i32 %280, 3006464
  %410 = icmp eq i32 %409, 2097152
  br i1 %410, label %411, label %451

411:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i32 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %9, i8 0, i32 16, i1 false) #15
  %412 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 1
  store ptr %9, ptr %412, align 4
  %413 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 2
  store i32 16, ptr %413, align 4
  %414 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 5
  store i8 2, ptr %414, align 4
  %415 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 7
  store i32 700, ptr %415, align 4
  store i8 70, ptr %8, align 4
  %416 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 3
  store i8 36, ptr %416, align 1
  %417 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 8
  store i8 16, ptr %417, align 4
  %418 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 6
  store i32 1, ptr %418, align 4
  %419 = getelementptr inbounds %struct.cdrom_device_ops, ptr %276, i32 0, i32 12
  %420 = load ptr, ptr %419, align 4
  %421 = call i32 %420(ptr noundef %0, ptr noundef nonnull %8) #15
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %411
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #15
  br label %514

424:                                              ; preds = %411
  %425 = getelementptr inbounds [16 x i8], ptr %9, i32 0, i32 8
  %426 = load i16, ptr %425, align 2
  %427 = icmp eq i16 %426, 9216
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #15
  br i1 %427, label %428, label %514

428:                                              ; preds = %424
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i32 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %7, i8 0, i32 24, i1 false) #15
  %429 = getelementptr inbounds %struct.packet_command, ptr %6, i32 0, i32 1
  store ptr %7, ptr %429, align 4
  %430 = getelementptr inbounds %struct.packet_command, ptr %6, i32 0, i32 2
  store i32 24, ptr %430, align 4
  %431 = getelementptr inbounds %struct.packet_command, ptr %6, i32 0, i32 5
  store i8 2, ptr %431, align 4
  %432 = getelementptr inbounds %struct.packet_command, ptr %6, i32 0, i32 7
  store i32 700, ptr %432, align 4
  store i8 70, ptr %6, align 4
  %433 = getelementptr inbounds [12 x i8], ptr %6, i32 0, i32 3
  store i8 32, ptr %433, align 1
  %434 = getelementptr inbounds [12 x i8], ptr %6, i32 0, i32 8
  store i8 24, ptr %434, align 4
  %435 = getelementptr inbounds %struct.packet_command, ptr %6, i32 0, i32 6
  store i32 1, ptr %435, align 4
  %436 = load ptr, ptr %0, align 8
  %437 = getelementptr inbounds %struct.cdrom_device_ops, ptr %436, i32 0, i32 12
  %438 = load ptr, ptr %437, align 4
  %439 = call i32 %438(ptr noundef %0, ptr noundef nonnull %6) #15
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %428
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #15
  br label %514

442:                                              ; preds = %428
  %443 = getelementptr inbounds [24 x i8], ptr %7, i32 0, i32 8
  %444 = load i16, ptr %443, align 1
  %445 = getelementptr inbounds [24 x i8], ptr %7, i32 0, i32 10
  %446 = load i8, ptr %445, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #15
  %447 = icmp eq i16 %444, 8192
  %448 = and i8 %446, 1
  %449 = xor i8 %448, 1
  %450 = zext i8 %449 to i32
  br i1 %447, label %495, label %498

451:                                              ; preds = %408
  %452 = and i32 %280, 262144
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %492, label %454

454:                                              ; preds = %451
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %5) #15
  %455 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(255) %455, i8 0, i32 251, i1 false) #15, !annotation !16
  %456 = getelementptr inbounds i8, ptr %4, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %456, i8 0, i32 24, i1 false) #15
  store i32 0, ptr %5, align 4
  %457 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %5, ptr %457, align 4
  %458 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 4, ptr %458, align 4
  %459 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  %460 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 700, ptr %460, align 4
  %461 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %461, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %4, align 4
  %462 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 2
  store i8 63, ptr %462, align 2
  %463 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 4, ptr %463, align 4
  store i8 2, ptr %459, align 4
  %464 = getelementptr inbounds %struct.cdrom_device_ops, ptr %276, i32 0, i32 12
  %465 = load ptr, ptr %464, align 4
  %466 = call i32 %465(ptr noundef %0, ptr noundef nonnull %4) #15
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %485, label %468

468:                                              ; preds = %454
  %469 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 7
  %470 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %4, align 4
  %471 = load i32, ptr %458, align 4
  %472 = lshr i32 %471, 8
  %473 = trunc i32 %472 to i8
  store i8 %473, ptr %469, align 1
  %474 = trunc i32 %471 to i8
  store i8 %474, ptr %463, align 4
  store i8 2, ptr %459, align 4
  %475 = getelementptr inbounds %struct.cdrom_device_ops, ptr %470, i32 0, i32 12
  %476 = load ptr, ptr %475, align 4
  %477 = call i32 %476(ptr noundef %0, ptr noundef nonnull %4) #15
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %485, label %479

479:                                              ; preds = %468
  store i32 255, ptr %458, align 4
  %480 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %4, align 4
  store i8 63, ptr %462, align 2
  store i8 -1, ptr %463, align 4
  store i8 2, ptr %459, align 4
  %481 = getelementptr inbounds %struct.cdrom_device_ops, ptr %480, i32 0, i32 12
  %482 = load ptr, ptr %481, align 4
  %483 = call i32 %482(ptr noundef %0, ptr noundef nonnull %4) #15
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %479, %468, %454
  %486 = getelementptr inbounds [255 x i8], ptr %5, i32 0, i32 3
  %487 = load i8, ptr %486, align 1
  %488 = and i8 %487, -128
  %489 = zext i8 %488 to i32
  br label %490

490:                                              ; preds = %485, %479
  %491 = phi i32 [ %489, %485 ], [ 0, %479 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  br label %495

492:                                              ; preds = %451
  %493 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 16
  %494 = load i16, ptr %493, align 2
  switch i16 %494, label %514 [
    i16 18, label %498
    i16 26, label %498
    i16 67, label %498
  ]

495:                                              ; preds = %490, %442, %399, %372
  %496 = phi i32 [ %373, %372 ], [ %407, %399 ], [ %491, %490 ], [ %450, %442 ]
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %514

498:                                              ; preds = %495, %492, %492, %492, %442
  %499 = load ptr, ptr %0, align 8
  %500 = getelementptr inbounds %struct.cdrom_device_ops, ptr %499, i32 0, i32 14
  %501 = load i32, ptr %500, align 4
  %502 = load i32, ptr %92, align 4
  %503 = xor i32 %502, -1
  %504 = and i32 %501, 2097152
  %505 = and i32 %504, %503
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %514, label %507

507:                                              ; preds = %498
  %508 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 15
  store i8 0, ptr %508, align 1
  br label %541

509:                                              ; preds = %30
  %510 = load ptr, ptr %0, align 8
  %511 = load ptr, ptr %510, align 4
  %512 = tail call i32 %511(ptr noundef %0, i32 noundef 1) #15
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %541, label %537

514:                                              ; preds = %498, %495, %492, %441, %424, %423
  %515 = load ptr, ptr %0, align 8
  %516 = getelementptr inbounds %struct.cdrom_device_ops, ptr %515, i32 0, i32 14
  %517 = load i32, ptr %516, align 4
  %518 = load i32, ptr %92, align 4
  %519 = xor i32 %518, -1
  %520 = and i32 %517, 4
  %521 = and i32 %520, %519
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %533, label %523

523:                                              ; preds = %514
  %524 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %525 = load i32, ptr %524, align 8
  %526 = and i32 %525, 8
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %533, label %528

528:                                              ; preds = %523
  %529 = getelementptr inbounds %struct.cdrom_device_ops, ptr %515, i32 0, i32 5
  %530 = load ptr, ptr %529, align 4
  %531 = call i32 %530(ptr noundef %0, i32 noundef 0) #15
  %532 = load ptr, ptr %0, align 8
  br label %533

533:                                              ; preds = %528, %523, %514
  %534 = phi ptr [ %532, %528 ], [ %515, %523 ], [ %515, %514 ]
  %535 = getelementptr inbounds %struct.cdrom_device_ops, ptr %534, i32 0, i32 1
  %536 = load ptr, ptr %535, align 4
  call void %536(ptr noundef %0) #15
  br label %537

537:                                              ; preds = %533, %509, %130, %129
  %538 = phi i32 [ %512, %509 ], [ %113, %130 ], [ -30, %533 ], [ %113, %129 ]
  %539 = load i32, ptr %25, align 4
  %540 = add i32 %539, -1
  store i32 %540, ptr %25, align 4
  br label %541

541:                                              ; preds = %537, %509, %507, %166
  %542 = phi i32 [ %538, %537 ], [ 0, %166 ], [ 0, %507 ], [ 0, %509 ]
  ret i32 %542
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdrom_release(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.packet_command, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = add nsw i32 %6, -1
  store i32 %9, ptr %5, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %6, %2 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  %14 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 16
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 26
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 15
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 11
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %22) #14
  %24 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false) #15
  store i8 3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i8 53, ptr %3, align 4
  store i32 3000, ptr %25, align 4
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_ops, ptr %26, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false) #15
  store i8 3, ptr %24, align 4
  store i8 91, ptr %3, align 4
  store i32 300000, ptr %25, align 4
  %30 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 6
  store i32 1, ptr %30, align 4
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds %struct.cdrom_device_ops, ptr %31, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %0, ptr noundef nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false) #15
  store i8 3, ptr %24, align 4
  store i8 91, ptr %3, align 4
  %35 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  store i8 2, ptr %35, align 2
  store i32 1, ptr %30, align 4
  store i32 300000, ptr %25, align 4
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.cdrom_device_ops, ptr %36, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %0, ptr noundef nonnull %3) #15
  store i8 0, ptr %18, align 1
  br label %40

40:                                               ; preds = %21, %17, %13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  %41 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %0, i32 noundef 0) #15
  br label %54

54:                                               ; preds = %50, %45, %40, %10
  %55 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %1, 64
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %60, %58
  %62 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %63 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  call void %64(ptr noundef %0) #15
  %65 = load i32, ptr %5, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i1 %61, i1 false
  br i1 %67, label %68, label %85

68:                                               ; preds = %54
  %69 = load i32, ptr %55, align 8
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.cdrom_device_ops, ptr %73, i32 0, i32 14
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %62, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, 2
  %79 = and i32 %78, %77
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 %83(ptr noundef %0, i32 noundef 1) #15
  br label %85

85:                                               ; preds = %81, %72, %68, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_number_of_slots(ptr noundef %0) #1 {
  %2 = alloca %struct.packet_command, align 4
  %3 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 6
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 1032) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  %8 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 3
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cdrom_mechstat_header, ptr %5, i32 0, i32 2
  store i8 3, ptr %13, align 1
  %14 = icmp eq i8 %10, 3
  %15 = select i1 %14, i8 0, i8 %10
  %16 = zext i8 %15 to i16
  %17 = load i16, ptr %5, align 8
  %18 = and i16 %17, -32
  %19 = or i16 %18, %16
  store i16 %19, ptr %5, align 8
  %20 = getelementptr %struct.cdrom_changer_info, ptr %5, i32 0, i32 1, i32 0
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 126
  %23 = or i8 %22, -128
  store i8 %23, ptr %20, align 8
  %24 = getelementptr %struct.cdrom_changer_info, ptr %5, i32 0, i32 1, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 126
  %27 = or i8 %26, -128
  store i8 %27, ptr %24, align 4
  %28 = getelementptr %struct.cdrom_changer_info, ptr %5, i32 0, i32 1, i32 2
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 126
  %31 = or i8 %30, -128
  store i8 %31, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  br label %54

32:                                               ; preds = %7
  %33 = load ptr, ptr %0, align 8
  %34 = load i32, ptr %3, align 4
  %35 = shl i32 %34, 2
  %36 = add i32 %35, 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 %5, i8 0, i32 %36, i1 false) #15
  %37 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %5, ptr %37, align 4
  %38 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 %36, ptr %38, align 4
  %39 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 700, ptr %40, align 4
  store i8 -67, ptr %2, align 4
  %41 = lshr i32 %36, 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 8
  store i8 %42, ptr %43, align 4
  %44 = trunc i32 %36 to i8
  %45 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 9
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %0, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.cdrom_mechstat_header, ptr %5, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  br label %54

54:                                               ; preds = %50, %32, %12
  %55 = phi i32 [ 1, %32 ], [ %53, %50 ], [ 3, %12 ]
  call void @kfree(ptr noundef nonnull %5) #15
  br label %56

56:                                               ; preds = %54, %1
  %57 = phi i32 [ %55, %54 ], [ -12, %1 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_check_events(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef %1, i32 noundef 2147483647) #15
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  %10 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, %6
  store i32 %12, ptr %10, align 8
  store i32 0, ptr %7, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_mode_sense(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr %0, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %1, i8 0, i32 12, i1 false)
  store i8 90, ptr %1, align 4
  %6 = shl i32 %3, 6
  %7 = or i32 %6, %2
  %8 = trunc i32 %7 to i8
  %9 = getelementptr [12 x i8], ptr %1, i32 0, i32 2
  store i8 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 8
  %13 = trunc i32 %12 to i8
  %14 = getelementptr [12 x i8], ptr %1, i32 0, i32 7
  store i8 %13, ptr %14, align 1
  %15 = trunc i32 %11 to i8
  %16 = getelementptr [12 x i8], ptr %1, i32 0, i32 8
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 5
  store i8 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cdrom_device_ops, ptr %5, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %1) #15
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_mode_select(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %1, i8 0, i32 12, i1 false)
  %4 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store i16 0, ptr %5, align 1
  store i8 85, ptr %1, align 4
  %6 = getelementptr [12 x i8], ptr %1, i32 0, i32 1
  store i8 16, ptr %6, align 1
  %7 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr [12 x i8], ptr %1, i32 0, i32 7
  store i8 %10, ptr %11, align 1
  %12 = trunc i32 %8 to i8
  %13 = getelementptr [12 x i8], ptr %1, i32 0, i32 8
  store i8 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 5
  store i8 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1) #15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_multisession(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cdrom_multisession, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -3
  %12 = icmp ult i8 %11, -2
  br i1 %12, label %55, label %13

13:                                               ; preds = %8
  store i8 1, ptr %9, align 1
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.cdrom_device_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load i8, ptr %9, align 1
  %21 = icmp eq i8 %20, %10
  br i1 %21, label %55, label %22

22:                                               ; preds = %19
  %23 = icmp eq i8 %10, 1
  br i1 %23, label %24, label %38

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.cdrom_msf0, ptr %1, i32 0, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.cdrom_msf0, ptr %1, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, -2
  %32 = load i8, ptr %1, align 4
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %33, 60
  %35 = add nsw i32 %31, %34
  %36 = mul nsw i32 %35, 75
  %37 = add nsw i32 %36, %27
  store i32 %37, ptr %1, align 4
  br label %54

38:                                               ; preds = %22
  %39 = load i32, ptr %1, align 4
  %40 = freeze i32 %39
  %41 = sdiv i32 %40, 75
  %42 = mul i32 %41, 75
  %43 = sub i32 %40, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.cdrom_msf0, ptr %1, i32 0, i32 2
  store i8 %44, ptr %45, align 2
  %46 = add nsw i32 %41, 2
  %47 = freeze i32 %46
  %48 = sdiv i32 %47, 60
  %49 = mul i32 %48, 60
  %50 = sub i32 %47, %49
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.cdrom_msf0, ptr %1, i32 0, i32 1
  store i8 %51, ptr %52, align 1
  %53 = trunc i32 %48 to i8
  store i8 %53, ptr %1, align 4
  br label %54

54:                                               ; preds = %38, %24
  store i8 %10, ptr %9, align 1
  br label %55

55:                                               ; preds = %54, %19, %13, %8, %2
  %56 = phi i32 [ -38, %2 ], [ -22, %8 ], [ %17, %13 ], [ 0, %19 ], [ 0, %54 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_read_tocentry(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = add i8 %4, -3
  %6 = icmp ult i8 %5, -2
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  store i8 2, ptr %3, align 2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_ops, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef 21254, ptr noundef %1) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.cdrom_tocentry, ptr %1, i32 0, i32 3
  %15 = load i8, ptr %3, align 1
  %16 = icmp eq i8 %15, %4
  br i1 %16, label %50, label %17

17:                                               ; preds = %13
  %18 = icmp eq i8 %4, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.cdrom_msf0, ptr %14, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.cdrom_msf0, ptr %14, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, -2
  %27 = load i8, ptr %14, align 4
  %28 = zext i8 %27 to i32
  %29 = mul nuw nsw i32 %28, 60
  %30 = add nsw i32 %26, %29
  %31 = mul nsw i32 %30, 75
  %32 = add nsw i32 %31, %22
  store i32 %32, ptr %14, align 4
  br label %49

33:                                               ; preds = %17
  %34 = load i32, ptr %14, align 4
  %35 = freeze i32 %34
  %36 = sdiv i32 %35, 75
  %37 = mul i32 %36, 75
  %38 = sub i32 %35, %37
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.cdrom_msf0, ptr %14, i32 0, i32 2
  store i8 %39, ptr %40, align 2
  %41 = add nsw i32 %36, 2
  %42 = freeze i32 %41
  %43 = sdiv i32 %42, 60
  %44 = mul i32 %43, 60
  %45 = sub i32 %42, %44
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.cdrom_msf0, ptr %14, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = trunc i32 %43 to i8
  store i8 %48, ptr %14, align 4
  br label %49

49:                                               ; preds = %33, %19
  store i8 %4, ptr %3, align 1
  br label %50

50:                                               ; preds = %49, %13, %7, %2
  %51 = phi i32 [ -22, %2 ], [ %11, %7 ], [ 0, %13 ], [ 0, %49 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_get_last_written(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca %struct.packet_command, align 4
  %6 = alloca %struct.cdrom_tocentry, align 4
  %7 = alloca %struct.disc_information, align 4
  %8 = alloca %struct.track_information, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i32 36, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false), !annotation !16
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_ops, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %11, 4096
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %148, label %18

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i64 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i32 36, i1 false) #15
  %19 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 1
  store ptr %7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 2
  %21 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 5
  store i8 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 7
  store i32 700, ptr %22, align 4
  store i8 81, ptr %5, align 4
  store i32 2, ptr %20, align 4
  %23 = getelementptr inbounds [12 x i8], ptr %5, i32 0, i32 8
  store i8 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 6
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cdrom_device_ops, ptr %9, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, ptr noundef nonnull %5) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load i16, ptr %7, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30) #15
  %32 = call i16 @llvm.umin.i16(i16 %31, i16 34) #15
  %33 = add nuw nsw i16 %32, 2
  %34 = zext i16 %33 to i32
  store i32 %34, ptr %20, align 4
  %35 = trunc i16 %33 to i8
  store i8 %35, ptr %23, align 4
  %36 = load ptr, ptr %25, align 4
  %37 = call i32 %36(ptr noundef %0, ptr noundef nonnull %5) #15
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %34, i32 %37
  br label %40

40:                                               ; preds = %29, %18
  %41 = phi i32 [ %27, %18 ], [ %39, %29 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #15
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %148, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.disc_information, ptr %7, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = getelementptr inbounds %struct.disc_information, ptr %7, i32 0, i32 5
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = or i32 %47, %50
  %52 = trunc i32 %51 to i16
  %53 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false) #15
  store i64 0, ptr %8, align 8
  %54 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %8, ptr %54, align 4
  %55 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 8, ptr %55, align 4
  %56 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 700, ptr %57, align 4
  store i8 82, ptr %4, align 4
  %58 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 1
  store i8 1, ptr %58, align 1
  %59 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 4
  store i8 %45, ptr %59, align 4
  %60 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 5
  store i8 %49, ptr %60, align 1
  %61 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 8, ptr %61, align 4
  %62 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cdrom_device_ops, ptr %53, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %0, ptr noundef nonnull %4) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %43
  %68 = load i16, ptr %8, align 8
  %69 = call i16 @llvm.bswap.i16(i16 %68) #15
  %70 = call i16 @llvm.umin.i16(i16 %69, i16 30) #15
  %71 = add nuw nsw i16 %70, 2
  %72 = zext i16 %71 to i32
  store i32 %72, ptr %55, align 4
  %73 = trunc i16 %71 to i8
  store i8 %73, ptr %61, align 4
  %74 = load ptr, ptr %63, align 4
  %75 = call i32 %74(ptr noundef %0, ptr noundef nonnull %4) #15
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 %72, i32 %75
  br label %78

78:                                               ; preds = %67, %43
  %79 = phi i32 [ %65, %43 ], [ %77, %67 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %148, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.track_information, ptr %8, i32 0, i32 4
  %83 = load i24, ptr %82, align 1
  %84 = and i24 %83, 16384
  %85 = icmp eq i24 %84, 0
  br i1 %85, label %120, label %86

86:                                               ; preds = %81
  %87 = icmp eq i32 %51, 1
  br i1 %87, label %148, label %88

88:                                               ; preds = %86
  %89 = add i16 %52, -1
  %90 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false) #15
  store i64 0, ptr %8, align 8
  %91 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %8, ptr %91, align 4
  %92 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 8, ptr %92, align 4
  %93 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %93, align 4
  %94 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 700, ptr %94, align 4
  store i8 82, ptr %3, align 4
  %95 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 1, ptr %95, align 1
  %96 = lshr i16 %89, 8
  %97 = trunc i16 %96 to i8
  %98 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 %97, ptr %98, align 4
  %99 = trunc i16 %89 to i8
  %100 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 5
  store i8 %99, ptr %100, align 1
  %101 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 8, ptr %101, align 4
  %102 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 6
  store i32 1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.cdrom_device_ops, ptr %90, i32 0, i32 12
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 %104(ptr noundef %0, ptr noundef nonnull %3) #15
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %88
  %108 = load i16, ptr %8, align 8
  %109 = call i16 @llvm.bswap.i16(i16 %108) #15
  %110 = call i16 @llvm.umin.i16(i16 %109, i16 30) #15
  %111 = add nuw nsw i16 %110, 2
  %112 = zext i16 %111 to i32
  store i32 %112, ptr %92, align 4
  %113 = trunc i16 %111 to i8
  store i8 %113, ptr %101, align 4
  %114 = load ptr, ptr %103, align 4
  %115 = call i32 %114(ptr noundef %0, ptr noundef nonnull %3) #15
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 %112, i32 %115
  br label %118

118:                                              ; preds = %107, %88
  %119 = phi i32 [ %105, %88 ], [ %117, %107 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %120

120:                                              ; preds = %118, %81
  %121 = phi i32 [ %119, %118 ], [ %79, %81 ]
  %122 = icmp slt i32 %121, 28
  br i1 %122, label %148, label %123

123:                                              ; preds = %120
  %124 = load i24, ptr %82, align 1
  %125 = and i24 %124, 131072
  %126 = icmp ne i24 %125, 0
  %127 = icmp ugt i32 %121, 31
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.track_information, ptr %8, i32 0, i32 10
  %131 = load i32, ptr %130, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131)
  br label %183

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.track_information, ptr %8, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = call i32 @llvm.bswap.i32(i32 %135)
  %137 = getelementptr inbounds %struct.track_information, ptr %8, i32 0, i32 9
  %138 = load i32, ptr %137, align 8
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  %140 = add i32 %139, %136
  store i32 %140, ptr %1, align 4
  %141 = getelementptr inbounds %struct.track_information, ptr %8, i32 0, i32 7
  %142 = load i32, ptr %141, align 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %185, label %144

144:                                              ; preds = %133
  %145 = call i32 @llvm.bswap.i32(i32 %142)
  %146 = add i32 %140, -7
  %147 = sub i32 %146, %145
  br label %183

148:                                              ; preds = %120, %86, %78, %40, %2
  %149 = load ptr, ptr %0, align 8
  %150 = getelementptr inbounds %struct.cdrom_device_ops, ptr %149, i32 0, i32 14
  %151 = load i32, ptr %150, align 4
  %152 = load i32, ptr %12, align 4
  %153 = xor i32 %152, -1
  %154 = and i32 %151, 256
  %155 = and i32 %154, %153
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %185, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.cdrom_tocentry, ptr %6, i32 0, i32 2
  store i8 2, ptr %158, align 2
  store i8 -86, ptr %6, align 4
  %159 = getelementptr inbounds %struct.cdrom_device_ops, ptr %149, i32 0, i32 11
  %160 = load ptr, ptr %159, align 4
  %161 = call i32 %160(ptr noundef %0, i32 noundef 21254, ptr noundef nonnull %6) #15
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.cdrom_tocentry, ptr %6, i32 0, i32 3
  %165 = load i8, ptr %158, align 2
  %166 = icmp eq i8 %165, 1
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, ptr %164, align 4
  br label %183

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.cdrom_msf0, ptr %164, i32 0, i32 2
  %171 = load i8, ptr %170, align 2
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds %struct.cdrom_msf0, ptr %164, i32 0, i32 1
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %175, -2
  %177 = load i8, ptr %164, align 4
  %178 = zext i8 %177 to i32
  %179 = mul nuw nsw i32 %178, 60
  %180 = add nsw i32 %176, %179
  %181 = mul nsw i32 %180, 75
  %182 = add nsw i32 %181, %172
  store i32 %182, ptr %164, align 4
  store i8 1, ptr %158, align 2
  br label %183

183:                                              ; preds = %169, %167, %144, %129
  %184 = phi i32 [ %132, %129 ], [ %147, %144 ], [ %168, %167 ], [ %182, %169 ]
  store i32 %184, ptr %1, align 4
  br label %185

185:                                              ; preds = %183, %157, %148, %133
  %186 = phi i32 [ 0, %133 ], [ -38, %148 ], [ %161, %157 ], [ 0, %183 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret i32 %186
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdrom_ioctl(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.packet_command, align 4
  %7 = alloca %struct.tracktype, align 4
  %8 = alloca %struct.packet_command, align 4
  %9 = alloca %struct.cdrom_mcn, align 1
  %10 = alloca %struct.packet_command, align 4
  %11 = alloca %struct.packet_command, align 4
  %12 = alloca %struct.cdrom_timed_media_change_info, align 8
  %13 = alloca %struct.cdrom_multisession, align 8
  %14 = inttoptr i32 %4 to ptr
  switch i32 %3, label %598 [
    i32 21264, label %15
    i32 21257, label %92
    i32 21273, label %126
    i32 21263, label %140
    i32 21285, label %162
    i32 21398, label %164
    i32 21280, label %208
    i32 21281, label %241
    i32 21282, label %249
    i32 21283, label %263
    i32 21266, label %393
    i32 21289, label %410
    i32 21296, label %440
    i32 21297, label %446
    i32 21265, label %454
    i32 21286, label %480
    i32 21287, label %561
    i32 21288, label %595
  ]

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  store i64 0, ptr %13, align 8, !annotation !16
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 8, i32 -1090519040) #16
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27, !prof !17

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #15
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #18, !srcloc !18
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %25 = call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef %14, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !17

27:                                               ; preds = %19, %15
  %28 = phi i32 [ %25, %19 ], [ 8, %15 ]
  %29 = sub i32 8, %28
  %30 = getelementptr i8, ptr %13, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %28, i1 false) #15
  br label %90

31:                                               ; preds = %19
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.cdrom_device_ops, ptr %32, i32 0, i32 14
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %90, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cdrom_multisession, ptr %13, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %39, -3
  %41 = icmp ult i8 %40, -2
  br i1 %41, label %90, label %42

42:                                               ; preds = %37
  store i8 1, ptr %38, align 1
  %43 = getelementptr inbounds %struct.cdrom_device_ops, ptr %32, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %0, ptr noundef nonnull %13) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %42
  %48 = load i8, ptr %38, align 1
  %49 = icmp eq i8 %48, %39
  br i1 %49, label %83, label %50

50:                                               ; preds = %47
  %51 = icmp eq i8 %39, 1
  br i1 %51, label %52, label %66

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.cdrom_msf0, ptr %13, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.cdrom_msf0, ptr %13, i32 0, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -2
  %60 = load i8, ptr %13, align 8
  %61 = zext i8 %60 to i32
  %62 = mul nuw nsw i32 %61, 60
  %63 = add nsw i32 %59, %62
  %64 = mul nsw i32 %63, 75
  %65 = add nsw i32 %64, %55
  store i32 %65, ptr %13, align 8
  br label %82

66:                                               ; preds = %50
  %67 = load i32, ptr %13, align 8
  %68 = freeze i32 %67
  %69 = sdiv i32 %68, 75
  %70 = mul i32 %69, 75
  %71 = sub i32 %68, %70
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.cdrom_msf0, ptr %13, i32 0, i32 2
  store i8 %72, ptr %73, align 2
  %74 = add nsw i32 %69, 2
  %75 = freeze i32 %74
  %76 = sdiv i32 %75, 60
  %77 = mul i32 %76, 60
  %78 = sub i32 %75, %77
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.cdrom_msf0, ptr %13, i32 0, i32 1
  store i8 %79, ptr %80, align 1
  %81 = trunc i32 %76 to i8
  store i8 %81, ptr %13, align 8
  br label %82

82:                                               ; preds = %66, %52
  store i8 %39, ptr %38, align 1
  br label %83

83:                                               ; preds = %82, %47
  %84 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #18, !srcloc !18
  %85 = and i32 %84, -13
  %86 = or i32 %85, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %87 = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %13, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 0, i32 -14
  br label %90

90:                                               ; preds = %83, %42, %37, %31, %27
  %91 = phi i32 [ -14, %27 ], [ %45, %42 ], [ -22, %37 ], [ -38, %31 ], [ %89, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  br label %654

92:                                               ; preds = %5
  %93 = load ptr, ptr %0, align 8
  %94 = getelementptr inbounds %struct.cdrom_device_ops, ptr %93, i32 0, i32 14
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %95, %98
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %654, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 10
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %654

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %108 = load i8, ptr %107, align 4
  %109 = and i8 %108, 4
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %654

111:                                              ; preds = %106
  %112 = and i32 %99, 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.cdrom_device_ops, ptr %93, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i32 %116(ptr noundef %0, i32 noundef 0) #15
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %654

119:                                              ; preds = %114
  %120 = load ptr, ptr %0, align 8
  br label %121

121:                                              ; preds = %119, %111
  %122 = phi ptr [ %120, %119 ], [ %93, %111 ]
  %123 = getelementptr inbounds %struct.cdrom_device_ops, ptr %122, i32 0, i32 4
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 %124(ptr noundef %0, i32 noundef 1) #15
  br label %654

126:                                              ; preds = %5
  %127 = load ptr, ptr %0, align 8
  %128 = getelementptr inbounds %struct.cdrom_device_ops, ptr %127, i32 0, i32 14
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %129, 1
  %134 = and i32 %133, %132
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %654, label %136

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.cdrom_device_ops, ptr %127, i32 0, i32 4
  %138 = load ptr, ptr %137, align 4
  %139 = tail call i32 %138(ptr noundef %0, i32 noundef 0) #15
  br label %654

140:                                              ; preds = %5
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr inbounds %struct.cdrom_device_ops, ptr %141, i32 0, i32 14
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %143, 2
  %148 = and i32 %147, %146
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %654, label %150

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %152 = load i8, ptr %151, align 4
  %153 = and i8 %152, 4
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %654

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, -4
  %159 = icmp eq i32 %4, 0
  %160 = select i1 %159, i32 0, i32 3
  %161 = or i32 %158, %160
  store i32 %161, ptr %156, align 8
  br label %654

162:                                              ; preds = %5
  %163 = tail call fastcc i32 @cdrom_ioctl_media_changed(ptr noundef %0, i32 noundef %4)
  br label %654

164:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i32 16, i1 false) #15, !annotation !16
  %165 = load ptr, ptr %0, align 8
  %166 = getelementptr inbounds %struct.cdrom_device_ops, ptr %165, i32 0, i32 14
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = xor i32 %169, -1
  %171 = and i32 %167, 128
  %172 = and i32 %171, %170
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %206, label %174

174:                                              ; preds = %164
  %175 = tail call fastcc i32 @cdrom_ioctl_media_changed(ptr noundef %0, i32 noundef 2147483647) #15
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %206, label %177

177:                                              ; preds = %174
  %178 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 16, i32 -1090519040) #16
  %179 = extractvalue { i32, i32 } %178, 0
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %189, !prof !17

181:                                              ; preds = %177
  %182 = tail call ptr @llvm.thread.pointer() #15
  %183 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 3
  %184 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %183) #18, !srcloc !18
  %185 = and i32 %184, -13
  %186 = or i32 %185, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %186) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %187 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %14, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189, !prof !17

189:                                              ; preds = %181, %177
  %190 = phi i32 [ %187, %181 ], [ 16, %177 ]
  %191 = sub i32 16, %190
  %192 = getelementptr i8, ptr %12, i32 %191
  call void @llvm.memset.p0.i32(ptr align 1 %192, i8 0, i32 %190, i1 false) #15
  br label %206

193:                                              ; preds = %181
  %194 = getelementptr inbounds %struct.cdrom_timed_media_change_info, ptr %12, i32 0, i32 1
  %195 = load i64, ptr %12, align 8
  %196 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 20
  %197 = load i64, ptr %196, align 8
  %198 = sub i64 %195, %197
  %199 = lshr i64 %198, 63
  store i64 %199, ptr %194, align 8
  store i64 %197, ptr %12, align 8
  %200 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %183) #18, !srcloc !18
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %203 = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %12, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i32 0, i32 -14
  br label %206

206:                                              ; preds = %193, %189, %174, %164
  %207 = phi i32 [ -38, %164 ], [ %175, %174 ], [ -14, %189 ], [ %205, %193 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  br label %654

208:                                              ; preds = %5
  %209 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 30) #15
  switch i32 %209, label %224 [
    i32 1, label %234
    i32 4, label %234
    i32 2, label %210
    i32 0, label %220
  ]

210:                                              ; preds = %208
  %211 = load ptr, ptr %0, align 8
  %212 = getelementptr inbounds %struct.cdrom_device_ops, ptr %211, i32 0, i32 14
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %215 = load i32, ptr %214, align 4
  %216 = xor i32 %215, -1
  %217 = and i32 %213, 4
  %218 = and i32 %217, %216
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %654, label %234

220:                                              ; preds = %208
  %221 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 1073741823
  br label %654

224:                                              ; preds = %208
  %225 = load ptr, ptr %0, align 8
  %226 = getelementptr inbounds %struct.cdrom_device_ops, ptr %225, i32 0, i32 14
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %229 = load i32, ptr %228, align 4
  %230 = xor i32 %229, -1
  %231 = and i32 %227, %4
  %232 = and i32 %231, %230
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %654, label %234

234:                                              ; preds = %224, %210, %208, %208
  %235 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %236 = load i32, ptr %235, align 8
  %237 = or i32 %236, %4
  %238 = and i32 %237, 1073741823
  %239 = and i32 %4, 1073741823
  %240 = or i32 %236, %239
  store i32 %240, ptr %235, align 8
  br label %654

241:                                              ; preds = %5
  %242 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %4, 1073741823
  %245 = xor i32 %244, 1073741823
  %246 = and i32 %243, %245
  %247 = and i32 %243, -1073741824
  %248 = or i32 %246, %247
  store i32 %248, ptr %242, align 8
  br label %654

249:                                              ; preds = %5
  %250 = load ptr, ptr %0, align 8
  %251 = getelementptr inbounds %struct.cdrom_device_ops, ptr %250, i32 0, i32 14
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %254 = load i32, ptr %253, align 4
  %255 = xor i32 %254, -1
  %256 = and i32 %252, 8
  %257 = and i32 %256, %255
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %654, label %259

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.cdrom_device_ops, ptr %250, i32 0, i32 6
  %261 = load ptr, ptr %260, align 4
  %262 = tail call i32 %261(ptr noundef %0, i32 noundef %4) #15
  br label %654

263:                                              ; preds = %5
  %264 = load ptr, ptr %0, align 8
  %265 = getelementptr inbounds %struct.cdrom_device_ops, ptr %264, i32 0, i32 14
  %266 = load i32, ptr %265, align 4
  %267 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %268 = load i32, ptr %267, align 4
  %269 = xor i32 %268, -1
  %270 = and i32 %266, 16
  %271 = and i32 %270, %269
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %654, label %273

273:                                              ; preds = %263
  %274 = icmp slt i32 %4, 2147483646
  br i1 %274, label %275, label %279

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = icmp ugt i32 %277, %4
  br i1 %278, label %279, label %654

279:                                              ; preds = %275, %273
  %280 = getelementptr inbounds %struct.cdrom_device_ops, ptr %264, i32 0, i32 7
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = tail call i32 %281(ptr noundef %0, i32 noundef %4) #15
  br label %654

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.cdrom_device_ops, ptr %264, i32 0, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = tail call i32 %287(ptr noundef %0, i32 noundef 0, i32 noundef %4) #15
  br label %291

291:                                              ; preds = %289, %285
  %292 = icmp eq i32 %4, 2147483646
  br i1 %292, label %293, label %322

293:                                              ; preds = %291
  %294 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %295 = load i32, ptr %294, align 8
  %296 = or i32 %295, -1073741824
  store i32 %296, ptr %294, align 8
  %297 = tail call i64 @ktime_get() #15
  %298 = tail call i64 @llvm.abs.i64(i64 %297, i1 false) #15
  %299 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %298) #16, !srcloc !14
  %300 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %298, i64 %299, i32 0) #16, !srcloc !15
  %301 = extractvalue { i64, i32 } %300, 0
  %302 = icmp slt i64 %297, 0
  %303 = lshr i64 %301, 18
  %304 = sub nsw i64 0, %303
  %305 = select i1 %302, i64 %304, i64 %303
  %306 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 20
  store i64 %305, ptr %306, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %11) #15
  %307 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %308 = load i8, ptr %307, align 4
  %309 = and i8 %308, 3
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %293
  %312 = getelementptr inbounds %struct.packet_command, ptr %11, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %11, i8 0, i64 44, i1 false) #15
  store i8 3, ptr %312, align 4
  %313 = getelementptr inbounds %struct.packet_command, ptr %11, i32 0, i32 7
  store i8 -90, ptr %11, align 4
  %314 = getelementptr inbounds [12 x i8], ptr %11, i32 0, i32 4
  store i8 2, ptr %314, align 4
  %315 = getelementptr inbounds [12 x i8], ptr %11, i32 0, i32 8
  store i8 -1, ptr %315, align 4
  store i32 6000, ptr %313, align 4
  %316 = load ptr, ptr %0, align 8
  %317 = getelementptr inbounds %struct.cdrom_device_ops, ptr %316, i32 0, i32 12
  %318 = load ptr, ptr %317, align 4
  %319 = call i32 %318(ptr noundef %0, ptr noundef nonnull %11) #15
  br label %320

320:                                              ; preds = %311, %293
  %321 = phi i32 [ %319, %311 ], [ 0, %293 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %11) #15
  br label %654

322:                                              ; preds = %291
  %323 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %324 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %323, i32 noundef 3264, i32 noundef 1032) #17
  %325 = icmp eq ptr %324, null
  br i1 %325, label %654, label %326

326:                                              ; preds = %322
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %10) #15
  %327 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %328 = load i8, ptr %327, align 4
  %329 = and i8 %328, 3
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %351, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.cdrom_mechstat_header, ptr %324, i32 0, i32 2
  store i8 3, ptr %332, align 1
  %333 = icmp eq i8 %329, 3
  %334 = select i1 %333, i8 0, i8 %329
  %335 = zext i8 %334 to i16
  %336 = load i16, ptr %324, align 8
  %337 = and i16 %336, -32
  %338 = or i16 %337, %335
  store i16 %338, ptr %324, align 8
  %339 = getelementptr %struct.cdrom_changer_info, ptr %324, i32 0, i32 1, i32 0
  %340 = load i8, ptr %339, align 8
  %341 = and i8 %340, 126
  %342 = or i8 %341, -128
  store i8 %342, ptr %339, align 8
  %343 = getelementptr %struct.cdrom_changer_info, ptr %324, i32 0, i32 1, i32 1
  %344 = load i8, ptr %343, align 4
  %345 = and i8 %344, 126
  %346 = or i8 %345, -128
  store i8 %346, ptr %343, align 4
  %347 = getelementptr %struct.cdrom_changer_info, ptr %324, i32 0, i32 1, i32 2
  %348 = load i8, ptr %347, align 8
  %349 = and i8 %348, 126
  %350 = or i8 %349, -128
  store i8 %350, ptr %347, align 8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %10) #15
  br label %373

351:                                              ; preds = %326
  %352 = load ptr, ptr %0, align 8
  %353 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 6
  %354 = load i32, ptr %353, align 4
  %355 = shl i32 %354, 2
  %356 = add i32 %355, 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %10, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 %324, i8 0, i32 %356, i1 false) #15
  %357 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 1
  store ptr %324, ptr %357, align 4
  %358 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 2
  store i32 %356, ptr %358, align 4
  %359 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 5
  store i8 2, ptr %359, align 4
  %360 = getelementptr inbounds %struct.packet_command, ptr %10, i32 0, i32 7
  store i32 700, ptr %360, align 4
  store i8 -67, ptr %10, align 4
  %361 = lshr i32 %356, 8
  %362 = trunc i32 %361 to i8
  %363 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 8
  store i8 %362, ptr %363, align 4
  %364 = trunc i32 %356 to i8
  %365 = getelementptr inbounds [12 x i8], ptr %10, i32 0, i32 9
  store i8 %364, ptr %365, align 1
  %366 = getelementptr inbounds %struct.cdrom_device_ops, ptr %352, i32 0, i32 12
  %367 = load ptr, ptr %366, align 4
  %368 = call i32 %367(ptr noundef %0, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %10) #15
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %351
  %371 = load i16, ptr %324, align 8
  br label %373

372:                                              ; preds = %351
  call void @kfree(ptr noundef nonnull %324) #15
  br label %654

373:                                              ; preds = %370, %331
  %374 = phi i16 [ %371, %370 ], [ %338, %331 ]
  %375 = and i16 %374, 31
  %376 = zext i16 %375 to i32
  call void @kfree(ptr noundef nonnull %324) #15
  %377 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 10
  %378 = load i32, ptr %377, align 4
  %379 = icmp sgt i32 %378, 1
  br i1 %379, label %384, label %380

380:                                              ; preds = %373
  %381 = load i8, ptr %327, align 4
  %382 = and i8 %381, 4
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %380, %373
  %385 = icmp eq i32 %4, 2147483647
  %386 = select i1 %385, i32 %376, i32 -16
  br label %654

387:                                              ; preds = %380
  %388 = icmp eq i32 %4, 2147483647
  %389 = select i1 %388, i32 %376, i32 %4
  call fastcc void @signal_media_change(ptr noundef %0) #15
  %390 = call fastcc i32 @cdrom_load_unload(ptr noundef %0, i32 noundef %389) #15
  %391 = icmp eq i32 %390, 0
  %392 = select i1 %391, i32 %389, i32 %390
  br label %654

393:                                              ; preds = %5
  %394 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %394, label %395, label %654

395:                                              ; preds = %393
  %396 = load ptr, ptr %0, align 8
  %397 = getelementptr inbounds %struct.cdrom_device_ops, ptr %396, i32 0, i32 14
  %398 = load i32, ptr %397, align 4
  %399 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %400 = load i32, ptr %399, align 4
  %401 = xor i32 %400, -1
  %402 = and i32 %398, 512
  %403 = and i32 %402, %401
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %654, label %405

405:                                              ; preds = %395
  tail call void @invalidate_bdev(ptr noundef %1) #15
  %406 = load ptr, ptr %0, align 8
  %407 = getelementptr inbounds %struct.cdrom_device_ops, ptr %406, i32 0, i32 10
  %408 = load ptr, ptr %407, align 4
  %409 = tail call i32 %408(ptr noundef %0) #15
  br label %654

410:                                              ; preds = %5
  %411 = load ptr, ptr %0, align 8
  %412 = getelementptr inbounds %struct.cdrom_device_ops, ptr %411, i32 0, i32 14
  %413 = load i32, ptr %412, align 4
  %414 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %415 = load i32, ptr %414, align 4
  %416 = xor i32 %415, -1
  %417 = and i32 %413, 4
  %418 = and i32 %417, %416
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %654, label %420

420:                                              ; preds = %410
  %421 = icmp ne i32 %4, 0
  %422 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %423 = load i8, ptr %422, align 4
  %424 = select i1 %421, i8 4, i8 0
  %425 = and i8 %423, -5
  %426 = or i8 %425, %424
  store i8 %426, ptr %422, align 4
  %427 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 10
  %428 = load i32, ptr %427, align 4
  %429 = icmp eq i32 %428, 1
  %430 = or i1 %421, %429
  br i1 %430, label %435, label %431

431:                                              ; preds = %420
  %432 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %432, label %433, label %654

433:                                              ; preds = %431
  %434 = load ptr, ptr %0, align 8
  br label %435

435:                                              ; preds = %433, %420
  %436 = phi ptr [ %434, %433 ], [ %411, %420 ]
  %437 = getelementptr inbounds %struct.cdrom_device_ops, ptr %436, i32 0, i32 5
  %438 = load ptr, ptr %437, align 4
  %439 = tail call i32 %438(ptr noundef %0, i32 noundef %4) #15
  br label %654

440:                                              ; preds = %5
  %441 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %441, label %442, label %654

442:                                              ; preds = %440
  %443 = icmp ne i32 %4, 0
  %444 = zext i1 %443 to i8
  store i8 %444, ptr @debug, align 1
  %445 = zext i1 %443 to i32
  br label %654

446:                                              ; preds = %5
  %447 = load ptr, ptr %0, align 8
  %448 = getelementptr inbounds %struct.cdrom_device_ops, ptr %447, i32 0, i32 14
  %449 = load i32, ptr %448, align 4
  %450 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %451 = load i32, ptr %450, align 4
  %452 = xor i32 %451, -1
  %453 = and i32 %449, %452
  br label %654

454:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %9, i8 0, i32 14, i1 false) #15, !annotation !16
  %455 = load ptr, ptr %0, align 8
  %456 = getelementptr inbounds %struct.cdrom_device_ops, ptr %455, i32 0, i32 14
  %457 = load i32, ptr %456, align 4
  %458 = and i32 %457, 64
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %478, label %460

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.cdrom_device_ops, ptr %455, i32 0, i32 9
  %462 = load ptr, ptr %461, align 4
  %463 = call i32 %462(ptr noundef %0, ptr noundef nonnull %9) #15
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %478

465:                                              ; preds = %460
  %466 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 14, i32 -1090519040) #16, !srcloc !21
  %467 = extractvalue { i32, i32 } %466, 0
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %465
  %470 = tail call ptr @llvm.thread.pointer() #15
  %471 = getelementptr inbounds %struct.thread_info, ptr %470, i32 0, i32 3
  %472 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %471) #18, !srcloc !18
  %473 = and i32 %472, -13
  %474 = or i32 %473, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %474) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %475 = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %9, i32 noundef 14) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %472) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %476 = icmp eq i32 %475, 0
  %477 = select i1 %476, i32 0, i32 -14
  br label %478

478:                                              ; preds = %469, %465, %460, %454
  %479 = phi i32 [ -38, %454 ], [ %463, %460 ], [ -14, %465 ], [ %477, %469 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %9) #15
  br label %654

480:                                              ; preds = %5
  %481 = load ptr, ptr %0, align 8
  %482 = getelementptr inbounds %struct.cdrom_device_ops, ptr %481, i32 0, i32 14
  %483 = load i32, ptr %482, align 4
  %484 = and i32 %483, 2048
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %654, label %486

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %488 = load i32, ptr %487, align 4
  %489 = xor i32 %488, -1
  %490 = and i32 %483, 16
  %491 = and i32 %490, %489
  %492 = icmp eq i32 %491, 0
  %493 = icmp sgt i32 %4, 2147483645
  %494 = or i1 %493, %492
  br i1 %494, label %495, label %499

495:                                              ; preds = %486
  %496 = getelementptr inbounds %struct.cdrom_device_ops, ptr %481, i32 0, i32 2
  %497 = load ptr, ptr %496, align 4
  %498 = tail call i32 %497(ptr noundef %0, i32 noundef 2147483647) #15
  br label %654

499:                                              ; preds = %486
  %500 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 6
  %501 = load i32, ptr %500, align 4
  %502 = icmp ugt i32 %501, %4
  br i1 %502, label %503, label %654

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %505 = load i8, ptr %504, align 4
  %506 = and i8 %505, 3
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %508, label %654

508:                                              ; preds = %503
  %509 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %510 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %509, i32 noundef 3264, i32 noundef 1032) #17
  %511 = icmp eq ptr %510, null
  br i1 %511, label %654, label %512

512:                                              ; preds = %508
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #15
  %513 = load i8, ptr %504, align 4
  %514 = and i8 %513, 3
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %536, label %516

516:                                              ; preds = %512
  %517 = getelementptr inbounds %struct.cdrom_mechstat_header, ptr %510, i32 0, i32 2
  store i8 3, ptr %517, align 1
  %518 = icmp eq i8 %514, 3
  %519 = select i1 %518, i8 0, i8 %514
  %520 = zext i8 %519 to i16
  %521 = load i16, ptr %510, align 8
  %522 = and i16 %521, -32
  %523 = or i16 %522, %520
  store i16 %523, ptr %510, align 8
  %524 = getelementptr %struct.cdrom_changer_info, ptr %510, i32 0, i32 1, i32 0
  %525 = load i8, ptr %524, align 8
  %526 = and i8 %525, 126
  %527 = or i8 %526, -128
  store i8 %527, ptr %524, align 8
  %528 = getelementptr %struct.cdrom_changer_info, ptr %510, i32 0, i32 1, i32 1
  %529 = load i8, ptr %528, align 4
  %530 = and i8 %529, 126
  %531 = or i8 %530, -128
  store i8 %531, ptr %528, align 4
  %532 = getelementptr %struct.cdrom_changer_info, ptr %510, i32 0, i32 1, i32 2
  %533 = load i8, ptr %532, align 8
  %534 = and i8 %533, 126
  %535 = or i8 %534, -128
  store i8 %535, ptr %532, align 8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #15
  br label %554

536:                                              ; preds = %512
  %537 = load ptr, ptr %0, align 8
  %538 = load i32, ptr %500, align 4
  %539 = shl i32 %538, 2
  %540 = add i32 %539, 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 %510, i8 0, i32 %540, i1 false) #15
  %541 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 1
  store ptr %510, ptr %541, align 4
  %542 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 2
  store i32 %540, ptr %542, align 4
  %543 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 5
  store i8 2, ptr %543, align 4
  %544 = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 7
  store i32 700, ptr %544, align 4
  store i8 -67, ptr %8, align 4
  %545 = lshr i32 %540, 8
  %546 = trunc i32 %545 to i8
  %547 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 8
  store i8 %546, ptr %547, align 4
  %548 = trunc i32 %540 to i8
  %549 = getelementptr inbounds [12 x i8], ptr %8, i32 0, i32 9
  store i8 %548, ptr %549, align 1
  %550 = getelementptr inbounds %struct.cdrom_device_ops, ptr %537, i32 0, i32 12
  %551 = load ptr, ptr %550, align 4
  %552 = call i32 %551(ptr noundef %0, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #15
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %559

554:                                              ; preds = %536, %516
  %555 = getelementptr %struct.cdrom_changer_info, ptr %510, i32 0, i32 1, i32 %4
  %556 = load i8, ptr %555, align 4
  %557 = icmp sgt i8 %556, -1
  %558 = select i1 %557, i32 1, i32 4
  br label %559

559:                                              ; preds = %554, %536
  %560 = phi i32 [ %552, %536 ], [ %558, %554 ]
  call void @kfree(ptr noundef nonnull %510) #15
  br label %654

561:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #15, !annotation !16
  call fastcc void @cdrom_count_tracks(ptr noundef %0, ptr noundef nonnull %7) #15
  %562 = getelementptr inbounds %struct.tracktype, ptr %7, i32 0, i32 4
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %593

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.tracktype, ptr %7, i32 0, i32 1
  %567 = load i32, ptr %566, align 4
  %568 = icmp sgt i32 %567, 0
  br i1 %568, label %569, label %581

569:                                              ; preds = %565
  %570 = load i32, ptr %7, align 4
  %571 = icmp ne i32 %570, 0
  %572 = getelementptr inbounds %struct.tracktype, ptr %7, i32 0, i32 2
  %573 = load i32, ptr %572, align 4
  %574 = icmp ne i32 %573, 0
  %575 = select i1 %571, i1 true, i1 %574
  %576 = getelementptr inbounds %struct.tracktype, ptr %7, i32 0, i32 3
  %577 = load i32, ptr %576, align 4
  %578 = icmp ne i32 %577, 0
  %579 = select i1 %575, i1 true, i1 %578
  %580 = select i1 %579, i32 105, i32 100
  br label %593

581:                                              ; preds = %565
  %582 = getelementptr inbounds %struct.tracktype, ptr %7, i32 0, i32 2
  %583 = load i32, ptr %582, align 4
  %584 = icmp sgt i32 %583, 0
  br i1 %584, label %593, label %585

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.tracktype, ptr %7, i32 0, i32 3
  %587 = load i32, ptr %586, align 4
  %588 = icmp sgt i32 %587, 0
  br i1 %588, label %593, label %589

589:                                              ; preds = %585
  %590 = load i32, ptr %7, align 4
  %591 = icmp sgt i32 %590, 0
  %592 = select i1 %591, i32 101, i32 0
  br label %593

593:                                              ; preds = %589, %585, %581, %569, %561
  %594 = phi i32 [ %563, %561 ], [ %580, %569 ], [ 104, %581 ], [ 103, %585 ], [ %592, %589 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %654

595:                                              ; preds = %5
  %596 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 6
  %597 = load i32, ptr %596, align 4
  br label %654

598:                                              ; preds = %5
  %599 = load ptr, ptr %0, align 8
  %600 = getelementptr inbounds %struct.cdrom_device_ops, ptr %599, i32 0, i32 14
  %601 = load i32, ptr %600, align 4
  %602 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %603 = load i32, ptr %602, align 4
  %604 = xor i32 %603, -1
  %605 = and i32 %601, 4096
  %606 = and i32 %605, %604
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %637, label %608

608:                                              ; preds = %598
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i64 44, i1 false) #15
  switch i32 %3, label %609 [
    i32 21268, label %610
    i32 21261, label %610
    i32 21260, label %610
    i32 21262, label %612
    i32 21259, label %614
    i32 21251, label %616
    i32 21271, label %618
    i32 21258, label %620
    i32 21267, label %620
    i32 21256, label %622
    i32 21255, label %622
    i32 21249, label %624
    i32 21250, label %624
    i32 21392, label %626
    i32 21394, label %628
    i32 21396, label %630
    i32 21397, label %632
  ]

609:                                              ; preds = %608
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #15
  br label %637

610:                                              ; preds = %608, %608, %608
  %611 = call fastcc i32 @mmc_ioctl_cdrom_read_data(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6, i32 noundef %3) #15
  br label %634

612:                                              ; preds = %608
  %613 = tail call fastcc i32 @mmc_ioctl_cdrom_read_audio(ptr noundef %0, ptr noundef %14) #15
  br label %634

614:                                              ; preds = %608
  %615 = tail call fastcc i32 @mmc_ioctl_cdrom_subchannel(ptr noundef %0, ptr noundef %14) #15
  br label %634

616:                                              ; preds = %608
  %617 = call fastcc i32 @mmc_ioctl_cdrom_play_msf(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6) #15
  br label %634

618:                                              ; preds = %608
  %619 = call fastcc i32 @mmc_ioctl_cdrom_play_blk(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6) #15
  br label %634

620:                                              ; preds = %608, %608
  %621 = call fastcc i32 @mmc_ioctl_cdrom_volume(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6, i32 noundef %3) #15
  br label %634

622:                                              ; preds = %608, %608
  %623 = call fastcc i32 @mmc_ioctl_cdrom_start_stop(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3) #15
  br label %634

624:                                              ; preds = %608, %608
  %625 = call fastcc i32 @mmc_ioctl_cdrom_pause_resume(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3) #15
  br label %634

626:                                              ; preds = %608
  %627 = call fastcc i32 @mmc_ioctl_dvd_read_struct(ptr noundef %0, ptr noundef %14, ptr noundef nonnull %6) #15
  br label %634

628:                                              ; preds = %608
  %629 = tail call fastcc i32 @mmc_ioctl_dvd_auth(ptr noundef %0, ptr noundef %14) #15
  br label %634

630:                                              ; preds = %608
  %631 = tail call fastcc i32 @mmc_ioctl_cdrom_next_writable(ptr noundef %0, ptr noundef %14) #15
  br label %634

632:                                              ; preds = %608
  %633 = tail call fastcc i32 @mmc_ioctl_cdrom_last_written(ptr noundef %0, ptr noundef %14) #15
  br label %634

634:                                              ; preds = %632, %630, %628, %626, %624, %622, %620, %618, %616, %614, %612, %610
  %635 = phi i32 [ %633, %632 ], [ %631, %630 ], [ %629, %628 ], [ %627, %626 ], [ %625, %624 ], [ %623, %622 ], [ %621, %620 ], [ %619, %618 ], [ %617, %616 ], [ %615, %614 ], [ %613, %612 ], [ %611, %610 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #15
  %636 = icmp eq i32 %635, -25
  br i1 %636, label %637, label %654

637:                                              ; preds = %634, %609, %598
  switch i32 %3, label %654 [
    i32 21259, label %638
    i32 21253, label %640
    i32 21254, label %642
    i32 21251, label %644
    i32 21252, label %646
    i32 21258, label %648
    i32 21267, label %650
    i32 21256, label %652
    i32 21255, label %652
    i32 21249, label %652
    i32 21250, label %652
  ]

638:                                              ; preds = %637
  %639 = call fastcc i32 @cdrom_ioctl_get_subchnl(ptr noundef %0, ptr noundef %14)
  br label %654

640:                                              ; preds = %637
  %641 = call fastcc i32 @cdrom_ioctl_read_tochdr(ptr noundef %0, ptr noundef %14)
  br label %654

642:                                              ; preds = %637
  %643 = call fastcc i32 @cdrom_ioctl_read_tocentry(ptr noundef %0, ptr noundef %14)
  br label %654

644:                                              ; preds = %637
  %645 = call fastcc i32 @cdrom_ioctl_play_msf(ptr noundef %0, ptr noundef %14)
  br label %654

646:                                              ; preds = %637
  %647 = call fastcc i32 @cdrom_ioctl_play_trkind(ptr noundef %0, ptr noundef %14)
  br label %654

648:                                              ; preds = %637
  %649 = call fastcc i32 @cdrom_ioctl_volctrl(ptr noundef %0, ptr noundef %14)
  br label %654

650:                                              ; preds = %637
  %651 = call fastcc i32 @cdrom_ioctl_volread(ptr noundef %0, ptr noundef %14)
  br label %654

652:                                              ; preds = %637, %637, %637, %637
  %653 = call fastcc i32 @cdrom_ioctl_audioctl(ptr noundef %0, i32 noundef %3)
  br label %654

654:                                              ; preds = %652, %650, %648, %646, %644, %642, %640, %638, %637, %634, %595, %593, %559, %508, %503, %499, %495, %480, %478, %446, %442, %440, %435, %431, %410, %405, %395, %393, %387, %384, %372, %322, %320, %283, %275, %263, %259, %249, %241, %234, %224, %220, %210, %206, %162, %155, %150, %140, %136, %126, %121, %114, %106, %102, %92, %90
  %655 = phi i32 [ %653, %652 ], [ %651, %650 ], [ %649, %648 ], [ %647, %646 ], [ %645, %644 ], [ %643, %642 ], [ %641, %640 ], [ %639, %638 ], [ %597, %595 ], [ %594, %593 ], [ %479, %478 ], [ %453, %446 ], [ %246, %241 ], [ %207, %206 ], [ %163, %162 ], [ %91, %90 ], [ %635, %634 ], [ -38, %637 ], [ %117, %114 ], [ %125, %121 ], [ -38, %92 ], [ -16, %106 ], [ -16, %102 ], [ %139, %136 ], [ -38, %126 ], [ 0, %155 ], [ -38, %140 ], [ -16, %150 ], [ %238, %234 ], [ %223, %220 ], [ -38, %210 ], [ -38, %224 ], [ %262, %259 ], [ -38, %249 ], [ %284, %283 ], [ -38, %263 ], [ -22, %275 ], [ %321, %320 ], [ %368, %372 ], [ -12, %322 ], [ %386, %384 ], [ %392, %387 ], [ %409, %405 ], [ -13, %393 ], [ -38, %395 ], [ %439, %435 ], [ -95, %410 ], [ -16, %431 ], [ %445, %442 ], [ -13, %440 ], [ %498, %495 ], [ -38, %480 ], [ -22, %499 ], [ %560, %559 ], [ 0, %503 ], [ -12, %508 ]
  ret i32 %655
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_media_changed(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.packet_command, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %6, %9
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %109, label %13

13:                                               ; preds = %2
  %14 = and i32 %10, 16
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %1, 2147483647
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 31
  %22 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 1, i32 noundef 2147483647) #15
  %25 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = or i32 %29, %24
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  store i32 0, ptr %28, align 8
  br i1 %32, label %47, label %33

33:                                               ; preds = %18
  %34 = load i32, ptr %19, align 8
  %35 = or i32 %34, -1073741824
  store i32 %35, ptr %19, align 8
  %36 = tail call i64 @ktime_get() #15
  %37 = tail call i64 @llvm.abs.i64(i64 %36, i1 false) #15
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %37) #16, !srcloc !14
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %37, i64 %38, i32 0) #16, !srcloc !15
  %40 = extractvalue { i64, i32 } %39, 0
  %41 = icmp slt i64 %36, 0
  %42 = lshr i64 %40, 18
  %43 = sub nsw i64 0, %42
  %44 = select i1 %41, i64 %43, i64 %42
  %45 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 20
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 15
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %33, %18
  %48 = phi i32 [ 1, %33 ], [ %21, %18 ]
  %49 = load i32, ptr %19, align 8
  %50 = and i32 %49, 2147483647
  store i32 %50, ptr %19, align 8
  br label %109

51:                                               ; preds = %13
  %52 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, %1
  br i1 %54, label %55, label %109

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 1032) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %109, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  %60 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 3
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cdrom_mechstat_header, ptr %57, i32 0, i32 2
  store i8 3, ptr %65, align 1
  %66 = icmp eq i8 %62, 3
  %67 = select i1 %66, i8 0, i8 %62
  %68 = zext i8 %67 to i16
  %69 = load i16, ptr %57, align 8
  %70 = and i16 %69, -32
  %71 = or i16 %70, %68
  store i16 %71, ptr %57, align 8
  %72 = getelementptr %struct.cdrom_changer_info, ptr %57, i32 0, i32 1, i32 0
  %73 = load i8, ptr %72, align 8
  %74 = and i8 %73, 126
  %75 = or i8 %74, -128
  store i8 %75, ptr %72, align 8
  %76 = getelementptr %struct.cdrom_changer_info, ptr %57, i32 0, i32 1, i32 1
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, 126
  %79 = or i8 %78, -128
  store i8 %79, ptr %76, align 4
  %80 = getelementptr %struct.cdrom_changer_info, ptr %57, i32 0, i32 1, i32 2
  %81 = load i8, ptr %80, align 8
  %82 = and i8 %81, 126
  %83 = or i8 %82, -128
  store i8 %83, ptr %80, align 8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %102

84:                                               ; preds = %59
  %85 = load ptr, ptr %0, align 8
  %86 = load i32, ptr %52, align 4
  %87 = shl i32 %86, 2
  %88 = add i32 %87, 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 %57, i8 0, i32 %88, i1 false) #15
  %89 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %57, ptr %89, align 4
  %90 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 %88, ptr %90, align 4
  %91 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %91, align 4
  %92 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 700, ptr %92, align 4
  store i8 -67, ptr %3, align 4
  %93 = lshr i32 %88, 8
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 %94, ptr %95, align 4
  %96 = trunc i32 %88 to i8
  %97 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 9
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.cdrom_device_ops, ptr %85, i32 0, i32 12
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %0, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %84, %64
  %103 = getelementptr %struct.cdrom_changer_info, ptr %57, i32 0, i32 1, i32 %1
  %104 = load i8, ptr %103, align 4
  %105 = and i8 %104, 1
  %106 = zext i8 %105 to i32
  br label %107

107:                                              ; preds = %102, %84
  %108 = phi i32 [ %100, %84 ], [ %106, %102 ]
  call void @kfree(ptr noundef nonnull %57) #15
  br label %109

109:                                              ; preds = %107, %55, %51, %47, %2
  %110 = phi i32 [ %108, %107 ], [ -38, %2 ], [ -22, %51 ], [ -12, %55 ], [ %48, %47 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_get_subchnl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_subchnl, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !16
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #16
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 16, %2 ]
  %17 = sub i32 16, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #15
  br label %103

19:                                               ; preds = %7
  %20 = load i8, ptr %3, align 4
  %21 = add i8 %20, -3
  %22 = icmp ult i8 %21, -2
  br i1 %22, label %103, label %23

23:                                               ; preds = %19
  store i8 2, ptr %3, align 4
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.cdrom_device_ops, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef 21259, ptr noundef nonnull %3) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %23
  %30 = load i8, ptr %3, align 4
  %31 = getelementptr inbounds %struct.cdrom_subchnl, ptr %3, i32 0, i32 5
  %32 = icmp eq i8 %30, %20
  br i1 %32, label %96, label %33

33:                                               ; preds = %29
  %34 = icmp eq i8 %20, 1
  br i1 %34, label %35, label %63

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -2
  %43 = load i8, ptr %31, align 4
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, 60
  %46 = add nsw i32 %42, %45
  %47 = mul nsw i32 %46, 75
  %48 = add nsw i32 %47, %38
  store i32 %48, ptr %31, align 4
  %49 = getelementptr inbounds %struct.cdrom_subchnl, ptr %3, i32 0, i32 6
  %50 = getelementptr inbounds %struct.cdrom_msf0, ptr %49, i32 0, i32 2
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.cdrom_msf0, ptr %49, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -2
  %57 = load i8, ptr %49, align 4
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, 60
  %60 = add nsw i32 %56, %59
  %61 = mul nsw i32 %60, 75
  %62 = add nsw i32 %61, %52
  store i32 %62, ptr %49, align 4
  br label %95

63:                                               ; preds = %33
  %64 = load i32, ptr %31, align 4
  %65 = freeze i32 %64
  %66 = sdiv i32 %65, 75
  %67 = mul i32 %66, 75
  %68 = sub i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 2
  store i8 %69, ptr %70, align 2
  %71 = add nsw i32 %66, 2
  %72 = freeze i32 %71
  %73 = sdiv i32 %72, 60
  %74 = mul i32 %73, 60
  %75 = sub i32 %72, %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 1
  store i8 %76, ptr %77, align 1
  %78 = trunc i32 %73 to i8
  store i8 %78, ptr %31, align 4
  %79 = getelementptr inbounds %struct.cdrom_subchnl, ptr %3, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = freeze i32 %80
  %82 = sdiv i32 %81, 75
  %83 = mul i32 %82, 75
  %84 = sub i32 %81, %83
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds %struct.cdrom_msf0, ptr %79, i32 0, i32 2
  store i8 %85, ptr %86, align 2
  %87 = add nsw i32 %82, 2
  %88 = freeze i32 %87
  %89 = sdiv i32 %88, 60
  %90 = mul i32 %89, 60
  %91 = sub i32 %88, %90
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds %struct.cdrom_msf0, ptr %79, i32 0, i32 1
  store i8 %92, ptr %93, align 1
  %94 = trunc i32 %89 to i8
  store i8 %94, ptr %79, align 4
  br label %95

95:                                               ; preds = %63, %35
  store i8 %20, ptr %3, align 4
  br label %96

96:                                               ; preds = %95, %29
  %97 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %100 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 0, i32 -14
  br label %103

103:                                              ; preds = %96, %23, %19, %15
  %104 = phi i32 [ -22, %19 ], [ %27, %23 ], [ -14, %15 ], [ %102, %96 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_read_tochdr(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_tochdr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !16
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 2, i32 -1090519040) #16
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 2) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 2, %2 ]
  %17 = sub i32 2, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #15
  br label %32

19:                                               ; preds = %7
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.cdrom_device_ops, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i32 noundef 21253, ptr noundef nonnull %3) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %29 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 -14
  br label %32

32:                                               ; preds = %25, %19, %15
  %33 = phi i32 [ %23, %19 ], [ -14, %15 ], [ %31, %25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_read_tocentry(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_tocentry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !16
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1090519040) #16
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 12) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 12, %2 ]
  %17 = sub i32 12, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #15
  br label %75

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.cdrom_tocentry, ptr %3, i32 0, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = add i8 %21, -3
  %23 = icmp ult i8 %22, -2
  br i1 %23, label %73, label %24

24:                                               ; preds = %19
  store i8 2, ptr %20, align 2
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.cdrom_device_ops, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %0, i32 noundef 21254, ptr noundef nonnull %3) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.cdrom_tocentry, ptr %3, i32 0, i32 3
  %32 = load i8, ptr %20, align 2
  %33 = icmp eq i8 %32, %21
  br i1 %33, label %67, label %34

34:                                               ; preds = %30
  %35 = icmp eq i8 %21, 1
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, -2
  %44 = load i8, ptr %31, align 4
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %45, 60
  %47 = add nsw i32 %43, %46
  %48 = mul nsw i32 %47, 75
  %49 = add nsw i32 %48, %39
  store i32 %49, ptr %31, align 4
  br label %66

50:                                               ; preds = %34
  %51 = load i32, ptr %31, align 4
  %52 = freeze i32 %51
  %53 = sdiv i32 %52, 75
  %54 = mul i32 %53, 75
  %55 = sub i32 %52, %54
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 2
  store i8 %56, ptr %57, align 2
  %58 = add nsw i32 %53, 2
  %59 = freeze i32 %58
  %60 = sdiv i32 %59, 60
  %61 = mul i32 %60, 60
  %62 = sub i32 %59, %61
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.cdrom_msf0, ptr %31, i32 0, i32 1
  store i8 %63, ptr %64, align 1
  %65 = trunc i32 %60 to i8
  store i8 %65, ptr %31, align 4
  br label %66

66:                                               ; preds = %50, %36
  store i8 %21, ptr %20, align 2
  br label %67

67:                                               ; preds = %66, %30
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %69 = and i32 %68, -13
  %70 = or i32 %69, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %71 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 12) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %24, %19
  %74 = phi i32 [ 0, %67 ], [ -22, %19 ], [ %28, %24 ]
  br label %75

75:                                               ; preds = %73, %67, %15
  %76 = phi i32 [ %74, %73 ], [ -14, %67 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_play_msf(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_msf, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !16
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %6, 256
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 6, i32 -1090519040) #16, !srcloc !22
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !17

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #15
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !18
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 6) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !17

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ 6, %13 ]
  %27 = sub i32 6, %26
  %28 = getelementptr i8, ptr %3, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #15
  br label %34

29:                                               ; preds = %17
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.cdrom_device_ops, ptr %30, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, i32 noundef 21251, ptr noundef nonnull %3) #15
  br label %34

34:                                               ; preds = %29, %25, %2
  %35 = phi i32 [ %33, %29 ], [ -38, %2 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #15
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_play_trkind(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_ti, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !16
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %6, 256
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #16, !srcloc !22
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !17

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #15
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !18
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !17

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ 4, %13 ]
  %27 = sub i32 4, %26
  %28 = getelementptr i8, ptr %3, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #15
  br label %38

29:                                               ; preds = %17
  %30 = load ptr, ptr %0, align 8
  %31 = call fastcc i32 @check_for_audio_disc(ptr noundef %0, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.cdrom_device_ops, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %0, i32 noundef 21252, ptr noundef nonnull %3) #15
  br label %38

38:                                               ; preds = %33, %29, %25, %2
  %39 = phi i32 [ %37, %33 ], [ -38, %2 ], [ %31, %29 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_volctrl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_volctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !16
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %6, 256
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #16, !srcloc !22
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25, !prof !17

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #15
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #18, !srcloc !18
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %23 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !17

25:                                               ; preds = %17, %13
  %26 = phi i32 [ %23, %17 ], [ 4, %13 ]
  %27 = sub i32 4, %26
  %28 = getelementptr i8, ptr %3, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %26, i1 false) #15
  br label %34

29:                                               ; preds = %17
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.cdrom_device_ops, ptr %30, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, i32 noundef 21258, ptr noundef nonnull %3) #15
  br label %34

34:                                               ; preds = %29, %25, %2
  %35 = phi i32 [ %33, %29 ], [ -38, %2 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_volread(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_volctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !16
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %6, 256
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i32 noundef 21267, ptr noundef nonnull %3) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #16, !srcloc !21
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #15
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !18
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %28 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 -14
  br label %31

31:                                               ; preds = %22, %18, %13, %2
  %32 = phi i32 [ -38, %2 ], [ %16, %13 ], [ -14, %18 ], [ %30, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_ioctl_audioctl(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cdrom_device_ops, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %5, 256
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @check_for_audio_disc(ptr noundef %0, ptr noundef %3)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.cdrom_device_ops, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef %1, ptr noundef null) #15
  br label %20

20:                                               ; preds = %15, %12, %2
  %21 = phi i32 [ %19, %15 ], [ -38, %2 ], [ %13, %12 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cdrom_exit() #9 section ".exit.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  %2 = load ptr, ptr @cdrom_sysctl_header, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @unregister_sysctl_table(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdrom_init() #9 section ".init.text" {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @cdrom_sysctl_register.initialized) #15, !srcloc !9
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cdrom_sysctl_register.initialized, ptr nonnull @cdrom_sysctl_register.initialized, i32 1, i32 1, ptr nonnull elementtype(i32) @cdrom_sysctl_register.initialized) #15, !srcloc !10
  %2 = extractvalue { i32, i32, i32 } %1, 0
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  %5 = tail call ptr @register_sysctl(ptr noundef nonnull @.str.30, ptr noundef nonnull @cdrom_table) #15
  store ptr %5, ptr @cdrom_sysctl_header, align 4
  %6 = load i8, ptr @autoclose, align 1, !range !12
  %7 = zext i8 %6 to i32
  store i32 %7, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 1), align 4
  %8 = load i8, ptr @autoeject, align 1, !range !12
  %9 = zext i8 %8 to i32
  store i32 %9, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 2), align 4
  %10 = load i8, ptr @debug, align 1, !range !12
  %11 = zext i8 %10 to i32
  store i32 %11, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 3), align 4
  %12 = load i8, ptr @lockdoor, align 1, !range !12
  %13 = zext i8 %12 to i32
  store i32 %13, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 4), align 4
  %14 = load i8, ptr @check_media_type, align 1, !range !12
  %15 = zext i8 %14 to i32
  store i32 %15, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 5), align 4
  br label %16

16:                                               ; preds = %4, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cdrom_count_tracks(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.cdrom_tochdr, align 2
  %4 = alloca %struct.cdrom_tocentry, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !16
  %5 = getelementptr inbounds %struct.tracktype, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tracktype, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tracktype, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.tracktype, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_ops, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %11, 256
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cdrom_device_ops, ptr %9, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %0, i32 noundef 21253, ptr noundef nonnull %3) #15
  switch i32 %21, label %22 [
    i32 0, label %23
    i32 -123, label %56
  ]

22:                                               ; preds = %18
  br label %56

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cdrom_tocentry, ptr %4, i32 0, i32 2
  store i8 2, ptr %24, align 2
  %25 = load i8, ptr %3, align 2
  %26 = getelementptr inbounds %struct.cdrom_tochdr, ptr %3, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp ugt i8 %25, %27
  br i1 %28, label %58, label %29

29:                                               ; preds = %23
  %30 = zext i8 %25 to i32
  %31 = getelementptr inbounds %struct.cdrom_tocentry, ptr %4, i32 0, i32 1
  br label %32

32:                                               ; preds = %48, %29
  %33 = phi i32 [ %30, %29 ], [ %52, %48 ]
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %4, align 4
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.cdrom_device_ops, ptr %35, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, i32 noundef 21254, ptr noundef nonnull %4) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load i8, ptr %31, align 1
  %42 = and i8 %41, 64
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr %24, align 2
  switch i8 %45, label %47 [
    i8 16, label %48
    i8 32, label %46
  ]

46:                                               ; preds = %44
  br label %48

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %46, %44, %40
  %49 = phi ptr [ %7, %46 ], [ %1, %47 ], [ %6, %44 ], [ %5, %40 ]
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = add nuw nsw i32 %33, 1
  %53 = load i8, ptr %26, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ult i32 %33, %54
  br i1 %55, label %32, label %58

56:                                               ; preds = %32, %22, %18
  %57 = phi i32 [ 0, %22 ], [ 1, %18 ], [ 0, %32 ]
  store i32 %57, ptr %8, align 4
  br label %58

58:                                               ; preds = %56, %48, %23, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_mrw_bgformat(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.packet_command, align 4
  %3 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i32 11, i1 false) #15
  %5 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 12, ptr %6, align 4
  %7 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i8 4, ptr %2, align 4
  %9 = getelementptr inbounds [12 x i8], ptr %2, i32 0, i32 1
  store i8 17, ptr %9, align 1
  store i32 30000, ptr %8, align 4
  %10 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 2, ptr %10, align 1
  %11 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 3
  store i8 8, ptr %11, align 1
  %12 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  %13 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i32 -1, ptr %12, align 1
  store i8 -112, ptr %13, align 1
  %14 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 11
  store i8 1, ptr %14, align 1
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.cdrom_device_ops, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %0, ptr noundef nonnull %2) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %22

22:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #15
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @signal_media_change(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = or i32 %3, -1073741824
  store i32 %4, ptr %2, align 8
  %5 = tail call i64 @ktime_get() #15
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #15
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #16, !srcloc !14
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #16, !srcloc !15
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = icmp slt i64 %5, 0
  %11 = lshr i64 %9, 18
  %12 = sub nsw i64 0, %11
  %13 = select i1 %10, i64 %12, i64 %11
  %14 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 20
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdrom_load_unload(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.packet_command, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 12
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 3
  %7 = icmp ne i8 %6, 0
  %8 = icmp slt i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false)
  store i8 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i8 -90, ptr %3, align 4
  %13 = xor i32 %1, -1
  %14 = lshr i32 %13, 31
  %15 = trunc i32 %14 to i8
  %16 = or i8 %15, 2
  %17 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 %16, ptr %17, align 4
  %18 = trunc i32 %1 to i8
  %19 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 %18, ptr %19, align 4
  store i32 6000, ptr %12, align 4
  %20 = icmp sgt i32 %1, -1
  %21 = and i1 %20, %7
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  store i8 0, ptr %3, align 4
  %23 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 7
  store i8 %18, ptr %23, align 1
  store i8 0, ptr %19, align 4
  store i8 0, ptr %17, align 4
  %24 = icmp eq i32 %1, 0
  %25 = and i8 %18, 3
  %26 = select i1 %24, i8 3, i8 %25
  %27 = and i8 %5, -4
  %28 = or i8 %27, %26
  store i8 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %22, %10
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.cdrom_device_ops, ptr %30, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %34

34:                                               ; preds = %29, %2
  %35 = phi i32 [ %33, %29 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_read_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #13 {
  %5 = alloca %struct.packet_command, align 4
  %6 = alloca %struct.modesel_head, align 1
  %7 = alloca %struct.packet_command, align 4
  %8 = alloca %struct.modesel_head, align 1
  %9 = alloca %struct.scsi_sense_hdr, align 8
  %10 = alloca %struct.cdrom_msf, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false), !annotation !16
  switch i32 %3, label %14 [
    i32 21268, label %11
    i32 21261, label %12
    i32 21260, label %13
  ]

11:                                               ; preds = %4
  br label %14

12:                                               ; preds = %4
  br label %14

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13, %12, %11, %4
  %15 = phi i1 [ false, %4 ], [ false, %13 ], [ true, %12 ], [ false, %11 ]
  %16 = phi i8 [ 16, %4 ], [ 88, %13 ], [ 16, %12 ], [ -8, %11 ]
  %17 = phi i32 [ 0, %4 ], [ 2336, %13 ], [ 2048, %12 ], [ 2352, %11 ]
  %18 = phi i8 [ 0, %4 ], [ 0, %13 ], [ 8, %12 ], [ 0, %11 ]
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 6, i32 -1090519040) #16, !srcloc !22
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30, !prof !17

22:                                               ; preds = %14
  %23 = tail call ptr @llvm.thread.pointer() #15
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !18
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %1, i32 noundef 6) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !17

30:                                               ; preds = %22, %14
  %31 = phi i32 [ %28, %22 ], [ 6, %14 ]
  %32 = sub i32 6, %31
  %33 = getelementptr i8, ptr %10, i32 %32
  call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %31, i1 false) #15
  br label %147

34:                                               ; preds = %22
  %35 = load i8, ptr %10, align 1
  %36 = getelementptr inbounds %struct.cdrom_msf, ptr %10, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.cdrom_msf, ptr %10, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %35 to i32
  %41 = mul nuw nsw i32 %40, 60
  %42 = zext i8 %37 to i32
  %43 = add nuw nsw i32 %41, %42
  %44 = mul nuw nsw i32 %43, 75
  %45 = zext i8 %39 to i32
  %46 = add nsw i32 %45, -150
  %47 = add nsw i32 %46, %44
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %147, label %49

49:                                               ; preds = %34
  %50 = call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #19
  %51 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %147, label %53

53:                                               ; preds = %49
  store i64 0, ptr %9, align 8
  %54 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 4
  store ptr %9, ptr %54, align 4
  %55 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %55, align 4
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr i8, ptr %2, i32 8
  store i32 1, ptr %57, align 4
  store i8 -66, ptr %2, align 4
  %58 = getelementptr [12 x i8], ptr %2, i32 0, i32 1
  store i8 %18, ptr %58, align 1
  %59 = lshr i32 %47, 24
  %60 = trunc i32 %59 to i8
  %61 = getelementptr [12 x i8], ptr %2, i32 0, i32 2
  store i8 %60, ptr %61, align 2
  %62 = lshr i32 %47, 16
  %63 = trunc i32 %62 to i8
  %64 = getelementptr [12 x i8], ptr %2, i32 0, i32 3
  store i8 %63, ptr %64, align 1
  %65 = lshr i32 %47, 8
  %66 = trunc i32 %65 to i8
  %67 = getelementptr [12 x i8], ptr %2, i32 0, i32 4
  store i8 %66, ptr %67, align 4
  %68 = trunc i32 %47 to i8
  %69 = getelementptr [12 x i8], ptr %2, i32 0, i32 5
  store i8 %68, ptr %69, align 1
  %70 = getelementptr [12 x i8], ptr %2, i32 0, i32 6
  store i8 0, ptr %70, align 2
  %71 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 0, ptr %71, align 1
  %72 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 %17, ptr %72, align 4
  %73 = getelementptr [12 x i8], ptr %2, i32 0, i32 9
  store i8 %16, ptr %73, align 1
  %74 = getelementptr inbounds %struct.cdrom_device_ops, ptr %56, i32 0, i32 12
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %0, ptr noundef %2) #15
  %77 = icmp ne i32 %76, 0
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 5
  %81 = select i1 %77, i1 %80, i1 false
  %82 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 2
  %83 = load i8, ptr %82, align 2
  %84 = icmp eq i8 %83, 32
  %85 = select i1 %81, i1 %84, i1 false
  %86 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %9, i32 0, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %85, i1 %88, i1 false
  br i1 %89, label %90, label %127

90:                                               ; preds = %53
  br i1 %15, label %108, label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %93 = getelementptr inbounds %struct.modesel_head, ptr %8, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %8, i8 0, i64 10, i1 false) #15
  %94 = lshr i32 %17, 8
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.modesel_head, ptr %8, i32 0, i32 10
  %97 = trunc i32 %17 to i8
  %98 = getelementptr inbounds %struct.modesel_head, ptr %8, i32 0, i32 11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false) #15
  store i8 21, ptr %7, align 4
  %99 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 1
  store i8 16, ptr %99, align 1
  %100 = getelementptr inbounds [12 x i8], ptr %7, i32 0, i32 4
  store i8 12, ptr %100, align 4
  %101 = getelementptr inbounds %struct.packet_command, ptr %7, i32 0, i32 2
  store i32 12, ptr %101, align 4
  %102 = getelementptr inbounds %struct.packet_command, ptr %7, i32 0, i32 1
  store ptr %8, ptr %102, align 4
  %103 = getelementptr inbounds %struct.packet_command, ptr %7, i32 0, i32 5
  store i8 1, ptr %103, align 4
  store i8 8, ptr %93, align 1
  store i8 %95, ptr %96, align 1
  store i8 %97, ptr %98, align 1
  %104 = getelementptr inbounds %struct.cdrom_device_ops, ptr %92, i32 0, i32 12
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef %0, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %91, %90
  store ptr null, ptr %54, align 4
  %109 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15
  store i8 40, ptr %2, align 4
  store i8 %63, ptr %64, align 1
  store i8 %66, ptr %67, align 4
  store i8 %68, ptr %69, align 1
  store i8 1, ptr %57, align 4
  store i32 %17, ptr %72, align 4
  %110 = getelementptr inbounds %struct.cdrom_device_ops, ptr %109, i32 0, i32 12
  %111 = load ptr, ptr %110, align 4
  %112 = call i32 %111(ptr noundef %0, ptr noundef %2) #15
  br i1 %15, label %127, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %115 = getelementptr inbounds %struct.modesel_head, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %6, i8 0, i64 10, i1 false) #15
  %116 = getelementptr inbounds %struct.modesel_head, ptr %6, i32 0, i32 10
  %117 = getelementptr inbounds %struct.modesel_head, ptr %6, i32 0, i32 11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false) #15
  store i8 21, ptr %5, align 4
  %118 = getelementptr inbounds [12 x i8], ptr %5, i32 0, i32 1
  store i8 16, ptr %118, align 1
  %119 = getelementptr inbounds [12 x i8], ptr %5, i32 0, i32 4
  store i8 12, ptr %119, align 4
  %120 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 2
  store i32 12, ptr %120, align 4
  %121 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 1
  store ptr %6, ptr %121, align 4
  %122 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 5
  store i8 1, ptr %122, align 4
  store i8 8, ptr %115, align 1
  store i8 8, ptr %116, align 1
  store i8 0, ptr %117, align 1
  %123 = getelementptr inbounds %struct.cdrom_device_ops, ptr %114, i32 0, i32 12
  %124 = load ptr, ptr %123, align 4
  %125 = call i32 %124(ptr noundef %0, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #15
  %126 = or i32 %125, %112
  br label %127

127:                                              ; preds = %113, %108, %53
  %128 = phi i32 [ %126, %113 ], [ %112, %108 ], [ %76, %53 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %17, i32 -1090519040) #16, !srcloc !21
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load ptr, ptr %51, align 4
  %136 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #18, !srcloc !18
  %137 = and i32 %136, -13
  %138 = or i32 %137, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %139 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %135, i32 noundef %17) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi i32 [ %139, %134 ], [ %17, %130 ]
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 0, i32 -14
  br label %144

144:                                              ; preds = %140, %127, %91
  %145 = phi i32 [ %106, %91 ], [ %128, %127 ], [ %143, %140 ]
  %146 = load ptr, ptr %51, align 4
  call void @kfree(ptr noundef %146) #15
  br label %147

147:                                              ; preds = %144, %49, %34, %30
  %148 = phi i32 [ %145, %144 ], [ -22, %34 ], [ -12, %49 ], [ -14, %30 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  ret i32 %148
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_read_audio(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca %struct.cdrom_read_audio, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !16
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #16, !srcloc !22
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !17

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #15
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !18
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !17

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %14, %8 ], [ 16, %2 ]
  %18 = sub i32 16, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #15
  br label %176

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.cdrom_read_audio, ptr %4, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  switch i8 %22, label %176 [
    i8 2, label %23
    i8 1, label %37
  ]

23:                                               ; preds = %20
  %24 = load i8, ptr %4, align 4
  %25 = getelementptr inbounds %struct.cdrom_msf0, ptr %4, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds %struct.cdrom_msf0, ptr %4, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %24 to i32
  %30 = mul nuw nsw i32 %29, 60
  %31 = zext i8 %26 to i32
  %32 = add nuw nsw i32 %30, %31
  %33 = mul nuw nsw i32 %32, 75
  %34 = zext i8 %28 to i32
  %35 = add nsw i32 %34, -150
  %36 = add nsw i32 %35, %33
  br label %39

37:                                               ; preds = %20
  %38 = load i32, ptr %4, align 4
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i32 [ %36, %23 ], [ %38, %37 ]
  %41 = icmp slt i32 %40, 0
  %42 = getelementptr inbounds %struct.cdrom_read_audio, ptr %4, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 1
  %45 = select i1 %41, i1 true, i1 %44
  %46 = icmp sgt i32 %43, 75
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %176, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.cdrom_read_audio, ptr %4, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 13
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 2
  %56 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 14
  %57 = load ptr, ptr %55, align 4
  %58 = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.request_queue, ptr %59, i32 0, i32 32, i32 6
  %61 = load i32, ptr %60, align 4
  store i8 0, ptr %56, align 4
  %62 = icmp ugt i32 %43, 1
  br label %63

63:                                               ; preds = %92, %54
  %64 = phi i32 [ %52, %54 ], [ 1, %92 ]
  %65 = phi i32 [ %61, %54 ], [ %98, %92 ]
  %66 = shl i32 %65, 9
  %67 = udiv i32 %66, 2352
  br label %68

68:                                               ; preds = %83, %63
  %69 = phi i32 [ %87, %83 ], [ %64, %63 ]
  %70 = phi ptr [ %85, %83 ], [ %50, %63 ]
  %71 = phi i32 [ %86, %83 ], [ %40, %63 ]
  %72 = phi i32 [ %81, %83 ], [ %43, %63 ]
  %73 = icmp eq i32 %69, 1
  %74 = call i32 @llvm.smin.i32(i32 %72, i32 %67) #15
  %75 = select i1 %73, i32 1, i32 %74
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr inbounds %struct.cdrom_device_ops, ptr %76, i32 0, i32 13
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %0, ptr noundef %70, i32 noundef %71, i32 noundef %75, ptr noundef %56) #15
  switch i32 %79, label %176 [
    i32 0, label %80
    i32 -5, label %88
  ]

80:                                               ; preds = %68
  %81 = sub i32 %72, %75
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %176, label %83

83:                                               ; preds = %80
  %84 = mul i32 %75, 2352
  %85 = getelementptr i8, ptr %70, i32 %84
  %86 = add i32 %75, %71
  %87 = load i32, ptr %51, align 8
  br label %68

88:                                               ; preds = %68
  %89 = load i32, ptr %51, align 8
  %90 = icmp eq i32 %89, 2
  %91 = and i1 %62, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  store i32 1, ptr %51, align 8
  %94 = load ptr, ptr %55, align 4
  %95 = getelementptr inbounds %struct.gendisk, ptr %94, i32 0, i32 9
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.request_queue, ptr %96, i32 0, i32 32, i32 6
  %98 = load i32, ptr %97, align 4
  store i8 0, ptr %56, align 4
  br label %63

99:                                               ; preds = %88
  %100 = load i8, ptr %56, align 4
  switch i8 %100, label %176 [
    i8 4, label %101
    i8 11, label %101
  ]

101:                                              ; preds = %99, %99
  %102 = zext i8 %100 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %102) #14
  store i32 0, ptr %51, align 8
  br label %104

104:                                              ; preds = %101, %48
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  %105 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 14
  store i8 0, ptr %105, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false) #15
  %106 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  br label %107

107:                                              ; preds = %115, %104
  %108 = phi i32 [ %43, %104 ], [ %116, %115 ]
  %109 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %108, i32 2352) #15
  %110 = extractvalue { i32, i1 } %109, 1
  br i1 %110, label %115, label %111, !prof !13

111:                                              ; preds = %107
  %112 = extractvalue { i32, i1 } %109, 0
  %113 = call noalias align 64 ptr @__kmalloc(i32 noundef %112, i32 noundef 3264) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %107
  %116 = ashr i32 %108, 1
  %117 = icmp ult i32 %108, 2
  br i1 %117, label %174, label %107

118:                                              ; preds = %111
  store ptr %113, ptr %106, align 4
  %119 = icmp eq i32 %108, 0
  br i1 %119, label %174, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %121, align 4
  %122 = icmp sgt i32 %43, 0
  br i1 %122, label %123, label %171

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, ptr %3, i32 8
  %125 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  %126 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  %127 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 3
  %128 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  %129 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 5
  %130 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 6
  %131 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 7
  %132 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  br label %133

133:                                              ; preds = %166, %123
  %134 = phi i32 [ %108, %123 ], [ %138, %166 ]
  %135 = phi i32 [ %43, %123 ], [ %168, %166 ]
  %136 = phi i32 [ %40, %123 ], [ %169, %166 ]
  %137 = phi ptr [ %50, %123 ], [ %167, %166 ]
  %138 = call i32 @llvm.smin.i32(i32 %134, i32 %135) #15
  %139 = load ptr, ptr %0, align 8
  store i32 63488, ptr %124, align 4
  store i8 -66, ptr %3, align 4
  store i8 4, ptr %125, align 1
  %140 = lshr i32 %136, 24
  %141 = trunc i32 %140 to i8
  store i8 %141, ptr %126, align 2
  %142 = lshr i32 %136, 16
  %143 = trunc i32 %142 to i8
  store i8 %143, ptr %127, align 1
  %144 = lshr i32 %136, 8
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %128, align 4
  %146 = trunc i32 %136 to i8
  store i8 %146, ptr %129, align 1
  store i8 0, ptr %130, align 2
  store i8 0, ptr %131, align 1
  %147 = trunc i32 %138 to i8
  store i8 %147, ptr %124, align 4
  %148 = mul i32 %138, 2352
  store i32 %148, ptr %132, align 4
  %149 = getelementptr inbounds %struct.cdrom_device_ops, ptr %139, i32 0, i32 12
  %150 = load ptr, ptr %149, align 4
  %151 = call i32 %150(ptr noundef %0, ptr noundef nonnull %3) #15
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %133
  %154 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %137, i32 %148, i32 -1090519040) #16, !srcloc !21
  %155 = extractvalue { i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load ptr, ptr %106, align 4
  %159 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !18
  %160 = and i32 %159, -13
  %161 = or i32 %160, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %162 = call i32 @arm_copy_to_user(ptr noundef %137, ptr noundef %158, i32 noundef %148) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  br label %163

163:                                              ; preds = %157, %153
  %164 = phi i32 [ %162, %157 ], [ %148, %153 ]
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = getelementptr i8, ptr %137, i32 %148
  %168 = sub i32 %135, %138
  %169 = add i32 %138, %136
  %170 = icmp sgt i32 %168, 0
  br i1 %170, label %133, label %171

171:                                              ; preds = %166, %163, %133, %120
  %172 = phi i32 [ 0, %120 ], [ -14, %163 ], [ %151, %133 ], [ 0, %166 ]
  %173 = load ptr, ptr %106, align 4
  call void @kfree(ptr noundef %173) #15
  br label %174

174:                                              ; preds = %171, %118, %115
  %175 = phi i32 [ %172, %171 ], [ -12, %118 ], [ -12, %115 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %176

176:                                              ; preds = %174, %99, %80, %68, %39, %20, %16
  %177 = phi i32 [ -22, %20 ], [ -22, %39 ], [ -5, %99 ], [ %175, %174 ], [ -14, %16 ], [ 0, %80 ], [ %79, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i32 %177
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_subchannel(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca [32 x i8], align 1
  %5 = alloca %struct.cdrom_subchnl, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !16
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #16
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !17

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #15
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #18, !srcloc !18
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !17

17:                                               ; preds = %9, %2
  %18 = phi i32 [ %15, %9 ], [ 16, %2 ]
  %19 = sub i32 16, %18
  %20 = getelementptr i8, ptr %5, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #15
  br label %189

21:                                               ; preds = %9
  %22 = load i8, ptr %5, align 4
  %23 = add i8 %22, -1
  %24 = icmp ult i8 %23, 2
  br i1 %24, label %25, label %189

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %27 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %27, i8 0, i32 16, i1 false) #15, !annotation !16
  %28 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %28, i8 0, i32 40, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #15
  %29 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 16, ptr %30, align 4
  %31 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 700, ptr %32, align 4
  store i8 66, ptr %3, align 4
  %33 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 %22, ptr %33, align 1
  %34 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 2
  store i8 64, ptr %34, align 2
  %35 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 3
  store i8 1, ptr %35, align 1
  %36 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 16, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cdrom_device_ops, ptr %26, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %0, ptr noundef nonnull %3) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %119

41:                                               ; preds = %25
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr i8, ptr %42, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 1
  store i8 %44, ptr %45, align 1
  %46 = getelementptr i8, ptr %42, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = shl i8 %47, 4
  %51 = and i8 %49, 15
  %52 = or i8 %51, %50
  store i8 %52, ptr %48, align 2
  %53 = getelementptr i8, ptr %42, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 3
  store i8 %54, ptr %55, align 1
  %56 = getelementptr i8, ptr %42, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 4
  store i8 %57, ptr %58, align 4
  %59 = load i8, ptr %5, align 4
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %61, label %100

61:                                               ; preds = %41
  %62 = getelementptr i8, ptr %42, i32 8
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 %64, 24
  %66 = getelementptr i8, ptr %42, i32 9
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = or i32 %69, %65
  %71 = getelementptr i8, ptr %42, i32 10
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 8
  %75 = or i32 %70, %74
  %76 = getelementptr i8, ptr %42, i32 11
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 5
  store i32 %79, ptr %80, align 4
  %81 = getelementptr i8, ptr %42, i32 12
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 %83, 24
  %85 = getelementptr i8, ptr %42, i32 13
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 16
  %89 = or i32 %88, %84
  %90 = getelementptr i8, ptr %42, i32 14
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 8
  %94 = or i32 %89, %93
  %95 = getelementptr i8, ptr %42, i32 15
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %94, %97
  %99 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 6
  store i32 %98, ptr %99, align 4
  br label %120

100:                                              ; preds = %41
  %101 = getelementptr i8, ptr %42, i32 13
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 6
  store i8 %102, ptr %103, align 4
  %104 = getelementptr i8, ptr %42, i32 14
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr inbounds %struct.cdrom_msf0, ptr %103, i32 0, i32 1
  store i8 %105, ptr %106, align 1
  %107 = getelementptr i8, ptr %42, i32 15
  %108 = load i8, ptr %107, align 1
  %109 = getelementptr inbounds %struct.cdrom_msf0, ptr %103, i32 0, i32 2
  store i8 %108, ptr %109, align 2
  %110 = getelementptr i8, ptr %42, i32 9
  %111 = load i8, ptr %110, align 1
  %112 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 5
  store i8 %111, ptr %112, align 4
  %113 = getelementptr i8, ptr %42, i32 10
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr inbounds %struct.cdrom_msf0, ptr %112, i32 0, i32 1
  store i8 %114, ptr %115, align 1
  %116 = getelementptr i8, ptr %42, i32 11
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds %struct.cdrom_msf0, ptr %112, i32 0, i32 2
  store i8 %117, ptr %118, align 2
  br label %120

119:                                              ; preds = %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %189

120:                                              ; preds = %100, %61
  %121 = phi i8 [ %96, %61 ], [ %102, %100 ]
  %122 = phi i8 [ %91, %61 ], [ %105, %100 ]
  %123 = phi i8 [ %86, %61 ], [ %108, %100 ]
  %124 = phi i8 [ %72, %61 ], [ %114, %100 ]
  %125 = phi i8 [ %67, %61 ], [ %117, %100 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  %126 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 5
  %127 = icmp eq i8 %59, %22
  br i1 %127, label %182, label %128

128:                                              ; preds = %120
  %129 = icmp eq i8 %22, 1
  br i1 %129, label %130, label %149

130:                                              ; preds = %128
  %131 = zext i8 %125 to i32
  %132 = zext i8 %124 to i32
  %133 = add nsw i32 %132, -2
  %134 = load i8, ptr %126, align 4
  %135 = zext i8 %134 to i32
  %136 = mul nuw nsw i32 %135, 60
  %137 = add nsw i32 %133, %136
  %138 = mul nsw i32 %137, 75
  %139 = add nsw i32 %138, %131
  store i32 %139, ptr %126, align 4
  %140 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 6
  %141 = zext i8 %123 to i32
  %142 = zext i8 %122 to i32
  %143 = add nsw i32 %142, -2
  %144 = zext i8 %121 to i32
  %145 = mul nuw nsw i32 %144, 60
  %146 = add nsw i32 %143, %145
  %147 = mul nsw i32 %146, 75
  %148 = add nsw i32 %147, %141
  store i32 %148, ptr %140, align 4
  br label %181

149:                                              ; preds = %128
  %150 = load i32, ptr %126, align 4
  %151 = freeze i32 %150
  %152 = sdiv i32 %151, 75
  %153 = mul i32 %152, 75
  %154 = sub i32 %151, %153
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds %struct.cdrom_msf0, ptr %126, i32 0, i32 2
  store i8 %155, ptr %156, align 2
  %157 = add nsw i32 %152, 2
  %158 = freeze i32 %157
  %159 = sdiv i32 %158, 60
  %160 = mul i32 %159, 60
  %161 = sub i32 %158, %160
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds %struct.cdrom_msf0, ptr %126, i32 0, i32 1
  store i8 %162, ptr %163, align 1
  %164 = trunc i32 %159 to i8
  store i8 %164, ptr %126, align 4
  %165 = getelementptr inbounds %struct.cdrom_subchnl, ptr %5, i32 0, i32 6
  %166 = load i32, ptr %165, align 4
  %167 = freeze i32 %166
  %168 = sdiv i32 %167, 75
  %169 = mul i32 %168, 75
  %170 = sub i32 %167, %169
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.cdrom_msf0, ptr %165, i32 0, i32 2
  store i8 %171, ptr %172, align 2
  %173 = add nsw i32 %168, 2
  %174 = freeze i32 %173
  %175 = sdiv i32 %174, 60
  %176 = mul i32 %175, 60
  %177 = sub i32 %174, %176
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds %struct.cdrom_msf0, ptr %165, i32 0, i32 1
  store i8 %178, ptr %179, align 1
  %180 = trunc i32 %175 to i8
  store i8 %180, ptr %165, align 4
  br label %181

181:                                              ; preds = %149, %130
  store i8 %22, ptr %5, align 4
  br label %182

182:                                              ; preds = %181, %120
  %183 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #18, !srcloc !18
  %184 = and i32 %183, -13
  %185 = or i32 %184, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %185) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %186 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %183) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 0, i32 -14
  br label %189

189:                                              ; preds = %182, %119, %21, %17
  %190 = phi i32 [ -22, %21 ], [ %39, %119 ], [ -14, %17 ], [ %188, %182 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i32 %190
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_play_msf(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 {
  %4 = alloca %struct.cdrom_msf, align 1
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !16
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 6, i32 -1090519040) #16, !srcloc !22
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !17

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #15
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #18, !srcloc !18
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 6) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !17

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %15, %9 ], [ 6, %3 ]
  %19 = sub i32 6, %18
  %20 = getelementptr i8, ptr %4, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #15
  br label %43

21:                                               ; preds = %9
  store i8 71, ptr %2, align 4
  %22 = load i8, ptr %4, align 1
  %23 = getelementptr [12 x i8], ptr %2, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.cdrom_msf, ptr %4, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr [12 x i8], ptr %2, i32 0, i32 4
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cdrom_msf, ptr %4, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr [12 x i8], ptr %2, i32 0, i32 5
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.cdrom_msf, ptr %4, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr [12 x i8], ptr %2, i32 0, i32 6
  store i8 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.cdrom_msf, ptr %4, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.cdrom_msf, ptr %4, i32 0, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr [12 x i8], ptr %2, i32 0, i32 8
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.cdrom_device_ops, ptr %5, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %0, ptr noundef %2) #15
  br label %43

43:                                               ; preds = %21, %17
  %44 = phi i32 [ %42, %21 ], [ -14, %17 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #15
  ret i32 %44
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_play_blk(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 {
  %4 = alloca %struct.cdrom_blk, align 8
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !annotation !16
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #16, !srcloc !22
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !17

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #15
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #18, !srcloc !18
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !17

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %15, %9 ], [ 8, %3 ]
  %19 = sub i32 8, %18
  %20 = getelementptr i8, ptr %4, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #15
  br label %45

21:                                               ; preds = %9
  store i8 69, ptr %2, align 4
  %22 = load i32, ptr %4, align 8
  %23 = lshr i32 %22, 24
  %24 = trunc i32 %23 to i8
  %25 = getelementptr [12 x i8], ptr %2, i32 0, i32 2
  store i8 %24, ptr %25, align 2
  %26 = lshr i32 %22, 16
  %27 = trunc i32 %26 to i8
  %28 = getelementptr [12 x i8], ptr %2, i32 0, i32 3
  store i8 %27, ptr %28, align 1
  %29 = lshr i32 %22, 8
  %30 = trunc i32 %29 to i8
  %31 = getelementptr [12 x i8], ptr %2, i32 0, i32 4
  store i8 %30, ptr %31, align 4
  %32 = trunc i32 %22 to i8
  %33 = getelementptr [12 x i8], ptr %2, i32 0, i32 5
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.cdrom_blk, ptr %4, i32 0, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  %38 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %37, ptr %38, align 1
  %39 = trunc i16 %35 to i8
  %40 = getelementptr [12 x i8], ptr %2, i32 0, i32 8
  store i8 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cdrom_device_ops, ptr %5, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %0, ptr noundef %2) #15
  br label %45

45:                                               ; preds = %21, %17
  %46 = phi i32 [ %44, %21 ], [ -14, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %46
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_volume(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #13 {
  %5 = alloca %struct.cdrom_volctrl, align 4
  %6 = alloca [32 x i8], align 1
  %7 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !16
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #16
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !17

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !18
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !17

19:                                               ; preds = %11, %4
  %20 = phi i32 [ %17, %11 ], [ 4, %4 ]
  %21 = sub i32 4, %20
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #15
  br label %137

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 24, ptr %25, align 4
  %26 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %2, align 4
  %27 = getelementptr [12 x i8], ptr %2, i32 0, i32 2
  store i8 14, ptr %27, align 2
  %28 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  %29 = getelementptr [12 x i8], ptr %2, i32 0, i32 8
  store i8 24, ptr %29, align 4
  %30 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cdrom_device_ops, ptr %26, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, ptr noundef %2) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %137

35:                                               ; preds = %23
  %36 = getelementptr inbounds i8, ptr %6, i32 6
  %37 = load i16, ptr %36, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %39 = add i16 %38, 8
  %40 = zext i16 %39 to i32
  %41 = add nuw nsw i32 %40, 16
  %42 = icmp ugt i16 %39, 16
  br i1 %42, label %137, label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %25, align 4
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  store i32 %41, ptr %25, align 4
  %47 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %2, align 4
  store i8 14, ptr %27, align 2
  %48 = lshr i32 %41, 8
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %28, align 1
  %50 = trunc i32 %41 to i8
  store i8 %50, ptr %29, align 4
  store i8 2, ptr %30, align 4
  %51 = getelementptr inbounds %struct.cdrom_device_ops, ptr %47, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %0, ptr noundef %2) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %137

55:                                               ; preds = %46, %43
  %56 = getelementptr [32 x i8], ptr %6, i32 0, i32 %40
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 63
  %59 = icmp eq i8 %58, 14
  br i1 %59, label %60, label %137

60:                                               ; preds = %55
  %61 = add nuw nsw i32 %40, 1
  %62 = getelementptr [32 x i8], ptr %6, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = icmp ult i8 %63, 14
  br i1 %64, label %137, label %65

65:                                               ; preds = %60
  %66 = icmp eq i32 %3, 21267
  br i1 %66, label %67, label %89

67:                                               ; preds = %65
  %68 = add nuw nsw i32 %40, 9
  %69 = getelementptr [32 x i8], ptr %6, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  store i8 %70, ptr %5, align 4
  %71 = add nuw nsw i32 %40, 11
  %72 = getelementptr [32 x i8], ptr %6, i32 0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr inbounds %struct.cdrom_volctrl, ptr %5, i32 0, i32 1
  store i8 %73, ptr %74, align 1
  %75 = add nuw nsw i32 %40, 13
  %76 = getelementptr [32 x i8], ptr %6, i32 0, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.cdrom_volctrl, ptr %5, i32 0, i32 2
  store i8 %77, ptr %78, align 2
  %79 = add nuw nsw i32 %40, 15
  %80 = getelementptr [32 x i8], ptr %6, i32 0, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr inbounds %struct.cdrom_volctrl, ptr %5, i32 0, i32 3
  store i8 %81, ptr %82, align 1
  %83 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !18
  %84 = and i32 %83, -13
  %85 = or i32 %84, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %86 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 0, i32 -14
  br label %137

89:                                               ; preds = %65
  store ptr %7, ptr %24, align 4
  %90 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15
  store i8 90, ptr %2, align 4
  store i8 78, ptr %27, align 2
  %91 = load i32, ptr %25, align 4
  %92 = lshr i32 %91, 8
  %93 = trunc i32 %92 to i8
  store i8 %93, ptr %28, align 1
  %94 = trunc i32 %91 to i8
  store i8 %94, ptr %29, align 4
  store i8 2, ptr %30, align 4
  %95 = getelementptr inbounds %struct.cdrom_device_ops, ptr %90, i32 0, i32 12
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 %96(ptr noundef %0, ptr noundef %2) #15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %89
  %100 = load i8, ptr %5, align 4
  %101 = add nuw nsw i32 %40, 9
  %102 = getelementptr [32 x i8], ptr %7, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, %100
  %105 = getelementptr [32 x i8], ptr %6, i32 0, i32 %101
  store i8 %104, ptr %105, align 1
  %106 = getelementptr inbounds %struct.cdrom_volctrl, ptr %5, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = add nuw nsw i32 %40, 11
  %109 = getelementptr [32 x i8], ptr %7, i32 0, i32 %108
  %110 = load i8, ptr %109, align 1
  %111 = and i8 %110, %107
  %112 = getelementptr [32 x i8], ptr %6, i32 0, i32 %108
  store i8 %111, ptr %112, align 1
  %113 = getelementptr inbounds %struct.cdrom_volctrl, ptr %5, i32 0, i32 2
  %114 = load i8, ptr %113, align 2
  %115 = add nuw nsw i32 %40, 13
  %116 = getelementptr [32 x i8], ptr %7, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, %114
  %119 = getelementptr [32 x i8], ptr %6, i32 0, i32 %115
  store i8 %118, ptr %119, align 1
  %120 = getelementptr inbounds %struct.cdrom_volctrl, ptr %5, i32 0, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = add nuw nsw i32 %40, 15
  %123 = getelementptr [32 x i8], ptr %7, i32 0, i32 %122
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, %121
  %126 = getelementptr [32 x i8], ptr %6, i32 0, i32 %122
  store i8 %125, ptr %126, align 1
  %127 = getelementptr i8, ptr %56, i32 -8
  store ptr %127, ptr %24, align 4
  store i64 0, ptr %127, align 1
  %128 = load ptr, ptr %0, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #15
  store i8 85, ptr %2, align 4
  %129 = getelementptr [12 x i8], ptr %2, i32 0, i32 1
  store i8 16, ptr %129, align 1
  %130 = load i32, ptr %25, align 4
  %131 = lshr i32 %130, 8
  %132 = trunc i32 %131 to i8
  store i8 %132, ptr %28, align 1
  %133 = trunc i32 %130 to i8
  store i8 %133, ptr %29, align 4
  store i8 1, ptr %30, align 4
  %134 = getelementptr inbounds %struct.cdrom_device_ops, ptr %128, i32 0, i32 12
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 %135(ptr noundef %0, ptr noundef %2) #15
  br label %137

137:                                              ; preds = %99, %89, %67, %60, %55, %46, %35, %23, %19
  %138 = phi i32 [ %136, %99 ], [ %33, %23 ], [ -7, %35 ], [ %53, %46 ], [ -22, %60 ], [ -22, %55 ], [ %97, %89 ], [ -14, %19 ], [ %88, %67 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %138
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_start_stop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #13 {
  %4 = load ptr, ptr %0, align 8
  store i8 27, ptr %1, align 4
  %5 = getelementptr [12 x i8], ptr %1, i32 0, i32 1
  store i8 1, ptr %5, align 1
  %6 = icmp eq i32 %2, 21256
  %7 = zext i1 %6 to i8
  %8 = getelementptr [12 x i8], ptr %1, i32 0, i32 4
  store i8 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 5
  store i8 3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1) #15
  ret i32 %12
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_pause_resume(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #13 {
  %4 = load ptr, ptr %0, align 8
  store i8 75, ptr %1, align 4
  %5 = icmp eq i32 %2, 21250
  %6 = zext i1 %5 to i8
  %7 = getelementptr [12 x i8], ptr %1, i32 0, i32 8
  store i8 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.packet_command, ptr %1, i32 0, i32 5
  store i8 3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cdrom_device_ops, ptr %4, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #15
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_dvd_read_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 {
  %4 = alloca [8 x i8], align 8
  %5 = alloca [21 x i8], align 1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.cdrom_device_ops, ptr %6, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %8, 32768
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %267, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef 2056) #15
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %267

20:                                               ; preds = %15
  %21 = load i8, ptr %16, align 4
  switch i8 %21, label %265 [
    i8 0, label %22
    i8 1, label %134
    i8 2, label %159
    i8 3, label %185
    i8 4, label %218
  ]

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #15
  %23 = getelementptr inbounds %struct.dvd_physical, ptr %16, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ugt i8 %24, 3
  br i1 %26, label %132, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %5, i8 0, i32 21, i1 false) #15
  %29 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 21, ptr %30, align 4
  %31 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 700, ptr %32, align 4
  store i8 -83, ptr %2, align 4
  %33 = getelementptr [12 x i8], ptr %2, i32 0, i32 6
  store i8 %24, ptr %33, align 2
  %34 = load i8, ptr %16, align 4
  %35 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %34, ptr %35, align 1
  %36 = getelementptr [12 x i8], ptr %2, i32 0, i32 9
  store i8 21, ptr %36, align 1
  %37 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 6
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.cdrom_device_ops, ptr %28, i32 0, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 %39(ptr noundef %0, ptr noundef %2) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %132

42:                                               ; preds = %27
  %43 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 4
  %44 = getelementptr %struct.dvd_physical, ptr %16, i32 0, i32 3, i32 %25
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %44, i8 0, i32 20, i1 false) #15
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i24
  %47 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i24
  %50 = shl nuw nsw i24 %49, 8
  %51 = lshr i8 %48, 4
  %52 = zext i8 %51 to i24
  %53 = shl nuw nsw i24 %52, 12
  %54 = and i24 %50, 3840
  %55 = or i24 %54, %46
  %56 = or i24 %55, %53
  %57 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 15
  %60 = zext i8 %59 to i24
  %61 = shl nuw nsw i24 %60, 16
  %62 = or i24 %56, %61
  %63 = lshr i8 %58, 4
  %64 = and i8 %63, 1
  %65 = zext i8 %64 to i24
  %66 = shl nuw nsw i24 %65, 20
  %67 = or i24 %62, %66
  %68 = lshr i8 %58, 5
  %69 = and i8 %68, 3
  %70 = zext i8 %69 to i24
  %71 = shl nuw nsw i24 %70, 21
  %72 = or i24 %67, %71
  store i24 %72, ptr %44, align 4
  %73 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 7
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr %struct.dvd_physical, ptr %16, i32 0, i32 3, i32 %25, i32 1
  %76 = load i16, ptr %75, align 1
  %77 = and i16 %76, -512
  %78 = and i8 %74, -16
  %79 = zext i8 %78 to i16
  %80 = and i8 %74, 15
  %81 = zext i8 %80 to i16
  %82 = or i16 %77, %81
  %83 = or i16 %82, %79
  %84 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 9
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 10
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 8
  %92 = or i32 %91, %87
  %93 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 11
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %92, %95
  %97 = getelementptr %struct.dvd_physical, ptr %16, i32 0, i32 3, i32 %25, i32 3
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 13
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 14
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = or i32 %105, %101
  %107 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 15
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %106, %109
  %111 = getelementptr %struct.dvd_physical, ptr %16, i32 0, i32 3, i32 %25, i32 4
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 17
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 16
  %116 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 18
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or i32 %119, %115
  %121 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 19
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %120, %123
  %125 = getelementptr %struct.dvd_physical, ptr %16, i32 0, i32 3, i32 %25, i32 5
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds [21 x i8], ptr %5, i32 0, i32 20
  %127 = load i8, ptr %126, align 1
  %128 = lshr i8 %127, 7
  %129 = zext i8 %128 to i16
  %130 = shl nuw nsw i16 %129, 8
  %131 = or i16 %83, %130
  store i16 %131, ptr %75, align 1
  br label %132

132:                                              ; preds = %42, %27, %22
  %133 = phi i32 [ 0, %42 ], [ -22, %22 ], [ %40, %27 ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #15
  br label %249

134:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %135 = load ptr, ptr %0, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  store i64 0, ptr %4, align 8
  %136 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %4, ptr %136, align 4
  %137 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 8, ptr %137, align 4
  %138 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %138, align 4
  %139 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 700, ptr %139, align 4
  store i8 -83, ptr %2, align 4
  %140 = getelementptr inbounds %struct.dvd_copyright, ptr %16, i32 0, i32 1
  %141 = load i8, ptr %140, align 1
  %142 = getelementptr [12 x i8], ptr %2, i32 0, i32 6
  store i8 %141, ptr %142, align 2
  %143 = load i8, ptr %16, align 4
  %144 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %143, ptr %144, align 1
  %145 = getelementptr [12 x i8], ptr %2, i32 0, i32 8
  store i8 0, ptr %145, align 4
  %146 = getelementptr [12 x i8], ptr %2, i32 0, i32 9
  store i8 8, ptr %146, align 1
  %147 = getelementptr inbounds %struct.cdrom_device_ops, ptr %135, i32 0, i32 12
  %148 = load ptr, ptr %147, align 4
  %149 = call i32 %148(ptr noundef %0, ptr noundef %2) #15
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %134
  %152 = getelementptr inbounds [8 x i8], ptr %4, i32 0, i32 4
  %153 = load i8, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dvd_copyright, ptr %16, i32 0, i32 2
  store i8 %153, ptr %154, align 2
  %155 = getelementptr inbounds [8 x i8], ptr %4, i32 0, i32 5
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr inbounds %struct.dvd_copyright, ptr %16, i32 0, i32 3
  store i8 %156, ptr %157, align 1
  br label %158

158:                                              ; preds = %151, %134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %249

159:                                              ; preds = %20
  %160 = load ptr, ptr %0, align 8
  %161 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %162 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %161, i32 noundef 3264, i32 noundef 2052) #17
  %163 = icmp eq ptr %162, null
  br i1 %163, label %265, label %164

164:                                              ; preds = %159
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2052) %162, i8 0, i32 2052, i1 false) #15
  %165 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %162, ptr %165, align 4
  %166 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 2052, ptr %166, align 4
  %167 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %167, align 4
  %168 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 700, ptr %168, align 4
  store i8 -83, ptr %2, align 4
  %169 = load i8, ptr %16, align 4
  %170 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %169, ptr %170, align 1
  %171 = getelementptr [12 x i8], ptr %2, i32 0, i32 8
  store i8 8, ptr %171, align 4
  %172 = getelementptr [12 x i8], ptr %2, i32 0, i32 9
  store i8 4, ptr %172, align 1
  %173 = getelementptr inbounds %struct.dvd_disckey, ptr %16, i32 0, i32 1
  %174 = load i8, ptr %173, align 1
  %175 = shl i8 %174, 6
  %176 = getelementptr [12 x i8], ptr %2, i32 0, i32 10
  store i8 %175, ptr %176, align 2
  %177 = getelementptr inbounds %struct.cdrom_device_ops, ptr %160, i32 0, i32 12
  %178 = load ptr, ptr %177, align 4
  %179 = tail call i32 %178(ptr noundef %0, ptr noundef %2) #15
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %164
  %182 = getelementptr inbounds %struct.dvd_disckey, ptr %16, i32 0, i32 2
  %183 = getelementptr i8, ptr %162, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(2048) %182, ptr noundef align 4 dereferenceable(2048) %183, i32 2048, i1 false) #15
  br label %184

184:                                              ; preds = %181, %164
  tail call void @kfree(ptr noundef nonnull %162) #15
  br label %249

185:                                              ; preds = %20
  %186 = load ptr, ptr %0, align 8
  %187 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %188 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %187, i32 noundef 3264, i32 noundef 192) #17
  %189 = icmp eq ptr %188, null
  br i1 %189, label %265, label %190

190:                                              ; preds = %185
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %188, i8 0, i32 192, i1 false) #15
  %191 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %188, ptr %191, align 4
  %192 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 192, ptr %192, align 4
  %193 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %193, align 4
  %194 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 700, ptr %194, align 4
  store i8 -83, ptr %2, align 4
  %195 = load i8, ptr %16, align 4
  %196 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %195, ptr %196, align 1
  %197 = getelementptr [12 x i8], ptr %2, i32 0, i32 9
  store i8 -64, ptr %197, align 1
  %198 = getelementptr inbounds %struct.cdrom_device_ops, ptr %186, i32 0, i32 12
  %199 = load ptr, ptr %198, align 4
  %200 = tail call i32 %199(ptr noundef %0, ptr noundef %2) #15
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %190
  %203 = load i8, ptr %188, align 8
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 8
  %206 = getelementptr i8, ptr %188, i32 1
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %205, %208
  %210 = getelementptr inbounds %struct.dvd_bca, ptr %16, i32 0, i32 1
  store i32 %209, ptr %210, align 4
  %211 = add nsw i32 %209, -189
  %212 = icmp ult i32 %211, -177
  br i1 %212, label %216, label %213

213:                                              ; preds = %202
  %214 = getelementptr inbounds %struct.dvd_bca, ptr %16, i32 0, i32 2
  %215 = getelementptr i8, ptr %188, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %214, ptr align 4 %215, i32 %209, i1 false) #15
  br label %216

216:                                              ; preds = %213, %202, %190
  %217 = phi i32 [ %200, %190 ], [ 0, %213 ], [ -5, %202 ]
  tail call void @kfree(ptr noundef nonnull %188) #15
  br label %249

218:                                              ; preds = %20
  %219 = load ptr, ptr %0, align 8
  %220 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %221 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3264, i32 noundef 2052) #17
  %222 = icmp eq ptr %221, null
  br i1 %222, label %265, label %223

223:                                              ; preds = %218
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #15
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(2052) %221, i8 0, i32 2052, i1 false) #15
  %224 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 1
  store ptr %221, ptr %224, align 4
  %225 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 2
  store i32 2052, ptr %225, align 4
  %226 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 5
  store i8 2, ptr %226, align 4
  %227 = getelementptr inbounds %struct.packet_command, ptr %2, i32 0, i32 7
  store i32 700, ptr %227, align 4
  store i8 -83, ptr %2, align 4
  %228 = load i8, ptr %16, align 4
  %229 = getelementptr [12 x i8], ptr %2, i32 0, i32 7
  store i8 %228, ptr %229, align 1
  %230 = getelementptr [12 x i8], ptr %2, i32 0, i32 8
  store i8 8, ptr %230, align 4
  %231 = getelementptr [12 x i8], ptr %2, i32 0, i32 9
  store i8 4, ptr %231, align 1
  %232 = getelementptr inbounds %struct.cdrom_device_ops, ptr %219, i32 0, i32 12
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i32 %233(ptr noundef %0, ptr noundef %2) #15
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %223
  %237 = load i8, ptr %221, align 8
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 8
  %240 = getelementptr i8, ptr %221, i32 1
  %241 = load i8, ptr %240, align 1
  %242 = zext i8 %241 to i32
  %243 = or i32 %239, %242
  %244 = getelementptr inbounds %struct.dvd_manufact, ptr %16, i32 0, i32 2
  %245 = tail call i32 @llvm.umin.i32(i32 %243, i32 2048) #15
  store i32 %245, ptr %244, align 4
  %246 = getelementptr inbounds %struct.dvd_manufact, ptr %16, i32 0, i32 3
  %247 = getelementptr i8, ptr %221, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %246, ptr align 4 %247, i32 %245, i1 false) #15
  br label %248

248:                                              ; preds = %236, %223
  tail call void @kfree(ptr noundef nonnull %221) #15
  br label %249

249:                                              ; preds = %248, %216, %184, %158, %132
  %250 = phi i32 [ %149, %158 ], [ %133, %132 ], [ %179, %184 ], [ %217, %216 ], [ %234, %248 ]
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %249
  %253 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 2056, i32 -1090519040) #16, !srcloc !21
  %254 = extractvalue { i32, i32 } %253, 0
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = tail call ptr @llvm.thread.pointer() #15
  %258 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 3
  %259 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %258) #18, !srcloc !18
  %260 = and i32 %259, -13
  %261 = or i32 %260, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %261) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %262 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %16, i32 noundef 2056) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %259) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %263, i32 0, i32 -14
  br label %265

265:                                              ; preds = %256, %252, %249, %218, %185, %159, %20
  %266 = phi i32 [ %250, %249 ], [ -12, %218 ], [ -12, %185 ], [ -12, %159 ], [ -22, %20 ], [ -14, %252 ], [ %264, %256 ]
  call void @kfree(ptr noundef %16) #15
  br label %267

267:                                              ; preds = %265, %18, %3
  %268 = phi i32 [ %19, %18 ], [ %266, %265 ], [ -38, %3 ]
  ret i32 %268
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_dvd_auth(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = alloca [20 x i8], align 1
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca %struct.rpc_state_t, align 8
  %6 = alloca %union.dvd_authinfo, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !16
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.cdrom_device_ops, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %9, 32768
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %229, label %16

16:                                               ; preds = %2
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1090519040) #16
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !17

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #15
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #18, !srcloc !18
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !17

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %26, %20 ], [ 16, %16 ]
  %30 = sub i32 16, %29
  %31 = getelementptr i8, ptr %6, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #15
  br label %229

32:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #15
  %33 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false) #15
  %34 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  %36 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  %37 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 700, ptr %37, align 4
  %38 = load i8, ptr %6, align 4
  switch i8 %38, label %220 [
    i8 0, label %39
    i8 2, label %57
    i8 3, label %71
    i8 7, label %85
    i8 8, label %126
    i8 1, label %145
    i8 4, label %160
    i8 9, label %176
    i8 10, label %187
    i8 11, label %209
  ]

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dvd_lu_send_agid, ptr %6, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  store i8 -92, ptr %4, align 4
  %43 = shl i8 %42, 6
  %44 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %43, ptr %44, align 2
  store i32 8, ptr %35, align 4
  %45 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 8, ptr %45, align 1
  store i8 2, ptr %36, align 4
  %46 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %0, ptr noundef nonnull %4) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %220

50:                                               ; preds = %39
  %51 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 7
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 6
  %54 = load i8, ptr %41, align 1
  %55 = and i8 %54, -4
  %56 = or i8 %55, %53
  store i8 %56, ptr %41, align 1
  br label %222

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.dvd_send_key, ptr %6, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  store i8 -92, ptr %4, align 4
  %60 = shl i8 %59, 6
  %61 = or i8 %60, 2
  %62 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %61, ptr %62, align 2
  store i32 12, ptr %35, align 4
  %63 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 12, ptr %63, align 1
  store i8 2, ptr %36, align 4
  %64 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 %65(ptr noundef %0, ptr noundef nonnull %4) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %220

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.dvd_send_key, ptr %6, i32 0, i32 2
  %70 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(5) %69, ptr noundef align 1 dereferenceable(5) %70, i32 5, i1 false) #15
  br label %222

71:                                               ; preds = %32
  %72 = getelementptr inbounds %struct.dvd_lu_send_challenge, ptr %6, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  store i8 -92, ptr %4, align 4
  %74 = shl i8 %73, 6
  %75 = or i8 %74, 1
  %76 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %75, ptr %76, align 2
  store i32 16, ptr %35, align 4
  %77 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 16, ptr %77, align 1
  store i8 2, ptr %36, align 4
  %78 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef %0, ptr noundef nonnull %4) #15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %220

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.dvd_lu_send_challenge, ptr %6, i32 0, i32 2
  %84 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %83, ptr noundef align 1 dereferenceable(10) %84, i32 10, i1 false) #15
  br label %222

85:                                               ; preds = %32
  %86 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dvd_lu_send_title_key, ptr %6, i32 0, i32 1
  %88 = load i8, ptr %87, align 1
  store i8 -92, ptr %4, align 4
  %89 = shl i8 %88, 6
  %90 = or i8 %89, 4
  %91 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %90, ptr %91, align 2
  store i32 12, ptr %35, align 4
  %92 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 12, ptr %92, align 1
  store i8 2, ptr %36, align 4
  %93 = getelementptr inbounds %struct.dvd_lu_send_title_key, ptr %6, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 5
  store i8 %95, ptr %96, align 1
  %97 = lshr i32 %94, 8
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 4
  store i8 %98, ptr %99, align 4
  %100 = lshr i32 %94, 16
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 3
  store i8 %101, ptr %102, align 1
  %103 = lshr i32 %94, 24
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 2
  store i8 %104, ptr %105, align 2
  %106 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 %107(ptr noundef %0, ptr noundef nonnull %4) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %220

110:                                              ; preds = %85
  %111 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 4
  %112 = load i8, ptr %111, align 1
  %113 = lshr i8 %112, 7
  %114 = getelementptr inbounds %struct.dvd_lu_send_title_key, ptr %6, i32 0, i32 4
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, -16
  %117 = or i8 %116, %113
  %118 = lshr i8 %112, 5
  %119 = and i8 %118, 2
  %120 = or i8 %117, %119
  %121 = lshr i8 %112, 2
  %122 = and i8 %121, 12
  %123 = or i8 %120, %122
  store i8 %123, ptr %114, align 4
  %124 = getelementptr inbounds %struct.dvd_lu_send_title_key, ptr %6, i32 0, i32 2
  %125 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(5) %124, ptr noundef align 1 dereferenceable(5) %125, i32 5, i1 false) #15
  br label %222

126:                                              ; preds = %32
  %127 = getelementptr inbounds %struct.dvd_lu_send_asf, ptr %6, i32 0, i32 1
  %128 = load i8, ptr %127, align 1
  store i8 -92, ptr %4, align 4
  %129 = shl i8 %128, 6
  %130 = or i8 %129, 5
  %131 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %130, ptr %131, align 2
  store i32 8, ptr %35, align 4
  %132 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 8, ptr %132, align 1
  store i8 2, ptr %36, align 4
  %133 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %134 = load ptr, ptr %133, align 4
  %135 = call i32 %134(ptr noundef %0, ptr noundef nonnull %4) #15
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %220

137:                                              ; preds = %126
  %138 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 7
  %139 = load i8, ptr %138, align 1
  %140 = load i8, ptr %127, align 1
  %141 = shl i8 %139, 2
  %142 = and i8 %141, 4
  %143 = and i8 %140, -5
  %144 = or i8 %143, %142
  store i8 %144, ptr %127, align 1
  br label %222

145:                                              ; preds = %32
  %146 = getelementptr inbounds %struct.dvd_host_send_challenge, ptr %6, i32 0, i32 1
  %147 = load i8, ptr %146, align 1
  store i8 -93, ptr %4, align 4
  %148 = shl i8 %147, 6
  %149 = or i8 %148, 1
  %150 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %149, ptr %150, align 2
  store i32 16, ptr %35, align 4
  %151 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 16, ptr %151, align 1
  store i8 1, ptr %36, align 4
  %152 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 1
  store i8 14, ptr %152, align 1
  %153 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 4
  %154 = getelementptr inbounds %struct.dvd_host_send_challenge, ptr %6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %153, ptr noundef align 2 dereferenceable(10) %154, i32 10, i1 false) #15
  %155 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %156 = load ptr, ptr %155, align 4
  %157 = call i32 %156(ptr noundef %0, ptr noundef nonnull %4) #15
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %220

159:                                              ; preds = %145
  store i8 2, ptr %6, align 4
  br label %222

160:                                              ; preds = %32
  %161 = getelementptr inbounds %struct.dvd_send_key, ptr %6, i32 0, i32 1
  %162 = load i8, ptr %161, align 1
  store i8 -93, ptr %4, align 4
  %163 = shl i8 %162, 6
  %164 = or i8 %163, 3
  %165 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %164, ptr %165, align 2
  store i32 12, ptr %35, align 4
  %166 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 12, ptr %166, align 1
  store i8 1, ptr %36, align 4
  %167 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 1
  store i8 10, ptr %167, align 1
  %168 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 4
  %169 = getelementptr inbounds %struct.dvd_send_key, ptr %6, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %168, ptr noundef align 2 dereferenceable(5) %169, i32 5, i1 false) #15
  %170 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 %171(ptr noundef %0, ptr noundef nonnull %4) #15
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %160
  store i8 6, ptr %6, align 4
  br label %220

175:                                              ; preds = %160
  store i8 5, ptr %6, align 4
  br label %222

176:                                              ; preds = %32
  %177 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %177, align 4
  %178 = getelementptr inbounds %struct.dvd_lu_send_agid, ptr %6, i32 0, i32 1
  %179 = load i8, ptr %178, align 1
  store i8 -92, ptr %4, align 4
  %180 = shl i8 %179, 6
  %181 = or i8 %180, 63
  %182 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 %181, ptr %182, align 2
  store i8 2, ptr %36, align 4
  %183 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %184 = load ptr, ptr %183, align 4
  %185 = call i32 %184(ptr noundef %0, ptr noundef nonnull %4) #15
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %222, label %220

187:                                              ; preds = %32
  store i8 -92, ptr %4, align 4
  %188 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 8, ptr %188, align 2
  store i32 8, ptr %35, align 4
  %189 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 8, ptr %189, align 1
  store i8 2, ptr %36, align 4
  store i64 0, ptr %5, align 8
  store ptr %5, ptr %34, align 4
  %190 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %191 = load ptr, ptr %190, align 4
  %192 = call i32 %191(ptr noundef %0, ptr noundef nonnull %4) #15
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.rpc_state_t, ptr %5, i32 0, i32 3
  %196 = load i8, ptr %195, align 4
  %197 = lshr i8 %196, 6
  %198 = lshr i8 %196, 1
  %199 = and i8 %198, 28
  %200 = shl i8 %196, 5
  %201 = or i8 %197, %199
  %202 = or i8 %201, %200
  store i8 %202, ptr %6, align 4
  %203 = getelementptr inbounds %struct.rpc_state_t, ptr %5, i32 0, i32 4
  %204 = load i8, ptr %203, align 1
  %205 = getelementptr inbounds %struct.dvd_lu_send_rpcstate, ptr %6, i32 0, i32 1
  store i8 %204, ptr %205, align 1
  %206 = getelementptr inbounds %struct.rpc_state_t, ptr %5, i32 0, i32 5
  %207 = load i8, ptr %206, align 2
  %208 = getelementptr inbounds %struct.dvd_lu_send_rpcstate, ptr %6, i32 0, i32 2
  store i8 %207, ptr %208, align 2
  br label %222

209:                                              ; preds = %32
  store i8 -93, ptr %4, align 4
  %210 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 10
  store i8 6, ptr %210, align 2
  store i32 8, ptr %35, align 4
  %211 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 9
  store i8 8, ptr %211, align 1
  store i8 1, ptr %36, align 4
  %212 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 1
  store i8 6, ptr %212, align 1
  %213 = getelementptr inbounds %struct.dvd_host_send_rpcstate, ptr %6, i32 0, i32 1
  %214 = load i8, ptr %213, align 1
  %215 = getelementptr inbounds [20 x i8], ptr %3, i32 0, i32 4
  store i8 %214, ptr %215, align 1
  %216 = getelementptr inbounds %struct.cdrom_device_ops, ptr %33, i32 0, i32 12
  %217 = load ptr, ptr %216, align 4
  %218 = call i32 %217(ptr noundef %0, ptr noundef nonnull %4) #15
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %209, %187, %176, %174, %145, %126, %85, %71, %57, %39, %32
  %221 = phi i32 [ -25, %32 ], [ %218, %209 ], [ %192, %187 ], [ %185, %176 ], [ %157, %145 ], [ %135, %126 ], [ %108, %85 ], [ %80, %71 ], [ %66, %57 ], [ %48, %39 ], [ %172, %174 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %229

222:                                              ; preds = %209, %194, %176, %175, %159, %137, %110, %82, %68, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %223 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #18, !srcloc !18
  %224 = and i32 %223, -13
  %225 = or i32 %224, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %225) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %226 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 16) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, i32 0, i32 -14
  br label %229

229:                                              ; preds = %222, %220, %28, %2
  %230 = phi i32 [ -38, %2 ], [ %221, %220 ], [ -14, %28 ], [ %228, %222 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i32 %230
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_next_writable(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = alloca %struct.packet_command, align 4
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca %struct.packet_command, align 4
  %6 = alloca %struct.disc_information, align 4
  %7 = alloca %struct.track_information, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false) #15, !annotation !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false) #15, !annotation !16
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_ops, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %11, 4096
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %131, label %18

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i64 44, i1 false) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false) #15
  %19 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 1
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 2
  %21 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 5
  store i8 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 7
  store i32 700, ptr %22, align 4
  store i8 81, ptr %5, align 4
  store i32 2, ptr %20, align 4
  %23 = getelementptr inbounds [12 x i8], ptr %5, i32 0, i32 8
  store i8 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.packet_command, ptr %5, i32 0, i32 6
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cdrom_device_ops, ptr %9, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, ptr noundef nonnull %5) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load i16, ptr %6, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30) #15
  %32 = call i16 @llvm.umin.i16(i16 %31, i16 34) #15
  %33 = add nuw nsw i16 %32, 2
  %34 = zext i16 %33 to i32
  store i32 %34, ptr %20, align 4
  %35 = trunc i16 %33 to i8
  store i8 %35, ptr %23, align 4
  %36 = load ptr, ptr %25, align 4
  %37 = call i32 %36(ptr noundef %0, ptr noundef nonnull %5) #15
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %34, i32 %37
  br label %40

40:                                               ; preds = %29, %18
  %41 = phi i32 [ %27, %18 ], [ %39, %29 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #15
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %131, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.disc_information, ptr %6, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = shl nuw i16 %46, 8
  %48 = getelementptr inbounds %struct.disc_information, ptr %6, i32 0, i32 5
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i16
  %51 = or i16 %47, %50
  %52 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false) #15
  store i64 0, ptr %7, align 8
  %53 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 1
  store ptr %7, ptr %53, align 4
  %54 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 2
  store i32 8, ptr %54, align 4
  %55 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 5
  store i8 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 7
  store i32 700, ptr %56, align 4
  store i8 82, ptr %4, align 4
  %57 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 1
  store i8 1, ptr %57, align 1
  %58 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 4
  store i8 %45, ptr %58, align 4
  %59 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 5
  store i8 %49, ptr %59, align 1
  %60 = getelementptr inbounds [12 x i8], ptr %4, i32 0, i32 8
  store i8 8, ptr %60, align 4
  %61 = getelementptr inbounds %struct.packet_command, ptr %4, i32 0, i32 6
  store i32 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.cdrom_device_ops, ptr %52, i32 0, i32 12
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %0, ptr noundef nonnull %4) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %43
  %67 = load i16, ptr %7, align 8
  %68 = call i16 @llvm.bswap.i16(i16 %67) #15
  %69 = call i16 @llvm.umin.i16(i16 %68, i16 30) #15
  %70 = add nuw nsw i16 %69, 2
  %71 = zext i16 %70 to i32
  store i32 %71, ptr %54, align 4
  %72 = trunc i16 %70 to i8
  store i8 %72, ptr %60, align 4
  %73 = load ptr, ptr %62, align 4
  %74 = call i32 %73(ptr noundef %0, ptr noundef nonnull %4) #15
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 %71, i32 %74
  br label %77

77:                                               ; preds = %66, %43
  %78 = phi i32 [ %64, %43 ], [ %76, %66 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %131, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.track_information, ptr %7, i32 0, i32 4
  %82 = load i24, ptr %81, align 1
  %83 = and i24 %82, 16384
  %84 = icmp eq i24 %83, 0
  br i1 %84, label %120, label %85

85:                                               ; preds = %80
  %86 = icmp eq i16 %51, 1
  br i1 %86, label %131, label %87

87:                                               ; preds = %85
  %88 = add i16 %51, -1
  %89 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false) #15
  store i64 0, ptr %7, align 8
  %90 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 1
  store ptr %7, ptr %90, align 4
  %91 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 2
  store i32 8, ptr %91, align 4
  %92 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 5
  store i8 2, ptr %92, align 4
  %93 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 7
  store i32 700, ptr %93, align 4
  store i8 82, ptr %3, align 4
  %94 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 1
  store i8 1, ptr %94, align 1
  %95 = lshr i16 %88, 8
  %96 = trunc i16 %95 to i8
  %97 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 4
  store i8 %96, ptr %97, align 4
  %98 = trunc i16 %88 to i8
  %99 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 5
  store i8 %98, ptr %99, align 1
  %100 = getelementptr inbounds [12 x i8], ptr %3, i32 0, i32 8
  store i8 8, ptr %100, align 4
  %101 = getelementptr inbounds %struct.packet_command, ptr %3, i32 0, i32 6
  store i32 1, ptr %101, align 4
  %102 = getelementptr inbounds %struct.cdrom_device_ops, ptr %89, i32 0, i32 12
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %0, ptr noundef nonnull %3) #15
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %87
  %107 = load i16, ptr %7, align 8
  %108 = call i16 @llvm.bswap.i16(i16 %107) #15
  %109 = call i16 @llvm.umin.i16(i16 %108, i16 30) #15
  %110 = add nuw nsw i16 %109, 2
  %111 = zext i16 %110 to i32
  store i32 %111, ptr %91, align 4
  %112 = trunc i16 %110 to i8
  store i8 %112, ptr %100, align 4
  %113 = load ptr, ptr %102, align 4
  %114 = call i32 %113(ptr noundef %0, ptr noundef nonnull %3) #15
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  br label %120

117:                                              ; preds = %106, %87
  %118 = phi i32 [ %104, %87 ], [ %114, %106 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #15
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %117, %116, %80
  %121 = phi i32 [ %118, %117 ], [ %78, %80 ], [ %111, %116 ]
  %122 = load i24, ptr %81, align 1
  %123 = and i24 %122, 65536
  %124 = icmp ne i24 %123, 0
  %125 = icmp ugt i32 %121, 15
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.track_information, ptr %7, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129) #15
  br label %138

131:                                              ; preds = %120, %117, %85, %77, %40, %2
  %132 = call i32 @cdrom_get_last_written(ptr noundef %0, ptr noundef nonnull %8) #15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, ptr %8, align 4
  %136 = add i32 %135, 7
  br label %138

137:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  br label %152

138:                                              ; preds = %134, %127
  %139 = phi i32 [ %130, %127 ], [ %136, %134 ]
  store i32 %139, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  %140 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #16, !srcloc !21
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = tail call ptr @llvm.thread.pointer() #15
  %145 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %146 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %145) #18, !srcloc !18
  %147 = and i32 %146, -13
  %148 = or i32 %147, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %149 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #15, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, i32 0, i32 -14
  br label %152

152:                                              ; preds = %143, %138, %137
  %153 = phi i32 [ %132, %137 ], [ -14, %138 ], [ %151, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  ret i32 %153
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_ioctl_cdrom_last_written(ptr noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %4 = call i32 @cdrom_get_last_written(ptr noundef %0, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #18, !srcloc !18
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %7, i32 -1090519041) #15, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !20
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %13, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_for_audio_disc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.tracktype, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !16
  %4 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %50, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cdrom_device_ops, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, i32 noundef 2147483647) #15
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.cdrom_device_ops, ptr %16, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %18, 1
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %15
  %26 = load i32, ptr %4, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.cdrom_device_ops, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef 0) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load ptr, ptr %9, align 4
  %36 = tail call i32 %35(ptr noundef %0, i32 noundef 2147483647) #15
  %37 = add i32 %36, -1
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = icmp eq i32 %36, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %39, %12, %8
  call fastcc void @cdrom_count_tracks(ptr noundef %0, ptr noundef nonnull %3)
  %42 = getelementptr inbounds %struct.tracktype, ptr %3, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tracktype, ptr %3, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 -124, i32 0
  br label %50

50:                                               ; preds = %45, %41, %39, %34, %29, %25, %15, %2
  %51 = phi i32 [ 0, %2 ], [ %43, %41 ], [ %49, %45 ], [ -123, %15 ], [ -123, %25 ], [ -123, %29 ], [ -123, %34 ], [ -5, %39 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdrom_sysctl_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load i64, ptr %4, align 8
  %10 = icmp eq i64 %9, 0
  %11 = icmp ne i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %5
  store i32 0, ptr %3, align 4
  br label %615

14:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(49) @cdrom_sysctl_settings, ptr noundef nonnull align 1 dereferenceable(49) @.str.37, i32 49, i1 false)
  %15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 0, i32 48), i32 noundef 952, ptr noundef nonnull @.str.38) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %613, label %17

17:                                               ; preds = %14
  %18 = add i32 %15, 48
  %19 = load ptr, ptr @cdrom_list, align 4
  %20 = icmp eq ptr %19, @cdrom_list
  br i1 %20, label %33, label %21

21:                                               ; preds = %29, %17
  %22 = phi i32 [ %30, %29 ], [ %18, %17 ]
  %23 = phi ptr [ %31, %29 ], [ %19, %17 ]
  %24 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %22
  %25 = sub i32 1000, %22
  %26 = getelementptr i8, ptr %23, i32 44
  %27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.60, ptr noundef %26) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %613, label %29

29:                                               ; preds = %21
  %30 = add i32 %27, %22
  %31 = load ptr, ptr %23, align 4
  %32 = icmp eq ptr %31, @cdrom_list
  br i1 %32, label %33, label %21

33:                                               ; preds = %29, %17
  %34 = phi i32 [ %18, %17 ], [ %30, %29 ]
  %35 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %34
  %36 = sub i32 1000, %34
  %37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %35, i32 noundef %36, ptr noundef nonnull @.str.39) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %613, label %39

39:                                               ; preds = %33
  %40 = add i32 %37, %34
  %41 = load ptr, ptr @cdrom_list, align 4
  %42 = icmp eq ptr %41, @cdrom_list
  br i1 %42, label %56, label %43

43:                                               ; preds = %52, %39
  %44 = phi i32 [ %53, %52 ], [ %40, %39 ]
  %45 = phi ptr [ %54, %52 ], [ %41, %39 ]
  %46 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %44
  %47 = sub i32 1000, %44
  %48 = getelementptr i8, ptr %45, i32 20
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %46, i32 noundef %47, ptr noundef nonnull @.str.61, i32 noundef %49) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %613, label %52

52:                                               ; preds = %43
  %53 = add i32 %50, %44
  %54 = load ptr, ptr %45, align 4
  %55 = icmp eq ptr %54, @cdrom_list
  br i1 %55, label %56, label %43

56:                                               ; preds = %52, %39
  %57 = phi i32 [ %40, %39 ], [ %53, %52 ]
  %58 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %57
  %59 = sub i32 1000, %57
  %60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %58, i32 noundef %59, ptr noundef nonnull @.str.40) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %613, label %62

62:                                               ; preds = %56
  %63 = add i32 %60, %57
  %64 = load ptr, ptr @cdrom_list, align 4
  %65 = icmp eq ptr %64, @cdrom_list
  br i1 %65, label %79, label %66

66:                                               ; preds = %75, %62
  %67 = phi i32 [ %76, %75 ], [ %63, %62 ]
  %68 = phi ptr [ %77, %75 ], [ %64, %62 ]
  %69 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %67
  %70 = sub i32 1000, %67
  %71 = getelementptr i8, ptr %68, i32 24
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %69, i32 noundef %70, ptr noundef nonnull @.str.61, i32 noundef %72) #15
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %613, label %75

75:                                               ; preds = %66
  %76 = add i32 %73, %67
  %77 = load ptr, ptr %68, align 4
  %78 = icmp eq ptr %77, @cdrom_list
  br i1 %78, label %79, label %66

79:                                               ; preds = %75, %62
  %80 = phi i32 [ %63, %62 ], [ %76, %75 ]
  %81 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %80
  %82 = sub i32 1000, %80
  %83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %81, i32 noundef %82, ptr noundef nonnull @.str.41) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %613, label %85

85:                                               ; preds = %79
  %86 = add i32 %83, %80
  %87 = load ptr, ptr @cdrom_list, align 4
  %88 = icmp eq ptr %87, @cdrom_list
  br i1 %88, label %109, label %89

89:                                               ; preds = %105, %85
  %90 = phi i32 [ %106, %105 ], [ %86, %85 ]
  %91 = phi ptr [ %107, %105 ], [ %87, %85 ]
  %92 = getelementptr i8, ptr %91, i32 -4
  %93 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %90
  %94 = sub i32 1000, %90
  %95 = load ptr, ptr %92, align 8
  %96 = getelementptr inbounds %struct.cdrom_device_ops, ptr %95, i32 0, i32 14
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %91, i32 16
  %99 = load i32, ptr %98, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %97, 1
  %102 = and i32 %101, %100
  %103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %93, i32 noundef %94, ptr noundef nonnull @.str.61, i32 noundef %102) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %613, label %105

105:                                              ; preds = %89
  %106 = add i32 %103, %90
  %107 = load ptr, ptr %91, align 4
  %108 = icmp eq ptr %107, @cdrom_list
  br i1 %108, label %109, label %89

109:                                              ; preds = %105, %85
  %110 = phi i32 [ %86, %85 ], [ %106, %105 ]
  %111 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %110
  %112 = sub i32 1000, %110
  %113 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %111, i32 noundef %112, ptr noundef nonnull @.str.42) #15
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %613, label %115

115:                                              ; preds = %109
  %116 = add i32 %113, %110
  %117 = load ptr, ptr @cdrom_list, align 4
  %118 = icmp eq ptr %117, @cdrom_list
  br i1 %118, label %140, label %119

119:                                              ; preds = %136, %115
  %120 = phi i32 [ %137, %136 ], [ %116, %115 ]
  %121 = phi ptr [ %138, %136 ], [ %117, %115 ]
  %122 = getelementptr i8, ptr %121, i32 -4
  %123 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %120
  %124 = sub i32 1000, %120
  %125 = load ptr, ptr %122, align 8
  %126 = getelementptr inbounds %struct.cdrom_device_ops, ptr %125, i32 0, i32 14
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %121, i32 16
  %129 = load i32, ptr %128, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %127, 2
  %132 = and i32 %131, %130
  %133 = lshr exact i32 %132, 1
  %134 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %123, i32 noundef %124, ptr noundef nonnull @.str.61, i32 noundef %133) #15
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %613, label %136

136:                                              ; preds = %119
  %137 = add i32 %134, %120
  %138 = load ptr, ptr %121, align 4
  %139 = icmp eq ptr %138, @cdrom_list
  br i1 %139, label %140, label %119

140:                                              ; preds = %136, %115
  %141 = phi i32 [ %116, %115 ], [ %137, %136 ]
  %142 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %141
  %143 = sub i32 1000, %141
  %144 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %142, i32 noundef %143, ptr noundef nonnull @.str.43) #15
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %613, label %146

146:                                              ; preds = %140
  %147 = add i32 %144, %141
  %148 = load ptr, ptr @cdrom_list, align 4
  %149 = icmp eq ptr %148, @cdrom_list
  br i1 %149, label %171, label %150

150:                                              ; preds = %167, %146
  %151 = phi i32 [ %168, %167 ], [ %147, %146 ]
  %152 = phi ptr [ %169, %167 ], [ %148, %146 ]
  %153 = getelementptr i8, ptr %152, i32 -4
  %154 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %151
  %155 = sub i32 1000, %151
  %156 = load ptr, ptr %153, align 8
  %157 = getelementptr inbounds %struct.cdrom_device_ops, ptr %156, i32 0, i32 14
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %152, i32 16
  %160 = load i32, ptr %159, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %158, 4
  %163 = and i32 %162, %161
  %164 = lshr exact i32 %163, 2
  %165 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %154, i32 noundef %155, ptr noundef nonnull @.str.61, i32 noundef %164) #15
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %613, label %167

167:                                              ; preds = %150
  %168 = add i32 %165, %151
  %169 = load ptr, ptr %152, align 4
  %170 = icmp eq ptr %169, @cdrom_list
  br i1 %170, label %171, label %150

171:                                              ; preds = %167, %146
  %172 = phi i32 [ %147, %146 ], [ %168, %167 ]
  %173 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %172
  %174 = sub i32 1000, %172
  %175 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %173, i32 noundef %174, ptr noundef nonnull @.str.44) #15
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %613, label %177

177:                                              ; preds = %171
  %178 = add i32 %175, %172
  %179 = load ptr, ptr @cdrom_list, align 4
  %180 = icmp eq ptr %179, @cdrom_list
  br i1 %180, label %202, label %181

181:                                              ; preds = %198, %177
  %182 = phi i32 [ %199, %198 ], [ %178, %177 ]
  %183 = phi ptr [ %200, %198 ], [ %179, %177 ]
  %184 = getelementptr i8, ptr %183, i32 -4
  %185 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %182
  %186 = sub i32 1000, %182
  %187 = load ptr, ptr %184, align 8
  %188 = getelementptr inbounds %struct.cdrom_device_ops, ptr %187, i32 0, i32 14
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr i8, ptr %183, i32 16
  %191 = load i32, ptr %190, align 4
  %192 = xor i32 %191, -1
  %193 = and i32 %189, 8
  %194 = and i32 %193, %192
  %195 = lshr exact i32 %194, 3
  %196 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %185, i32 noundef %186, ptr noundef nonnull @.str.61, i32 noundef %195) #15
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %613, label %198

198:                                              ; preds = %181
  %199 = add i32 %196, %182
  %200 = load ptr, ptr %183, align 4
  %201 = icmp eq ptr %200, @cdrom_list
  br i1 %201, label %202, label %181

202:                                              ; preds = %198, %177
  %203 = phi i32 [ %178, %177 ], [ %199, %198 ]
  %204 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %203
  %205 = sub i32 1000, %203
  %206 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %204, i32 noundef %205, ptr noundef nonnull @.str.45) #15
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %613, label %208

208:                                              ; preds = %202
  %209 = add i32 %206, %203
  %210 = load ptr, ptr @cdrom_list, align 4
  %211 = icmp eq ptr %210, @cdrom_list
  br i1 %211, label %233, label %212

212:                                              ; preds = %229, %208
  %213 = phi i32 [ %230, %229 ], [ %209, %208 ]
  %214 = phi ptr [ %231, %229 ], [ %210, %208 ]
  %215 = getelementptr i8, ptr %214, i32 -4
  %216 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %213
  %217 = sub i32 1000, %213
  %218 = load ptr, ptr %215, align 8
  %219 = getelementptr inbounds %struct.cdrom_device_ops, ptr %218, i32 0, i32 14
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr i8, ptr %214, i32 16
  %222 = load i32, ptr %221, align 4
  %223 = xor i32 %222, -1
  %224 = and i32 %220, 16
  %225 = and i32 %224, %223
  %226 = lshr exact i32 %225, 4
  %227 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %216, i32 noundef %217, ptr noundef nonnull @.str.61, i32 noundef %226) #15
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %613, label %229

229:                                              ; preds = %212
  %230 = add i32 %227, %213
  %231 = load ptr, ptr %214, align 4
  %232 = icmp eq ptr %231, @cdrom_list
  br i1 %232, label %233, label %212

233:                                              ; preds = %229, %208
  %234 = phi i32 [ %209, %208 ], [ %230, %229 ]
  %235 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %234
  %236 = sub i32 1000, %234
  %237 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %235, i32 noundef %236, ptr noundef nonnull @.str.46) #15
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %613, label %239

239:                                              ; preds = %233
  %240 = add i32 %237, %234
  %241 = load ptr, ptr @cdrom_list, align 4
  %242 = icmp eq ptr %241, @cdrom_list
  br i1 %242, label %264, label %243

243:                                              ; preds = %260, %239
  %244 = phi i32 [ %261, %260 ], [ %240, %239 ]
  %245 = phi ptr [ %262, %260 ], [ %241, %239 ]
  %246 = getelementptr i8, ptr %245, i32 -4
  %247 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %244
  %248 = sub i32 1000, %244
  %249 = load ptr, ptr %246, align 8
  %250 = getelementptr inbounds %struct.cdrom_device_ops, ptr %249, i32 0, i32 14
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr i8, ptr %245, i32 16
  %253 = load i32, ptr %252, align 4
  %254 = xor i32 %253, -1
  %255 = and i32 %251, 32
  %256 = and i32 %255, %254
  %257 = lshr exact i32 %256, 5
  %258 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %247, i32 noundef %248, ptr noundef nonnull @.str.61, i32 noundef %257) #15
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %613, label %260

260:                                              ; preds = %243
  %261 = add i32 %258, %244
  %262 = load ptr, ptr %245, align 4
  %263 = icmp eq ptr %262, @cdrom_list
  br i1 %263, label %264, label %243

264:                                              ; preds = %260, %239
  %265 = phi i32 [ %240, %239 ], [ %261, %260 ]
  %266 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %265
  %267 = sub i32 1000, %265
  %268 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %266, i32 noundef %267, ptr noundef nonnull @.str.47) #15
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %613, label %270

270:                                              ; preds = %264
  %271 = add i32 %268, %265
  %272 = load ptr, ptr @cdrom_list, align 4
  %273 = icmp eq ptr %272, @cdrom_list
  br i1 %273, label %295, label %274

274:                                              ; preds = %291, %270
  %275 = phi i32 [ %292, %291 ], [ %271, %270 ]
  %276 = phi ptr [ %293, %291 ], [ %272, %270 ]
  %277 = getelementptr i8, ptr %276, i32 -4
  %278 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %275
  %279 = sub i32 1000, %275
  %280 = load ptr, ptr %277, align 8
  %281 = getelementptr inbounds %struct.cdrom_device_ops, ptr %280, i32 0, i32 14
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr i8, ptr %276, i32 16
  %284 = load i32, ptr %283, align 4
  %285 = xor i32 %284, -1
  %286 = and i32 %282, 64
  %287 = and i32 %286, %285
  %288 = lshr exact i32 %287, 6
  %289 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %278, i32 noundef %279, ptr noundef nonnull @.str.61, i32 noundef %288) #15
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %613, label %291

291:                                              ; preds = %274
  %292 = add i32 %289, %275
  %293 = load ptr, ptr %276, align 4
  %294 = icmp eq ptr %293, @cdrom_list
  br i1 %294, label %295, label %274

295:                                              ; preds = %291, %270
  %296 = phi i32 [ %271, %270 ], [ %292, %291 ]
  %297 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %296
  %298 = sub i32 1000, %296
  %299 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %297, i32 noundef %298, ptr noundef nonnull @.str.48) #15
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %613, label %301

301:                                              ; preds = %295
  %302 = add i32 %299, %296
  %303 = load ptr, ptr @cdrom_list, align 4
  %304 = icmp eq ptr %303, @cdrom_list
  br i1 %304, label %326, label %305

305:                                              ; preds = %322, %301
  %306 = phi i32 [ %323, %322 ], [ %302, %301 ]
  %307 = phi ptr [ %324, %322 ], [ %303, %301 ]
  %308 = getelementptr i8, ptr %307, i32 -4
  %309 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %306
  %310 = sub i32 1000, %306
  %311 = load ptr, ptr %308, align 8
  %312 = getelementptr inbounds %struct.cdrom_device_ops, ptr %311, i32 0, i32 14
  %313 = load i32, ptr %312, align 4
  %314 = getelementptr i8, ptr %307, i32 16
  %315 = load i32, ptr %314, align 4
  %316 = xor i32 %315, -1
  %317 = and i32 %313, 128
  %318 = and i32 %317, %316
  %319 = lshr exact i32 %318, 7
  %320 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %309, i32 noundef %310, ptr noundef nonnull @.str.61, i32 noundef %319) #15
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %613, label %322

322:                                              ; preds = %305
  %323 = add i32 %320, %306
  %324 = load ptr, ptr %307, align 4
  %325 = icmp eq ptr %324, @cdrom_list
  br i1 %325, label %326, label %305

326:                                              ; preds = %322, %301
  %327 = phi i32 [ %302, %301 ], [ %323, %322 ]
  %328 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %327
  %329 = sub i32 1000, %327
  %330 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %328, i32 noundef %329, ptr noundef nonnull @.str.49) #15
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %613, label %332

332:                                              ; preds = %326
  %333 = add i32 %330, %327
  %334 = load ptr, ptr @cdrom_list, align 4
  %335 = icmp eq ptr %334, @cdrom_list
  br i1 %335, label %357, label %336

336:                                              ; preds = %353, %332
  %337 = phi i32 [ %354, %353 ], [ %333, %332 ]
  %338 = phi ptr [ %355, %353 ], [ %334, %332 ]
  %339 = getelementptr i8, ptr %338, i32 -4
  %340 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %337
  %341 = sub i32 1000, %337
  %342 = load ptr, ptr %339, align 8
  %343 = getelementptr inbounds %struct.cdrom_device_ops, ptr %342, i32 0, i32 14
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr i8, ptr %338, i32 16
  %346 = load i32, ptr %345, align 4
  %347 = xor i32 %346, -1
  %348 = and i32 %344, 256
  %349 = and i32 %348, %347
  %350 = lshr exact i32 %349, 8
  %351 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %340, i32 noundef %341, ptr noundef nonnull @.str.61, i32 noundef %350) #15
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %613, label %353

353:                                              ; preds = %336
  %354 = add i32 %351, %337
  %355 = load ptr, ptr %338, align 4
  %356 = icmp eq ptr %355, @cdrom_list
  br i1 %356, label %357, label %336

357:                                              ; preds = %353, %332
  %358 = phi i32 [ %333, %332 ], [ %354, %353 ]
  %359 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %358
  %360 = sub i32 1000, %358
  %361 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %359, i32 noundef %360, ptr noundef nonnull @.str.50) #15
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %613, label %363

363:                                              ; preds = %357
  %364 = add i32 %361, %358
  %365 = load ptr, ptr @cdrom_list, align 4
  %366 = icmp eq ptr %365, @cdrom_list
  br i1 %366, label %388, label %367

367:                                              ; preds = %384, %363
  %368 = phi i32 [ %385, %384 ], [ %364, %363 ]
  %369 = phi ptr [ %386, %384 ], [ %365, %363 ]
  %370 = getelementptr i8, ptr %369, i32 -4
  %371 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %368
  %372 = sub i32 1000, %368
  %373 = load ptr, ptr %370, align 8
  %374 = getelementptr inbounds %struct.cdrom_device_ops, ptr %373, i32 0, i32 14
  %375 = load i32, ptr %374, align 4
  %376 = getelementptr i8, ptr %369, i32 16
  %377 = load i32, ptr %376, align 4
  %378 = xor i32 %377, -1
  %379 = and i32 %375, 8192
  %380 = and i32 %379, %378
  %381 = lshr exact i32 %380, 13
  %382 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %371, i32 noundef %372, ptr noundef nonnull @.str.61, i32 noundef %381) #15
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %613, label %384

384:                                              ; preds = %367
  %385 = add i32 %382, %368
  %386 = load ptr, ptr %369, align 4
  %387 = icmp eq ptr %386, @cdrom_list
  br i1 %387, label %388, label %367

388:                                              ; preds = %384, %363
  %389 = phi i32 [ %364, %363 ], [ %385, %384 ]
  %390 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %389
  %391 = sub i32 1000, %389
  %392 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %390, i32 noundef %391, ptr noundef nonnull @.str.51) #15
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %613, label %394

394:                                              ; preds = %388
  %395 = add i32 %392, %389
  %396 = load ptr, ptr @cdrom_list, align 4
  %397 = icmp eq ptr %396, @cdrom_list
  br i1 %397, label %419, label %398

398:                                              ; preds = %415, %394
  %399 = phi i32 [ %416, %415 ], [ %395, %394 ]
  %400 = phi ptr [ %417, %415 ], [ %396, %394 ]
  %401 = getelementptr i8, ptr %400, i32 -4
  %402 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %399
  %403 = sub i32 1000, %399
  %404 = load ptr, ptr %401, align 8
  %405 = getelementptr inbounds %struct.cdrom_device_ops, ptr %404, i32 0, i32 14
  %406 = load i32, ptr %405, align 4
  %407 = getelementptr i8, ptr %400, i32 16
  %408 = load i32, ptr %407, align 4
  %409 = xor i32 %408, -1
  %410 = and i32 %406, 16384
  %411 = and i32 %410, %409
  %412 = lshr exact i32 %411, 14
  %413 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %402, i32 noundef %403, ptr noundef nonnull @.str.61, i32 noundef %412) #15
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %613, label %415

415:                                              ; preds = %398
  %416 = add i32 %413, %399
  %417 = load ptr, ptr %400, align 4
  %418 = icmp eq ptr %417, @cdrom_list
  br i1 %418, label %419, label %398

419:                                              ; preds = %415, %394
  %420 = phi i32 [ %395, %394 ], [ %416, %415 ]
  %421 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %420
  %422 = sub i32 1000, %420
  %423 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %421, i32 noundef %422, ptr noundef nonnull @.str.52) #15
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %613, label %425

425:                                              ; preds = %419
  %426 = add i32 %423, %420
  %427 = load ptr, ptr @cdrom_list, align 4
  %428 = icmp eq ptr %427, @cdrom_list
  br i1 %428, label %450, label %429

429:                                              ; preds = %446, %425
  %430 = phi i32 [ %447, %446 ], [ %426, %425 ]
  %431 = phi ptr [ %448, %446 ], [ %427, %425 ]
  %432 = getelementptr i8, ptr %431, i32 -4
  %433 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %430
  %434 = sub i32 1000, %430
  %435 = load ptr, ptr %432, align 8
  %436 = getelementptr inbounds %struct.cdrom_device_ops, ptr %435, i32 0, i32 14
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr i8, ptr %431, i32 16
  %439 = load i32, ptr %438, align 4
  %440 = xor i32 %439, -1
  %441 = and i32 %437, 32768
  %442 = and i32 %441, %440
  %443 = lshr exact i32 %442, 15
  %444 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %433, i32 noundef %434, ptr noundef nonnull @.str.61, i32 noundef %443) #15
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %613, label %446

446:                                              ; preds = %429
  %447 = add i32 %444, %430
  %448 = load ptr, ptr %431, align 4
  %449 = icmp eq ptr %448, @cdrom_list
  br i1 %449, label %450, label %429

450:                                              ; preds = %446, %425
  %451 = phi i32 [ %426, %425 ], [ %447, %446 ]
  %452 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %451
  %453 = sub i32 1000, %451
  %454 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %452, i32 noundef %453, ptr noundef nonnull @.str.53) #15
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %613, label %456

456:                                              ; preds = %450
  %457 = add i32 %454, %451
  %458 = load ptr, ptr @cdrom_list, align 4
  %459 = icmp eq ptr %458, @cdrom_list
  br i1 %459, label %481, label %460

460:                                              ; preds = %477, %456
  %461 = phi i32 [ %478, %477 ], [ %457, %456 ]
  %462 = phi ptr [ %479, %477 ], [ %458, %456 ]
  %463 = getelementptr i8, ptr %462, i32 -4
  %464 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %461
  %465 = sub i32 1000, %461
  %466 = load ptr, ptr %463, align 8
  %467 = getelementptr inbounds %struct.cdrom_device_ops, ptr %466, i32 0, i32 14
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr i8, ptr %462, i32 16
  %470 = load i32, ptr %469, align 4
  %471 = xor i32 %470, -1
  %472 = and i32 %468, 65536
  %473 = and i32 %472, %471
  %474 = lshr exact i32 %473, 16
  %475 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %464, i32 noundef %465, ptr noundef nonnull @.str.61, i32 noundef %474) #15
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %613, label %477

477:                                              ; preds = %460
  %478 = add i32 %475, %461
  %479 = load ptr, ptr %462, align 4
  %480 = icmp eq ptr %479, @cdrom_list
  br i1 %480, label %481, label %460

481:                                              ; preds = %477, %456
  %482 = phi i32 [ %457, %456 ], [ %478, %477 ]
  %483 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %482
  %484 = sub i32 1000, %482
  %485 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %483, i32 noundef %484, ptr noundef nonnull @.str.54) #15
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %613, label %487

487:                                              ; preds = %481
  %488 = add i32 %485, %482
  %489 = load ptr, ptr @cdrom_list, align 4
  %490 = icmp eq ptr %489, @cdrom_list
  br i1 %490, label %512, label %491

491:                                              ; preds = %508, %487
  %492 = phi i32 [ %509, %508 ], [ %488, %487 ]
  %493 = phi ptr [ %510, %508 ], [ %489, %487 ]
  %494 = getelementptr i8, ptr %493, i32 -4
  %495 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %492
  %496 = sub i32 1000, %492
  %497 = load ptr, ptr %494, align 8
  %498 = getelementptr inbounds %struct.cdrom_device_ops, ptr %497, i32 0, i32 14
  %499 = load i32, ptr %498, align 4
  %500 = getelementptr i8, ptr %493, i32 16
  %501 = load i32, ptr %500, align 4
  %502 = xor i32 %501, -1
  %503 = and i32 %499, 131072
  %504 = and i32 %503, %502
  %505 = lshr exact i32 %504, 17
  %506 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %495, i32 noundef %496, ptr noundef nonnull @.str.61, i32 noundef %505) #15
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %613, label %508

508:                                              ; preds = %491
  %509 = add i32 %506, %492
  %510 = load ptr, ptr %493, align 4
  %511 = icmp eq ptr %510, @cdrom_list
  br i1 %511, label %512, label %491

512:                                              ; preds = %508, %487
  %513 = phi i32 [ %488, %487 ], [ %509, %508 ]
  %514 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %513
  %515 = sub i32 1000, %513
  %516 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %514, i32 noundef %515, ptr noundef nonnull @.str.55) #15
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %613, label %518

518:                                              ; preds = %512
  %519 = add i32 %516, %513
  %520 = load ptr, ptr @cdrom_list, align 4
  %521 = icmp eq ptr %520, @cdrom_list
  br i1 %521, label %543, label %522

522:                                              ; preds = %539, %518
  %523 = phi i32 [ %540, %539 ], [ %519, %518 ]
  %524 = phi ptr [ %541, %539 ], [ %520, %518 ]
  %525 = getelementptr i8, ptr %524, i32 -4
  %526 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %523
  %527 = sub i32 1000, %523
  %528 = load ptr, ptr %525, align 8
  %529 = getelementptr inbounds %struct.cdrom_device_ops, ptr %528, i32 0, i32 14
  %530 = load i32, ptr %529, align 4
  %531 = getelementptr i8, ptr %524, i32 16
  %532 = load i32, ptr %531, align 4
  %533 = xor i32 %532, -1
  %534 = and i32 %530, 524288
  %535 = and i32 %534, %533
  %536 = lshr exact i32 %535, 19
  %537 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %526, i32 noundef %527, ptr noundef nonnull @.str.61, i32 noundef %536) #15
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %613, label %539

539:                                              ; preds = %522
  %540 = add i32 %537, %523
  %541 = load ptr, ptr %524, align 4
  %542 = icmp eq ptr %541, @cdrom_list
  br i1 %542, label %543, label %522

543:                                              ; preds = %539, %518
  %544 = phi i32 [ %519, %518 ], [ %540, %539 ]
  %545 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %544
  %546 = sub i32 1000, %544
  %547 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %545, i32 noundef %546, ptr noundef nonnull @.str.56) #15
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %613, label %549

549:                                              ; preds = %543
  %550 = add i32 %547, %544
  %551 = load ptr, ptr @cdrom_list, align 4
  %552 = icmp eq ptr %551, @cdrom_list
  br i1 %552, label %574, label %553

553:                                              ; preds = %570, %549
  %554 = phi i32 [ %571, %570 ], [ %550, %549 ]
  %555 = phi ptr [ %572, %570 ], [ %551, %549 ]
  %556 = getelementptr i8, ptr %555, i32 -4
  %557 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %554
  %558 = sub i32 1000, %554
  %559 = load ptr, ptr %556, align 8
  %560 = getelementptr inbounds %struct.cdrom_device_ops, ptr %559, i32 0, i32 14
  %561 = load i32, ptr %560, align 4
  %562 = getelementptr i8, ptr %555, i32 16
  %563 = load i32, ptr %562, align 4
  %564 = xor i32 %563, -1
  %565 = and i32 %561, 1048576
  %566 = and i32 %565, %564
  %567 = lshr exact i32 %566, 20
  %568 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %557, i32 noundef %558, ptr noundef nonnull @.str.61, i32 noundef %567) #15
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %613, label %570

570:                                              ; preds = %553
  %571 = add i32 %568, %554
  %572 = load ptr, ptr %555, align 4
  %573 = icmp eq ptr %572, @cdrom_list
  br i1 %573, label %574, label %553

574:                                              ; preds = %570, %549
  %575 = phi i32 [ %550, %549 ], [ %571, %570 ]
  %576 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %575
  %577 = sub i32 1000, %575
  %578 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %576, i32 noundef %577, ptr noundef nonnull @.str.57) #15
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %613, label %580

580:                                              ; preds = %574
  %581 = add i32 %578, %575
  %582 = load ptr, ptr @cdrom_list, align 4
  %583 = icmp eq ptr %582, @cdrom_list
  br i1 %583, label %605, label %584

584:                                              ; preds = %601, %580
  %585 = phi i32 [ %602, %601 ], [ %581, %580 ]
  %586 = phi ptr [ %603, %601 ], [ %582, %580 ]
  %587 = getelementptr i8, ptr %586, i32 -4
  %588 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %585
  %589 = sub i32 1000, %585
  %590 = load ptr, ptr %587, align 8
  %591 = getelementptr inbounds %struct.cdrom_device_ops, ptr %590, i32 0, i32 14
  %592 = load i32, ptr %591, align 4
  %593 = getelementptr i8, ptr %586, i32 16
  %594 = load i32, ptr %593, align 4
  %595 = xor i32 %594, -1
  %596 = and i32 %592, 2097152
  %597 = and i32 %596, %595
  %598 = lshr exact i32 %597, 21
  %599 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %588, i32 noundef %589, ptr noundef nonnull @.str.61, i32 noundef %598) #15
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %613, label %601

601:                                              ; preds = %584
  %602 = add i32 %599, %585
  %603 = load ptr, ptr %586, align 4
  %604 = icmp eq ptr %603, @cdrom_list
  br i1 %604, label %605, label %584

605:                                              ; preds = %601, %580
  %606 = phi i32 [ %581, %580 ], [ %602, %601 ]
  %607 = getelementptr i8, ptr @cdrom_sysctl_settings, i32 %606
  %608 = sub i32 1000, %606
  %609 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %607, i32 noundef %608, ptr noundef nonnull @.str.58) #15
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %613, label %611

611:                                              ; preds = %613, %605
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #15
  %612 = tail call i32 @proc_dostring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15
  br label %615

613:                                              ; preds = %605, %584, %574, %553, %543, %522, %512, %491, %481, %460, %450, %429, %419, %398, %388, %367, %357, %336, %326, %305, %295, %274, %264, %243, %233, %212, %202, %181, %171, %150, %140, %119, %109, %89, %79, %66, %56, %43, %33, %21, %14
  %614 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #14
  br label %611

615:                                              ; preds = %611, %13
  %616 = phi i32 [ %612, %611 ], [ 0, %13 ]
  ret i32 %616
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdrom_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %103, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 1), align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr @autoclose, align 1
  %12 = load i32, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 2), align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  store i8 %14, ptr @autoeject, align 1
  %15 = load i32, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 3), align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i8
  store i8 %17, ptr @debug, align 1
  %18 = load i32, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 4), align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr @lockdoor, align 1
  %21 = load i32, ptr getelementptr inbounds (%struct.cdrom_sysctl_settings, ptr @cdrom_sysctl_settings, i32 0, i32 5), align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  store i8 %23, ptr @check_media_type, align 1
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #15
  %24 = load ptr, ptr @cdrom_list, align 4
  %25 = icmp eq ptr %24, @cdrom_list
  br i1 %25, label %102, label %26

26:                                               ; preds = %8
  %27 = load i8, ptr @autoclose, align 1, !range !12
  %28 = icmp eq i8 %27, 0
  %29 = load i8, ptr @autoeject, align 1, !range !12
  %30 = icmp eq i8 %29, 0
  %31 = load i8, ptr @lockdoor, align 1, !range !12
  %32 = icmp eq i8 %31, 0
  %33 = load i8, ptr @check_media_type, align 1, !range !12
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i32 0, i32 16
  br label %36

36:                                               ; preds = %95, %26
  %37 = phi ptr [ %24, %26 ], [ %100, %95 ]
  %38 = getelementptr i8, ptr %37, i32 -4
  br i1 %28, label %53, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %38, align 8
  %41 = getelementptr inbounds %struct.cdrom_device_ops, ptr %40, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %37, i32 16
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %42, 1
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  %50 = getelementptr i8, ptr %37, i32 28
  %51 = load i32, ptr %50, align 8
  %52 = or i32 %51, 1
  store i32 %52, ptr %50, align 8
  br label %57

53:                                               ; preds = %36
  %54 = getelementptr i8, ptr %37, i32 28
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, -2
  store i32 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %53, %49, %39
  br i1 %30, label %72, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %38, align 8
  %60 = getelementptr inbounds %struct.cdrom_device_ops, ptr %59, i32 0, i32 14
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %37, i32 16
  %63 = load i32, ptr %62, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %61, 2
  %66 = and i32 %65, %64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %58
  %69 = getelementptr i8, ptr %37, i32 28
  %70 = load i32, ptr %69, align 8
  %71 = or i32 %70, 2
  store i32 %71, ptr %69, align 8
  br label %76

72:                                               ; preds = %57
  %73 = getelementptr i8, ptr %37, i32 28
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, -3
  store i32 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %72, %68, %58
  br i1 %32, label %91, label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %38, align 8
  %79 = getelementptr inbounds %struct.cdrom_device_ops, ptr %78, i32 0, i32 14
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %37, i32 16
  %82 = load i32, ptr %81, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %80, 4
  %85 = and i32 %84, %83
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr i8, ptr %37, i32 28
  %88 = load i32, ptr %87, align 8
  %89 = or i32 %88, 8
  %90 = select i1 %86, i32 %88, i32 %89
  br label %95

91:                                               ; preds = %76
  %92 = getelementptr i8, ptr %37, i32 28
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, -9
  br label %95

95:                                               ; preds = %91, %77
  %96 = phi i32 [ %94, %91 ], [ %90, %77 ]
  %97 = getelementptr i8, ptr %37, i32 28
  %98 = and i32 %96, -17
  %99 = or i32 %98, %35
  store i32 %99, ptr %97, align 8
  %100 = load ptr, ptr %37, align 4
  %101 = icmp eq ptr %100, @cdrom_list
  br i1 %101, label %102, label %36

102:                                              ; preds = %95, %8
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #15
  br label %103

103:                                              ; preds = %102, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind allocsize(0) }

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
!8 = !{i64 2147920651}
!9 = !{i64 345877, i64 2147847443, i64 2147847469, i64 2147847516, i64 2147847538, i64 2147847566, i64 2147847586}
!10 = !{i64 295535, i64 295560, i64 295582, i64 295598, i64 295610, i64 295630, i64 295654, i64 295670, i64 295682}
!11 = !{i64 2147920777}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 938839, i64 938866}
!15 = !{i64 939534, i64 939561, i64 939594, i64 939615, i64 939642, i64 939668}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 3824879}
!19 = !{i64 3825076}
!20 = !{i64 2151310355}
!21 = !{i64 2151329345, i64 2151329370}
!22 = !{i64 2151328767, i64 2151328792}
!23 = !{i64 2153498299, i64 2153498579, i64 2153498913, i64 2153499247}
