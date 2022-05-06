; ModuleID = '/llk/IR/drivers/dma/tegra20-apb-dma.c_pt.bc'
source_filename = "../drivers/dma/tegra20-apb-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.92 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.94, %struct.trace_event, ptr, ptr, %union.anon.95, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.94 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.95 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_dma_chip_data = type { i32, i32, i32, i8, i8 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.trace_event_raw_tegra_dma_tx_status = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.trace_event_raw_tegra_dma_complete_cb = type { %struct.trace_entry, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_tegra_dma_isr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_dma = type { %struct.dma_device, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, [0 x %struct.tegra_dma_channel] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tegra_dma_channel = type { %struct.dma_chan, [12 x i8], i8, i32, ptr, %struct.spinlock, i8, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.tasklet_struct, i32, %struct.dma_slave_config, %struct.tegra_dma_channel_regs, %struct.wait_queue_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tegra_dma_channel_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.tegra_dma_desc = type { %struct.dma_async_tx_descriptor, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tegra_dma_sg_req = type { %struct.tegra_dma_channel_regs, i32, i8, i8, %struct.list_head, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__tpstrtab_tegra_dma_tx_status = internal constant [20 x i8] c"tegra_dma_tx_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tegra_dma_tx_status = dso_local global %struct.static_call_key { ptr @__traceiter_tegra_dma_tx_status }, align 4
@__tracepoint_tegra_dma_tx_status = dso_local global %struct.tracepoint { ptr @__tpstrtab_tegra_dma_tx_status, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_tegra_dma_tx_status, ptr null, ptr @__traceiter_tegra_dma_tx_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tegra_dma_tx_status = internal constant ptr @__tracepoint_tegra_dma_tx_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_tegra_dma_complete_cb = internal constant [22 x i8] c"tegra_dma_complete_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tegra_dma_complete_cb = dso_local global %struct.static_call_key { ptr @__traceiter_tegra_dma_complete_cb }, align 4
@__tracepoint_tegra_dma_complete_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_tegra_dma_complete_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_tegra_dma_complete_cb, ptr null, ptr @__traceiter_tegra_dma_complete_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tegra_dma_complete_cb = internal constant ptr @__tracepoint_tegra_dma_complete_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_tegra_dma_isr = internal constant [14 x i8] c"tegra_dma_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tegra_dma_isr = dso_local global %struct.static_call_key { ptr @__traceiter_tegra_dma_isr }, align 4
@__tracepoint_tegra_dma_isr = dso_local global %struct.tracepoint { ptr @__tpstrtab_tegra_dma_isr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_tegra_dma_isr, ptr null, ptr @__traceiter_tegra_dma_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tegra_dma_isr = internal constant ptr @__tracepoint_tegra_dma_isr, section "__tracepoints_ptrs", align 4
@str__tegra_apb_dma__trace_system_name = internal constant [14 x i8] c"tegra_apb_dma\00", align 1
@trace_event_fields_tegra_dma_tx_status = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.92 { %struct.anon.93 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.92 { %struct.anon.93 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.92 { %struct.anon.93 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_tegra_dma_tx_status = internal global %struct.trace_event_class { ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_raw_event_tegra_dma_tx_status, ptr @perf_trace_tegra_dma_tx_status, ptr @trace_event_reg, ptr @trace_event_fields_tegra_dma_tx_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tegra_dma_tx_status, i64 24), ptr getelementptr (i8, ptr @event_class_tegra_dma_tx_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tegra_dma_tx_status = internal global %struct.trace_event_functions { ptr @trace_raw_output_tegra_dma_tx_status, ptr null, ptr null, ptr null }, align 4
@print_fmt_tegra_dma_tx_status = internal global [84 x i8] c"\22channel %s: dma cookie %d, residue %u\22, __get_str(chan), REC->cookie, REC->residue\00", align 1
@event_tegra_dma_tx_status = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tegra_dma_tx_status, %union.anon.94 { ptr @__tracepoint_tegra_dma_tx_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tegra_dma_tx_status }, ptr @print_fmt_tegra_dma_tx_status, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_tegra_dma_tx_status = internal global ptr @event_tegra_dma_tx_status, section "_ftrace_events", align 4
@trace_event_fields_tegra_dma_complete_cb = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.92 { %struct.anon.93 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.92 { %struct.anon.93 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.92 { %struct.anon.93 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_tegra_dma_complete_cb = internal global %struct.trace_event_class { ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_raw_event_tegra_dma_complete_cb, ptr @perf_trace_tegra_dma_complete_cb, ptr @trace_event_reg, ptr @trace_event_fields_tegra_dma_complete_cb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tegra_dma_complete_cb, i64 24), ptr getelementptr (i8, ptr @event_class_tegra_dma_complete_cb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tegra_dma_complete_cb = internal global %struct.trace_event_functions { ptr @trace_raw_output_tegra_dma_complete_cb, ptr null, ptr null, ptr null }, align 4
@print_fmt_tegra_dma_complete_cb = internal global [69 x i8] c"\22channel %s: done %d, ptr %p\22, __get_str(chan), REC->count, REC->ptr\00", align 1
@event_tegra_dma_complete_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tegra_dma_complete_cb, %union.anon.94 { ptr @__tracepoint_tegra_dma_complete_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tegra_dma_complete_cb }, ptr @print_fmt_tegra_dma_complete_cb, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_tegra_dma_complete_cb = internal global ptr @event_tegra_dma_complete_cb, section "_ftrace_events", align 4
@trace_event_fields_tegra_dma_isr = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.92 { %struct.anon.93 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.92 { %struct.anon.93 { ptr @.str.13, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_tegra_dma_isr = internal global %struct.trace_event_class { ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_raw_event_tegra_dma_isr, ptr @perf_trace_tegra_dma_isr, ptr @trace_event_reg, ptr @trace_event_fields_tegra_dma_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tegra_dma_isr, i64 24), ptr getelementptr (i8, ptr @event_class_tegra_dma_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tegra_dma_isr = internal global %struct.trace_event_functions { ptr @trace_raw_output_tegra_dma_isr, ptr null, ptr null, ptr null }, align 4
@print_fmt_tegra_dma_isr = internal global [41 x i8] c"\22%s: irq %d\0A\22, __get_str(chan), REC->irq\00", align 1
@event_tegra_dma_isr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tegra_dma_isr, %union.anon.94 { ptr @__tracepoint_tegra_dma_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tegra_dma_isr }, ptr @print_fmt_tegra_dma_isr, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_tegra_dma_isr = internal global ptr @event_tegra_dma_isr, section "_ftrace_events", align 4
@__initcall__kmod_tegra20_apb_dma__259_1689_tegra_dmac_driver_init6 = internal global ptr @tegra_dmac_driver_init, section ".initcall6.init", align 4
@tegra_dmac_driver = internal global %struct.platform_driver { ptr @tegra_dma_probe, ptr @tegra_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dma_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_dmac_driver_exit = internal global ptr @tegra_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description260 = internal constant [67 x i8] c"tegra20_apb_dma.description=NVIDIA Tegra APB DMA Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [62 x i8] c"tegra20_apb_dma.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [49 x i8] c"tegra20_apb_dma.file=drivers/dma/tegra20-apb-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [31 x i8] c"tegra20_apb_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma_cookie_t\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"__u32\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"residue\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"channel %s: dma cookie %d, residue %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"channel %s: done %d, ptr %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s: irq %d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"tegra-apbdma\00", align 1
@tegra_dma_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra148-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra148_dma_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_dma_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_dma_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_dma_chip_data }, %struct.of_device_id zeroinitializer], align 4
@tegra_dma_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_dma_dev_suspend, ptr @tegra_dma_dev_resume, ptr @tegra_dma_dev_suspend, ptr @tegra_dma_dev_resume, ptr @tegra_dma_dev_suspend, ptr @tegra_dma_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dma_runtime_suspend, ptr @tegra_dma_runtime_resume, ptr null }, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"Error: Missing controller clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Error: Missing reset\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"apbdma.%d\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"request_irq failed with err %d channel %d\0A\00", align 1
@tegra_dma_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"&tdc->wq\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Tegra20 APB DMA driver registration failed %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Tegra20 APB DMA OF registration failed %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Tegra20 APB DMA driver registered %u channels\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.27 = private unnamed_addr constant [40 x i8] c"Interrupt already served status 0x%08x\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.29 = private unnamed_addr constant [31 x i8] c"DMA channel is not configured\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Invalid segment length %d\0A\00", align 1
@tegra_dma_prep_slave_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"drivers/dma/tegra20-apb-dma.c\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"DMA descriptors not available\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"DMA length/memory address is not supported\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"DMA sg-req not available\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"DMA configured in cyclic mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"DMA direction is not supported\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"slave bw is not supported, using 32bits\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.38 = private unnamed_addr constant [27 x i8] c"Invalid buffer/period len\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"DMA slave is not configured\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Request not allowed when DMA running\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"buf_len is not multiple of period_len\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"Req len/mem address is not correct\0A\00", align 1
@tegra_dma_prep_dma_cyclic.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"not enough descriptors available\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"DMA configuration conflict\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"DMA transfer underflow, aborting DMA\0A\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"Skipping new configuration as interrupt is pending\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Configuration not allowed\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Failed to synchronize DMA: %d\0A\00", align 1
@tegra_dma_sg_bytes_xferred.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"No DMA request\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Failed to enable DMA\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Invalid slave id: %d\0A\00", align 1
@tegra148_dma_chip_data = internal constant %struct.tegra_dma_chip_data { i32 32, i32 64, i32 65536, i8 1, i8 1 }, align 4
@tegra114_dma_chip_data = internal constant %struct.tegra_dma_chip_data { i32 32, i32 32, i32 65536, i8 1, i8 0 }, align 4
@tegra30_dma_chip_data = internal constant %struct.tegra_dma_chip_data { i32 32, i32 32, i32 65536, i8 0, i8 0 }, align 4
@tegra20_dma_chip_data = internal constant %struct.tegra_dma_chip_data { i32 16, i32 32, i32 65536, i8 0, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [17 x i8] c"channel %u busy\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__event_tegra_dma_complete_cb, ptr @__event_tegra_dma_isr, ptr @__event_tegra_dma_tx_status, ptr @__exitcall_tegra_dmac_driver_exit, ptr @__initcall__kmod_tegra20_apb_dma__259_1689_tegra_dmac_driver_init6, ptr @__tracepoint_ptr_tegra_dma_complete_cb, ptr @__tracepoint_ptr_tegra_dma_isr, ptr @__tracepoint_ptr_tegra_dma_tx_status, ptr @__tracepoint_tegra_dma_complete_cb, ptr @__tracepoint_tegra_dma_isr, ptr @__tracepoint_tegra_dma_tx_status, ptr @event_class_tegra_dma_complete_cb, ptr @event_class_tegra_dma_isr, ptr @event_class_tegra_dma_tx_status, ptr @event_tegra_dma_complete_cb, ptr @event_tegra_dma_isr, ptr @event_tegra_dma_tx_status, ptr @tegra_dmac_driver_exit], section "llvm.metadata"
@switch.table.get_transfer_param.53 = private unnamed_addr constant [8 x i32] [i32 0, i32 268435456, i32 0, i32 536870912, i32 0, i32 0, i32 0, i32 805306368], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tegra_dma_tx_status(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #15
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tegra_dma_complete_cb(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #15
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tegra_dma_isr(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #15
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tegra_dma_tx_status(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %14, label %57, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @.str, ptr %23
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi ptr [ %19, %15 ], [ %25, %21 ]
  %28 = tail call i32 @strlen(ptr noundef nonnull %27) #15
  %29 = add i32 %28, 21
  %30 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %29) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %26
  %33 = shl i32 %28, 16
  %34 = add i32 %33, 65556
  %35 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %30, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %30, i32 20
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str, ptr %43
  br label %46

46:                                               ; preds = %41, %32
  %47 = phi ptr [ %39, %32 ], [ %45, %41 ]
  %48 = call ptr @strcpy(ptr noundef %36, ptr noundef nonnull %47)
  %49 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %30, i32 0, i32 2
  store i32 %2, ptr %49, align 4
  %50 = icmp eq ptr %3, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %53, %51 ], [ -1, %46 ]
  %56 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %30, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #15
  br label %57

57:                                               ; preds = %54, %26, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_tegra_dma_tx_status(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str, ptr %14
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi ptr [ %10, %4 ], [ %16, %12 ]
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #15
  %20 = shl i32 %19, 16
  %21 = add i32 %20, 65556
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #7, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load volatile ptr, ptr %29, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %77, label %36

36:                                               ; preds = %33, %17
  %37 = add i32 %19, 32
  %38 = and i32 %37, -8
  %39 = add i32 %38, -4
  %40 = call ptr @perf_trace_buf_alloc(i32 noundef %39, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 4
  %44 = call ptr @llvm.returnaddress(i32 0) #15
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %43, i32 0, i32 15
  store i32 %45, ptr %46, align 4
  %47 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr [18 x i32], ptr %43, i32 0, i32 11
  store i32 %48, ptr %49, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !0) #15
  %51 = getelementptr [18 x i32], ptr %43, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [18 x i32], ptr %43, i32 0, i32 16
  store i32 19, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %40, i32 0, i32 1
  store i32 %21, ptr %53, align 4
  %54 = getelementptr i8, ptr %40, i32 20
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr @.str, ptr %61
  br label %64

64:                                               ; preds = %59, %42
  %65 = phi ptr [ %57, %42 ], [ %63, %59 ]
  %66 = call ptr @strcpy(ptr noundef %54, ptr noundef nonnull %65)
  %67 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %40, i32 0, i32 2
  store i32 %2, ptr %67, align 4
  %68 = icmp eq ptr %3, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ -1, %64 ]
  %74 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %40, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = load i32, ptr %6, align 4
  %76 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %40, i32 noundef %39, i32 noundef %75, ptr noundef %0, i64 noundef 1, ptr noundef %76, ptr noundef %29, ptr noundef null) #15
  br label %77

77:                                               ; preds = %72, %36, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tegra_dma_complete_cb(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %14, label %51, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @.str, ptr %23
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi ptr [ %19, %15 ], [ %25, %21 ]
  %28 = tail call i32 @strlen(ptr noundef nonnull %27) #15
  %29 = add i32 %28, 21
  %30 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %29) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %26
  %33 = shl i32 %28, 16
  %34 = add i32 %33, 65556
  %35 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %30, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %30, i32 20
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str, ptr %43
  br label %46

46:                                               ; preds = %41, %32
  %47 = phi ptr [ %39, %32 ], [ %45, %41 ]
  %48 = call ptr @strcpy(ptr noundef %36, ptr noundef nonnull %47)
  %49 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %30, i32 0, i32 2
  store i32 %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %30, i32 0, i32 3
  store ptr %3, ptr %50, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #15
  br label %51

51:                                               ; preds = %46, %26, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_tegra_dma_complete_cb(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str, ptr %14
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi ptr [ %10, %4 ], [ %16, %12 ]
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #15
  %20 = shl i32 %19, 16
  %21 = add i32 %20, 65556
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #7, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load volatile ptr, ptr %29, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %71, label %36

36:                                               ; preds = %33, %17
  %37 = add i32 %19, 32
  %38 = and i32 %37, -8
  %39 = add i32 %38, -4
  %40 = call ptr @perf_trace_buf_alloc(i32 noundef %39, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 4
  %44 = call ptr @llvm.returnaddress(i32 0) #15
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %43, i32 0, i32 15
  store i32 %45, ptr %46, align 4
  %47 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr [18 x i32], ptr %43, i32 0, i32 11
  store i32 %48, ptr %49, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !0) #15
  %51 = getelementptr [18 x i32], ptr %43, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [18 x i32], ptr %43, i32 0, i32 16
  store i32 19, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %40, i32 0, i32 1
  store i32 %21, ptr %53, align 4
  %54 = getelementptr i8, ptr %40, i32 20
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr @.str, ptr %61
  br label %64

64:                                               ; preds = %59, %42
  %65 = phi ptr [ %57, %42 ], [ %63, %59 ]
  %66 = call ptr @strcpy(ptr noundef %54, ptr noundef nonnull %65)
  %67 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %40, i32 0, i32 2
  store i32 %2, ptr %67, align 4
  %68 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %40, i32 0, i32 3
  store ptr %3, ptr %68, align 4
  %69 = load i32, ptr %6, align 4
  %70 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %40, i32 noundef %39, i32 noundef %69, ptr noundef %0, i64 noundef 1, ptr noundef %70, ptr noundef %29, ptr noundef null) #15
  br label %71

71:                                               ; preds = %64, %36, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tegra_dma_isr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %13, label %49, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str, ptr %22
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %18, %14 ], [ %24, %20 ]
  %27 = tail call i32 @strlen(ptr noundef nonnull %26) #15
  %28 = add i32 %27, 17
  %29 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %28) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = shl i32 %27, 16
  %33 = add i32 %32, 65552
  %34 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %29, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %29, i32 16
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr @.str, ptr %42
  br label %45

45:                                               ; preds = %40, %31
  %46 = phi ptr [ %38, %31 ], [ %44, %40 ]
  %47 = call ptr @strcpy(ptr noundef %35, ptr noundef nonnull %46)
  %48 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %29, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #15
  br label %49

49:                                               ; preds = %45, %25, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_tegra_dma_isr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str, ptr %13
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi ptr [ %9, %3 ], [ %15, %11 ]
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #15
  %19 = shl i32 %18, 16
  %20 = add i32 %19, 65552
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #7, !srcloc !12
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load volatile ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %32, %16
  %36 = add i32 %18, 28
  %37 = and i32 %36, -8
  %38 = add i32 %37, -4
  %39 = call ptr @perf_trace_buf_alloc(i32 noundef %38, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 4
  %43 = call ptr @llvm.returnaddress(i32 0) #15
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !0) #15
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %39, i32 0, i32 1
  store i32 %20, ptr %52, align 4
  %53 = getelementptr i8, ptr %39, i32 16
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @.str, ptr %60
  br label %63

63:                                               ; preds = %58, %41
  %64 = phi ptr [ %56, %41 ], [ %62, %58 ]
  %65 = call ptr @strcpy(ptr noundef %53, ptr noundef nonnull %64)
  %66 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %39, i32 0, i32 2
  store i32 %2, ptr %66, align 4
  %67 = load i32, ptr %5, align 4
  %68 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %67, ptr noundef %0, i64 noundef 1, ptr noundef %68, ptr noundef %28, ptr noundef null) #15
  br label %69

69:                                               ; preds = %63, %35, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_dmac_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_dmac_driver, ptr noundef null) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_dmac_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_dmac_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tegra_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %13, i32 noundef %15, i32 noundef %17) #15
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #15
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tegra_dma_complete_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %13, i32 noundef %15, ptr noundef %17) #15
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #15
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tegra_dma_isr(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %13, i32 noundef %15) #15
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #15
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #15
  %4 = load i32, ptr %3, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 252) #15
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 280) #15
  %9 = select i1 %6, i32 -1, i32 %8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %9, i32 noundef 3520) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 6
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %15, align 8
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #15
  %17 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %16 to i32
  br label %123

21:                                               ; preds = %12
  %22 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #15
  %23 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16) #16
  %26 = load ptr, ptr %23, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %123

28:                                               ; preds = %21
  %29 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #15
  %30 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 3
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.18) #16
  %33 = load ptr, ptr %30, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %123

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 4
  store i32 0, ptr %36, align 4
  %37 = load ptr, ptr %23, align 4
  %38 = tail call i32 @clk_prepare(ptr noundef %37) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %123

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @tegra_dma_init_hw(ptr noundef nonnull %10)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %120

43:                                               ; preds = %40
  tail call void @pm_runtime_irq_safe(ptr noundef %2) #15
  tail call void @pm_runtime_enable(ptr noundef %2) #15
  %44 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 3
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 3, i32 1
  store ptr %44, ptr %45, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %90, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %3, i32 0, i32 1
  br label %50

50:                                               ; preds = %67, %48
  %51 = phi i32 [ 0, %48 ], [ %87, %67 ]
  %52 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51
  %53 = load ptr, ptr %17, align 4
  %54 = getelementptr i8, ptr %53, i32 4096
  %55 = load i32, ptr %49, align 4
  %56 = mul i32 %55, %51
  %57 = getelementptr i8, ptr %54, i32 %56
  %58 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 4
  store ptr %57, ptr %58, align 4
  %59 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %51) #15
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %50
  %62 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 1
  %63 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %62, i32 noundef 12, ptr noundef nonnull @.str.19, i32 noundef %51)
  %64 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %59, ptr noundef nonnull @tegra_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef %62, ptr noundef %52) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %64, i32 noundef %51) #16
  br label %118

67:                                               ; preds = %61
  store ptr %10, ptr %52, align 4
  %68 = getelementptr inbounds %struct.dma_chan, ptr %52, i32 0, i32 2
  store i32 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_chan, ptr %52, i32 0, i32 3
  store i32 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_chan, ptr %52, i32 0, i32 8
  %71 = load ptr, ptr %45, align 4
  store ptr %70, ptr %45, align 4
  store ptr %44, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dma_chan, ptr %52, i32 0, i32 8, i32 1
  store ptr %71, ptr %72, align 4
  store volatile ptr %70, ptr %71, align 4
  %73 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 7
  store ptr %10, ptr %73, align 4
  %74 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 3
  store i32 %51, ptr %74, align 4
  %75 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 15
  store i32 32, ptr %75, align 4
  %76 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 14
  tail call void @tasklet_setup(ptr noundef %76, ptr noundef nonnull @tegra_dma_tasklet) #15
  %77 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 5
  store i32 0, ptr %77, align 4
  %78 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %78, ptr noundef nonnull @.str.21, ptr noundef nonnull @tegra_dma_probe.__key) #15
  %79 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 10
  store volatile ptr %79, ptr %79, align 4
  %80 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 10, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 9
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 9, i32 1
  store ptr %81, ptr %82, align 4
  %83 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 11
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 11, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 12
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr %struct.tegra_dma, ptr %10, i32 0, i32 8, i32 %51, i32 12, i32 1
  store ptr %85, ptr %86, align 4
  %87 = add nuw i32 %51, 1
  %88 = load i32, ptr %3, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %50, label %90

90:                                               ; preds = %67, %43
  %91 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %91) #15
  tail call void @_set_bit(i32 noundef 9, ptr noundef %91) #15
  tail call void @_set_bit(i32 noundef 12, ptr noundef %91) #15
  %92 = getelementptr inbounds %struct.tegra_dma, ptr %10, i32 0, i32 7
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  store ptr %2, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 27
  store ptr @tegra_dma_alloc_chan_resources, ptr %94, align 4
  %95 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 29
  store ptr @tegra_dma_free_chan_resources, ptr %95, align 4
  %96 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 39
  store ptr @tegra_dma_prep_slave_sg, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 40
  store ptr @tegra_dma_prep_dma_cyclic, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 19
  store i32 278, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 20
  store i32 278, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 21
  store i32 6, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 26
  store i32 2, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 44
  store ptr @tegra_dma_slave_config, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  store ptr @tegra_dma_terminate_all, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 48
  store ptr @tegra_dma_synchronize, ptr %104, align 4
  %105 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  store ptr @tegra_dma_tx_status, ptr %105, align 4
  %106 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 50
  store ptr @tegra_dma_issue_pending, ptr %106, align 4
  %107 = tail call i32 @dma_async_device_register(ptr noundef nonnull %10) #15
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %107) #16
  br label %118

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %112 = load ptr, ptr %111, align 8
  %113 = tail call i32 @of_dma_controller_register(ptr noundef %112, ptr noundef nonnull @tegra_dma_of_xlate, ptr noundef nonnull %10) #15
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %113) #16
  tail call void @dma_async_device_unregister(ptr noundef nonnull %10) #15
  br label %118

116:                                              ; preds = %110
  %117 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %117) #16
  br label %123

118:                                              ; preds = %115, %109, %66, %50
  %119 = phi i32 [ %107, %109 ], [ %113, %115 ], [ %64, %66 ], [ %59, %50 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #15
  br label %120

120:                                              ; preds = %118, %40
  %121 = phi i32 [ %41, %40 ], [ %119, %118 ]
  %122 = load ptr, ptr %23, align 4
  tail call void @clk_unprepare(ptr noundef %122) #15
  br label %123

123:                                              ; preds = %120, %116, %35, %32, %25, %19, %1
  %124 = phi i32 [ %20, %19 ], [ %27, %25 ], [ %34, %32 ], [ %121, %120 ], [ 0, %116 ], [ -12, %1 ], [ %38, %35 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  tail call void @of_dma_controller_free(ptr noundef %6) #15
  tail call void @dma_async_device_unregister(ptr noundef %3) #15
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #15
  %7 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_dma_init_hw(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dma, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_dma, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef %4) #16
  br label %28

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_dma, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tegra_dma, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.26, i32 noundef %12) #16
  br label %28

17:                                               ; preds = %9
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #15
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 @reset_control_deassert(ptr noundef %19) #15
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %21 = getelementptr inbounds %struct.tegra_dma, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -2147483648) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #15, !srcloc !14
  %27 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %27) #15
  br label %28

28:                                               ; preds = %17, %14, %6
  %29 = phi i32 [ %4, %6 ], [ %12, %14 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_isr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #15
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %18 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %25, %20 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tracepoint_func, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24, ptr noundef %1, i32 noundef %0) #15
  %25 = getelementptr %struct.tracepoint_func, ptr %21, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %29

29:                                               ; preds = %28, %6, %2
  %30 = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %34 = and i32 %33, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %33) #15, !srcloc !14
  %39 = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %1, i1 noundef zeroext false) #15
  %41 = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 14, i32 1
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %41) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %45) #15
  br label %46

46:                                               ; preds = %44, %36
  %47 = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %47, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %48 = load i16, ptr %3, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %56

50:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %51 = load i16, ptr %3, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %53 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.27, i32 noundef %33) #16
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i32 [ 1, %46 ], [ 0, %50 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dma_tasklet(ptr noundef %0) #0 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr i8, ptr %0, i32 -140
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %66, label %9

9:                                                ; preds = %62, %1
  %10 = phi ptr [ %64, %62 ], [ %7, %1 ]
  %11 = phi i32 [ %63, %62 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr i8, ptr %10, i32 -64
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %10, i32 -60
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %10, i32 -56
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %10, i32 8
  %23 = load i32, ptr %22, align 4
  store i32 0, ptr %22, align 4
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %9
  %27 = tail call ptr @llvm.thread.pointer() #15
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %26
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %38 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %45, %40 ], [ %38, %37 ]
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tracepoint_func, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  call void %42(ptr noundef %44, ptr noundef %3, i32 noundef %23, ptr noundef %17) #15
  %45 = getelementptr %struct.tracepoint_func, ptr %41, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %40

48:                                               ; preds = %40, %37
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  br label %49

49:                                               ; preds = %48, %26, %9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %11) #15
  %50 = icmp eq i32 %23, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %49
  %52 = icmp eq ptr %19, null
  %53 = icmp eq ptr %17, null
  br label %54

54:                                               ; preds = %60, %51
  %55 = phi i32 [ %23, %51 ], [ %56, %60 ]
  %56 = add i32 %55, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 0, ptr %2, align 8
  br i1 %52, label %58, label %57

57:                                               ; preds = %54
  call void %19(ptr noundef %21, ptr noundef nonnull %2) #15
  br label %60

58:                                               ; preds = %54
  br i1 %53, label %60, label %59

59:                                               ; preds = %58
  call void %17(ptr noundef %21) #15
  br label %60

60:                                               ; preds = %59, %58, %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %62, label %54

62:                                               ; preds = %60, %49
  %63 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %64 = load volatile ptr, ptr %6, align 4
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %66, label %9

66:                                               ; preds = %62, %1
  %67 = phi i32 [ %5, %1 ], [ %63, %62 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %67) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_dma_alloc_chan_resources(ptr nocapture noundef writeonly %0) #12 {
  %2 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dma_free_chan_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store volatile ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  store volatile ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = call i32 @tegra_dma_terminate_all(ptr noundef %0)
  %7 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 14
  call void @tasklet_kill(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  store ptr %9, ptr %3, align 8
  store ptr %12, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %13, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %3, ptr %25, align 4
  store ptr %19, ptr %3, align 8
  store ptr %22, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %23, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %2, ptr %35, align 4
  store ptr %29, ptr %2, align 8
  store ptr %32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %28, ptr %28, align 4
  store ptr %28, ptr %33, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 2
  store i8 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 13
  store ptr null, ptr %41, align 4
  %42 = load volatile ptr, ptr %2, align 8
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %47

44:                                               ; preds = %47, %37
  %45 = load volatile ptr, ptr %3, align 8
  %46 = icmp eq ptr %45, %3
  br i1 %46, label %65, label %56

47:                                               ; preds = %47, %37
  %48 = phi ptr [ %54, %47 ], [ %42, %37 ]
  %49 = getelementptr i8, ptr %48, i32 -72
  %50 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  call void @kfree(ptr noundef %49) #15
  %54 = load volatile ptr, ptr %2, align 8
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %44, label %47

56:                                               ; preds = %56, %44
  %57 = phi ptr [ %63, %56 ], [ %45, %44 ]
  %58 = getelementptr i8, ptr %57, i32 -32
  %59 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %57, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  call void @kfree(ptr noundef %58) #15
  %63 = load volatile ptr, ptr %3, align 8
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %65, label %56

65:                                               ; preds = %56, %44
  %66 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 15
  store i32 32, ptr %66, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head, align 8
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 0, ptr %12, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29) #16
  br label %214

20:                                               ; preds = %6
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.30, i32 noundef 0) #16
  br label %214

26:                                               ; preds = %20
  %27 = call fastcc i32 @get_transfer_param(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %10)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %214, label %29

29:                                               ; preds = %26
  store volatile ptr %11, ptr %11, align 8
  %30 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %30, align 4
  %31 = and i32 %4, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 32
  %37 = load i32, ptr %7, align 4
  %38 = or i32 %37, 134217728
  %39 = shl i32 %35, 16
  %40 = or i32 %37, %39
  %41 = or i32 %40, 136314880
  %42 = select i1 %36, i32 %38, i32 %41
  %43 = or i32 %42, 1073741824
  store i32 %43, ptr %7, align 4
  %44 = load i32, ptr %9, align 4
  %45 = or i32 %44, 65536
  store i32 %45, ptr %9, align 4
  %46 = call fastcc ptr @tegra_dma_desc_get(ptr noundef %0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %55

48:                                               ; preds = %29
  %49 = load i1, ptr @tegra_dma_prep_slave_sg.__already_done, align 1
  br i1 %49, label %214, label %50, !prof !10

50:                                               ; preds = %48
  store i1 true, ptr @tegra_dma_prep_slave_sg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1088, i32 noundef 9, ptr noundef null) #15
  br label %214

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.32) #16
  br label %214

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 5
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 5, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 6
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 6, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 7
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 2
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 3
  store i32 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %65 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %66 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %67 = load i32, ptr %12, align 4
  %68 = load i32, ptr %10, align 4
  %69 = mul i32 %68, %67
  %70 = icmp ult i32 %69, 4
  %71 = icmp ult i32 %69, 16
  %72 = icmp ult i32 %69, 32
  %73 = select i1 %72, i32 83886080, i32 100663296
  %74 = load i32, ptr %8, align 4
  %75 = select i1 %71, i32 67108864, i32 %73
  br label %76

76:                                               ; preds = %181, %55
  %77 = phi i32 [ 0, %55 ], [ %191, %181 ]
  %78 = phi ptr [ %1, %55 ], [ %192, %181 ]
  %79 = phi i32 [ -1610612736, %55 ], [ %164, %181 ]
  %80 = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 3
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %81, 3
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load ptr, ptr %64, align 4
  %91 = getelementptr inbounds %struct.tegra_dma, ptr %90, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = icmp ugt i32 %83, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %89, %76
  %97 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dma_chan_dev, ptr %98, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.33) #16
  %100 = call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #15
  %101 = load volatile ptr, ptr %56, align 4
  %102 = icmp eq ptr %101, %56
  br i1 %102, label %111, label %103

103:                                              ; preds = %96
  %104 = load volatile ptr, ptr %56, align 4
  %105 = icmp eq ptr %104, %56
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %66, align 4
  %108 = load ptr, ptr %57, align 4
  %109 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %66, ptr %109, align 4
  store ptr %104, ptr %66, align 4
  store ptr %107, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %108, ptr %110, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %57, align 4
  br label %111

111:                                              ; preds = %106, %103, %96
  %112 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 4
  %113 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %114 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %115 = load ptr, ptr %114, align 4
  store ptr %112, ptr %114, align 4
  store ptr %113, ptr %112, align 4
  %116 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 4, i32 1
  store ptr %115, ptr %116, align 4
  store volatile ptr %112, ptr %115, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %100) #15
  br label %214

117:                                              ; preds = %89
  %118 = call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #15
  %119 = load volatile ptr, ptr %66, align 4
  %120 = icmp eq ptr %119, %66
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %119, i32 -32
  %123 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %119, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %119, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %123, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %118) #15
  br label %130

127:                                              ; preds = %117
  call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %118) #15
  %128 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %129 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 2304, i32 noundef 48) #17
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi ptr [ %129, %127 ], [ %122, %121 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.dma_chan_dev, ptr %135, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.34) #16
  %137 = call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #15
  %138 = load volatile ptr, ptr %56, align 4
  %139 = icmp eq ptr %138, %56
  br i1 %139, label %148, label %140

140:                                              ; preds = %133
  %141 = load volatile ptr, ptr %56, align 4
  %142 = icmp eq ptr %141, %56
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %66, align 4
  %145 = load ptr, ptr %57, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  store ptr %66, ptr %146, align 4
  store ptr %141, ptr %66, align 4
  store ptr %144, ptr %145, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  store ptr %145, ptr %147, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %57, align 4
  br label %148

148:                                              ; preds = %143, %140, %133
  %149 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 4
  %150 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %151 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %152 = load ptr, ptr %151, align 4
  store ptr %149, ptr %151, align 4
  store ptr %150, ptr %149, align 4
  %153 = getelementptr inbounds %struct.tegra_dma_desc, ptr %46, i32 0, i32 4, i32 1
  store ptr %152, ptr %153, align 4
  store volatile ptr %149, ptr %152, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %137) #15
  br label %214

154:                                              ; preds = %130
  br i1 %70, label %155, label %162

155:                                              ; preds = %154
  %156 = and i32 %83, 15
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = and i32 %83, 16
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 100663296, i32 83886080
  br label %162

162:                                              ; preds = %158, %155, %154
  %163 = phi i32 [ 67108864, %155 ], [ %161, %158 ], [ %75, %154 ]
  %164 = or i32 %163, %79
  %165 = load i32, ptr %61, align 4
  %166 = add i32 %165, %83
  store i32 %166, ptr %61, align 4
  %167 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %131, i32 0, i32 2
  store i32 %74, ptr %167, align 4
  %168 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %131, i32 0, i32 1
  store i32 %81, ptr %168, align 4
  store i32 %43, ptr %131, align 4
  %169 = add i32 %83, 65532
  %170 = and i32 %169, 65532
  %171 = load ptr, ptr %64, align 4
  %172 = getelementptr inbounds %struct.tegra_dma, ptr %171, i32 0, i32 6
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %173, i32 0, i32 4
  %175 = load i8, ptr %174, align 1, !range !26
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %162
  %178 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %131, i32 0, i32 5
  store i32 %170, ptr %178, align 4
  br label %181

179:                                              ; preds = %162
  %180 = or i32 %170, %43
  store i32 %180, ptr %131, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %131, i32 0, i32 4
  store i32 %45, ptr %182, align 4
  %183 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %131, i32 0, i32 3
  store i32 %164, ptr %183, align 4
  %184 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 2
  store i8 0, ptr %184, align 4
  %185 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 3
  store i8 0, ptr %185, align 1
  %186 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 5
  store ptr %46, ptr %186, align 4
  %187 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 1
  store i32 %83, ptr %187, align 4
  %188 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 4
  %189 = load ptr, ptr %57, align 4
  store ptr %188, ptr %57, align 4
  store ptr %56, ptr %188, align 4
  %190 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 4, i32 1
  store ptr %189, ptr %190, align 4
  store volatile ptr %188, ptr %189, align 4
  %191 = add nuw i32 %77, 1
  %192 = call ptr @sg_next(ptr noundef %78) #15
  %193 = icmp eq i32 %191, %2
  br i1 %193, label %194, label %76

194:                                              ; preds = %181
  %195 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %131, i32 0, i32 3
  store i8 1, ptr %195, align 1
  %196 = and i32 %4, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 1
  store i32 2, ptr %199, align 4
  br label %200

200:                                              ; preds = %198, %194
  %201 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 13
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  store ptr @handle_once_dma_done, ptr %201, align 4
  %205 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 8
  store i8 0, ptr %205, align 4
  br label %214

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 8
  %208 = load i8, ptr %207, align 4, !range !26
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.dma_chan_dev, ptr %212, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.35) #16
  call fastcc void @tegra_dma_desc_put(ptr noundef %0, ptr noundef nonnull %46)
  br label %214

214:                                              ; preds = %210, %206, %204, %148, %111, %51, %50, %48, %26, %22, %16
  %215 = phi ptr [ null, %22 ], [ null, %210 ], [ null, %51 ], [ null, %16 ], [ null, %26 ], [ null, %50 ], [ null, %48 ], [ %46, %206 ], [ %46, %204 ], [ null, %111 ], [ null, %148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret ptr %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !annotation !9
  %12 = icmp ne i32 %2, 0
  %13 = icmp ne i32 %3, 0
  %14 = and i1 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.38) #16
  br label %184

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.39) #16
  br label %184

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 4, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_chan_dev, ptr %33, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.40) #16
  br label %184

35:                                               ; preds = %27
  %36 = urem i32 %2, %3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dma_chan_dev, ptr %40, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.41) #16
  br label %184

42:                                               ; preds = %35
  %43 = or i32 %3, %1
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tegra_dma, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, %3
  br i1 %53, label %54, label %58

54:                                               ; preds = %46, %42
  %55 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_chan_dev, ptr %56, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.42) #16
  br label %184

58:                                               ; preds = %46
  %59 = call fastcc i32 @get_transfer_param(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %10)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %184, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %7, align 4
  %67 = shl i32 %63, 16
  %68 = or i32 %67, %66
  %69 = or i32 %68, 2097152
  store i32 %69, ptr %7, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = and i32 %5, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %7, align 4
  %75 = or i32 %74, 1073741824
  store i32 %75, ptr %7, align 4
  %76 = load i32, ptr %9, align 4
  %77 = or i32 %76, 65536
  store i32 %77, ptr %9, align 4
  %78 = tail call fastcc ptr @tegra_dma_desc_get(ptr noundef %0)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %87

80:                                               ; preds = %70
  %81 = load i1, ptr @tegra_dma_prep_dma_cyclic.__already_done, align 1
  br i1 %81, label %184, label %82, !prof !10

82:                                               ; preds = %80
  store i1 true, ptr @tegra_dma_prep_dma_cyclic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1236, i32 noundef 9, ptr noundef null) #15
  br label %184

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.dma_chan_dev, ptr %85, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.43) #16
  br label %184

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 5
  store volatile ptr %88, ptr %88, align 4
  %89 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 5, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 6
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 6, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 7
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 2
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.tegra_dma_desc, ptr %78, i32 0, i32 1
  store i32 %2, ptr %94, align 4
  %95 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %96 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %97 = load i32, ptr %11, align 4
  %98 = load i32, ptr %10, align 4
  %99 = mul i32 %98, %97
  %100 = icmp ult i32 %99, 4
  %101 = icmp ult i32 %99, 16
  %102 = icmp ult i32 %99, 32
  %103 = select i1 %102, i32 83886080, i32 100663296
  %104 = and i32 %3, 15
  %105 = icmp eq i32 %104, 0
  %106 = and i32 %3, 16
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 100663296, i32 83886080
  %109 = load i32, ptr %8, align 4
  %110 = add i32 %3, 65532
  %111 = and i32 %110, 65532
  %112 = or i32 %75, %111
  %113 = select i1 %105, i32 %108, i32 67108864
  %114 = select i1 %101, i32 67108864, i32 %103
  %115 = select i1 %100, i32 %113, i32 %114
  %116 = or i32 %115, -1610612736
  br label %117

117:                                              ; preds = %151, %87
  %118 = phi i32 [ %2, %87 ], [ %161, %151 ]
  %119 = phi i32 [ %1, %87 ], [ %162, %151 ]
  %120 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %95) #15
  %121 = load volatile ptr, ptr %96, align 4
  %122 = icmp eq ptr %121, %96
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = getelementptr i8, ptr %121, i32 -32
  %125 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %121, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 4
  store volatile ptr %127, ptr %126, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %121, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %125, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %120) #15
  br label %132

129:                                              ; preds = %117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %120) #15
  %130 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 2304, i32 noundef 48) #17
  br label %132

132:                                              ; preds = %129, %123
  %133 = phi ptr [ %131, %129 ], [ %124, %123 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.dma_chan_dev, ptr %137, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.34) #16
  tail call fastcc void @tegra_dma_desc_put(ptr noundef %0, ptr noundef nonnull %78)
  br label %184

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %133, i32 0, i32 2
  store i32 %109, ptr %140, align 4
  %141 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %133, i32 0, i32 1
  store i32 %119, ptr %141, align 4
  store i32 %75, ptr %133, align 4
  %142 = load ptr, ptr %47, align 4
  %143 = getelementptr inbounds %struct.tegra_dma, ptr %142, i32 0, i32 6
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %144, i32 0, i32 4
  %146 = load i8, ptr %145, align 1, !range !26
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %133, i32 0, i32 5
  store i32 %111, ptr %149, align 4
  br label %151

150:                                              ; preds = %139
  store i32 %112, ptr %133, align 4
  br label %151

151:                                              ; preds = %150, %148
  %152 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %133, i32 0, i32 4
  store i32 %77, ptr %152, align 4
  %153 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %133, i32 0, i32 3
  store i32 %116, ptr %153, align 4
  %154 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 2
  store i8 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 3
  store i8 0, ptr %155, align 1
  %156 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 5
  store ptr %78, ptr %156, align 4
  %157 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 1
  store i32 %3, ptr %157, align 4
  %158 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 4
  %159 = load ptr, ptr %89, align 4
  store ptr %158, ptr %89, align 4
  store ptr %88, ptr %158, align 4
  %160 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 4, i32 1
  store ptr %159, ptr %160, align 4
  store volatile ptr %158, ptr %159, align 4
  %161 = sub i32 %118, %3
  %162 = add i32 %119, %3
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %164, label %117

164:                                              ; preds = %151
  %165 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %133, i32 0, i32 3
  store i8 1, ptr %165, align 1
  %166 = and i32 %5, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %78, i32 0, i32 1
  store i32 2, ptr %169, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 13
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  store ptr @handle_cont_sngl_cycle_dma_done, ptr %171, align 4
  %175 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 8
  store i8 1, ptr %175, align 4
  br label %184

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 8
  %178 = load i8, ptr %177, align 4, !range !26
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.dma_chan_dev, ptr %182, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.44) #16
  tail call fastcc void @tegra_dma_desc_put(ptr noundef %0, ptr noundef nonnull %78)
  br label %184

184:                                              ; preds = %180, %176, %174, %135, %83, %82, %80, %58, %54, %38, %31, %23, %15
  %185 = phi ptr [ null, %31 ], [ null, %38 ], [ null, %54 ], [ null, %135 ], [ null, %180 ], [ null, %83 ], [ null, %23 ], [ null, %15 ], [ null, %58 ], [ null, %82 ], [ null, %80 ], [ %78, %176 ], [ %78, %174 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret ptr %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_slave_config(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.47) #16
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %11, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %12 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 2
  store i8 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ 0, %10 ], [ -16, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_terminate_all(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %105, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %11, i32 0, i32 3
  %13 = load i8, ptr %12, align 4, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %16 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -2147483648) #15, !srcloc !14
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 4294960) #15
  br label %40

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %21) #15
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.tegra_dma, ptr %22, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %27 = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #15, !srcloc !14
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4294960) #15
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr inbounds %struct.tegra_dma, ptr %30, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi i32 [ %32, %26 ], [ %24, %20 ]
  %35 = phi ptr [ %30, %26 ], [ %22, %20 ]
  %36 = getelementptr inbounds %struct.tegra_dma, ptr %35, i32 0, i32 7
  %37 = add i32 %34, 1
  store i32 %37, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %38 = load i16, ptr %21, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %40

40:                                               ; preds = %33, %15
  %41 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %45 = and i32 %44, 1073741824
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, i1 noundef zeroext true) #15
  %50 = load ptr, ptr %41, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i32 [ %52, %47 ], [ %44, %40 ]
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.tegra_dma, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %57, i32 0, i32 4
  %59 = load i8, ptr %58, align 1, !range !26
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %41, align 4
  %63 = getelementptr i8, ptr %62, i32 36
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  br label %65

65:                                               ; preds = %61, %53
  %66 = phi i32 [ %64, %61 ], [ %54, %53 ]
  %67 = load i8, ptr %4, align 4, !range !26
  %68 = load ptr, ptr %41, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %70 = and i32 %69, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %71 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #15, !srcloc !14
  %72 = and i32 %69, 1073741823
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %73 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #15, !srcloc !14
  %74 = load ptr, ptr %41, align 4
  %75 = getelementptr i8, ptr %74, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %77 = and i32 %76, 1073741824
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %80 = load ptr, ptr %41, align 4
  %81 = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %76) #15, !srcloc !14
  br label %82

82:                                               ; preds = %79, %65
  store i8 0, ptr %4, align 4
  %83 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  %86 = icmp eq i8 %67, 0
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %99, label %88

88:                                               ; preds = %82
  %89 = getelementptr i8, ptr %84, i32 -8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %66, 65532
  %92 = sub nuw nsw i32 -4, %91
  %93 = add i32 %92, %90
  %94 = getelementptr i8, ptr %84, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.tegra_dma_desc, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %93, %97
  store i32 %98, ptr %96, align 4
  br label %99

99:                                               ; preds = %88, %82
  tail call fastcc void @tegra_dma_resume(ptr noundef %0)
  %100 = load ptr, ptr %8, align 4
  %101 = getelementptr inbounds %struct.tegra_dma, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @__pm_runtime_idle(ptr noundef %102, i32 noundef 5) #15
  %104 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %104, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %105

105:                                              ; preds = %99, %1
  %106 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %147, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %111 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9, i32 1
  %112 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %113 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %114 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12
  %115 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12, i32 1
  br label %116

116:                                              ; preds = %144, %109
  %117 = phi ptr [ %107, %109 ], [ %145, %144 ]
  %118 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %117, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 4
  store volatile ptr %120, ptr %119, align 4
  %122 = load ptr, ptr %111, align 4
  store ptr %117, ptr %111, align 4
  store ptr %110, ptr %117, align 4
  store ptr %122, ptr %118, align 4
  store volatile ptr %117, ptr %122, align 4
  %123 = getelementptr i8, ptr %117, i32 -3
  %124 = load i8, ptr %123, align 1, !range !26
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %116
  %127 = getelementptr i8, ptr %117, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.tegra_dma_desc, ptr %128, i32 0, i32 3
  store i32 3, ptr %129, align 4
  %130 = getelementptr inbounds %struct.tegra_dma_desc, ptr %128, i32 0, i32 4
  %131 = load ptr, ptr %113, align 4
  store ptr %130, ptr %113, align 4
  store ptr %112, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tegra_dma_desc, ptr %128, i32 0, i32 4, i32 1
  store ptr %131, ptr %132, align 4
  store volatile ptr %130, ptr %131, align 4
  %133 = getelementptr inbounds %struct.tegra_dma_desc, ptr %128, i32 0, i32 7
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.tegra_dma_desc, ptr %128, i32 0, i32 6
  %138 = load ptr, ptr %115, align 4
  store ptr %137, ptr %115, align 4
  store ptr %114, ptr %137, align 4
  %139 = getelementptr inbounds %struct.tegra_dma_desc, ptr %128, i32 0, i32 6, i32 1
  store ptr %138, ptr %139, align 4
  store volatile ptr %137, ptr %138, align 4
  %140 = load i32, ptr %133, align 4
  br label %141

141:                                              ; preds = %136, %126
  %142 = phi i32 [ %140, %136 ], [ %134, %126 ]
  %143 = add i32 %142, 1
  store i32 %143, ptr %133, align 4
  br label %144

144:                                              ; preds = %141, %116
  %145 = load volatile ptr, ptr %106, align 4
  %146 = icmp eq ptr %145, %106
  br i1 %146, label %147, label %116

147:                                              ; preds = %144, %105
  %148 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 13
  store ptr null, ptr %148, align 4
  %149 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12
  %150 = load volatile ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %161, label %152

152:                                              ; preds = %152, %147
  %153 = phi ptr [ %159, %152 ], [ %150, %147 ]
  %154 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = load ptr, ptr %153, align 4
  %157 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %155, ptr %157, align 4
  store volatile ptr %156, ptr %155, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %153, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %154, align 4
  %158 = getelementptr i8, ptr %153, i32 8
  store i32 0, ptr %158, align 4
  %159 = load volatile ptr, ptr %149, align 4
  %160 = icmp eq ptr %159, %149
  br i1 %160, label %161, label %152

161:                                              ; preds = %152, %147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dma_synchronize(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_dma, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #15, !srcloc !28
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #15, !srcloc !29
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.48, i32 noundef %7) #16
  br label %52

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %22 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #15
  %26 = and i32 %25, 1073741824
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  %29 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 18
  %30 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %2, i32 noundef 2) #15
  %31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr i8, ptr %32, i32 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #15, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %31) #15
  %35 = and i32 %34, 1073741824
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %37, %28
  call void @schedule() #15
  %38 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %2, i32 noundef 2) #15
  %39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr i8, ptr %40, i32 4
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #15, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %39) #15
  %43 = and i32 %42, 1073741824
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37

45:                                               ; preds = %37, %28
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %46

46:                                               ; preds = %45, %19
  %47 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 14
  call void @tasklet_kill(ptr noundef %47) #15
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.tegra_dma, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @__pm_runtime_idle(ptr noundef %50, i32 noundef 5) #15
  br label %52

52:                                               ; preds = %46, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %153, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %153, label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #15
  %24 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  br label %25

25:                                               ; preds = %29, %21
  %26 = phi ptr [ %24, %21 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %24
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -72
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %25

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %27, i32 -72
  %35 = getelementptr i8, ptr %27, i32 -4
  br label %108

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  br label %38

38:                                               ; preds = %42, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %37
  br i1 %41, label %125, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %40, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %38

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %40, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %37
  br i1 %50, label %51, label %105

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tegra_dma, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %55, i32 0, i32 4
  %57 = load i8, ptr %56, align 1, !range !26
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 36
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  br label %64

64:                                               ; preds = %59, %51
  %65 = phi i32 [ %63, %59 ], [ 0, %51 ]
  %66 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %70 = and i32 %69, 1073741824
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = getelementptr i8, ptr %40, i32 -8
  %74 = load i32, ptr %73, align 4
  br label %105

75:                                               ; preds = %64
  %76 = load ptr, ptr %52, align 4
  %77 = getelementptr inbounds %struct.tegra_dma, ptr %76, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %78, i32 0, i32 4
  %80 = load i8, ptr %79, align 1, !range !26
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i32 %69, i32 %65
  %83 = getelementptr i8, ptr %40, i32 -8
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %82, 65532
  %86 = sub nuw nsw i32 -4, %85
  %87 = add i32 %86, %84
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr i8, ptr %40, i32 12
  %90 = load i32, ptr %89, align 4
  br i1 %88, label %91, label %95

91:                                               ; preds = %75
  %92 = icmp eq i32 %90, 0
  %93 = add i32 %84, -4
  %94 = select i1 %92, i32 0, i32 %93
  br label %105

95:                                               ; preds = %75
  %96 = icmp ult i32 %87, %90
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = load i1, ptr @tegra_dma_sg_bytes_xferred.__already_done, align 1
  br i1 %98, label %101, label %99, !prof !10

99:                                               ; preds = %97
  store i1 true, ptr @tegra_dma_sg_bytes_xferred.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 882, i32 noundef 9, ptr noundef null) #15
  %100 = load i32, ptr %83, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %100, %99 ], [ %84, %97 ]
  %103 = add i32 %102, -4
  br label %105

104:                                              ; preds = %95
  store i32 %87, ptr %89, align 4
  br label %105

105:                                              ; preds = %104, %101, %91, %72, %47
  %106 = phi i32 [ %74, %72 ], [ 0, %47 ], [ %103, %101 ], [ %87, %104 ], [ %94, %91 ]
  %107 = getelementptr inbounds %struct.tegra_dma_desc, ptr %44, i32 0, i32 3
  br label %108

108:                                              ; preds = %105, %33
  %109 = phi i32 [ 0, %33 ], [ %106, %105 ]
  %110 = phi ptr [ %35, %33 ], [ %107, %105 ]
  %111 = phi ptr [ %34, %33 ], [ %44, %105 ]
  %112 = load i32, ptr %110, align 4
  %113 = icmp ne ptr %111, null
  %114 = icmp ne ptr %2, null
  %115 = and i1 %114, %113
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.tegra_dma_desc, ptr %111, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.tegra_dma_desc, ptr %111, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %109
  %122 = urem i32 %121, %118
  %123 = sub i32 %118, %122
  %124 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %116, %108, %38
  %126 = phi i32 [ %112, %116 ], [ %112, %108 ], [ 1, %38 ]
  %127 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 1), align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = tail call ptr @llvm.thread.pointer() #15
  %131 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = lshr i32 %132, 5
  %134 = getelementptr i32, ptr @__cpu_online_mask, i32 %133
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %132, 31
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %135
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %129
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  %141 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 7), align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %143, %140
  %144 = phi ptr [ %148, %143 ], [ %141, %140 ]
  %145 = load volatile ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.tracepoint_func, ptr %144, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  tail call void %145(ptr noundef %147, ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  %148 = getelementptr %struct.tracepoint_func, ptr %144, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %143

151:                                              ; preds = %143, %140
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  br label %152

152:                                              ; preds = %151, %129, %125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #15
  br label %153

153:                                              ; preds = %152, %19, %17
  %154 = phi i32 [ %126, %152 ], [ 0, %17 ], [ 0, %19 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dma_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.49) #16
  br label %38

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 4, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tegra_dma, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #15
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #15, !srcloc !28
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 0, i32 -1, ptr elementtype(i32) %23) #15, !srcloc !29
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.50) #16
  br label %38

32:                                               ; preds = %15
  tail call fastcc void @tdc_start_head_req(ptr noundef %0)
  %33 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 8
  %34 = load i8, ptr %33, align 4, !range !26
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 4294960) #15
  tail call fastcc void @tdc_configure_next_head_desc(ptr noundef %0)
  br label %38

38:                                               ; preds = %36, %32, %28, %11, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_dma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 31
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_dma, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.51, i32 noundef %6) #16
  br label %17

11:                                               ; preds = %2
  %12 = tail call ptr @dma_get_any_slave_channel(ptr noundef %4) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %struct.tegra_dma_channel, ptr %12, i32 0, i32 15
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %11, %8
  %18 = phi ptr [ null, %8 ], [ %12, %14 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_transfer_param(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  switch i32 %1, label %56 [
    i32 1, label %8
    i32 2, label %32
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 8
  br i1 %14, label %19, label %15

15:                                               ; preds = %19, %8
  %16 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.37) #16
  br label %27

19:                                               ; preds = %8
  %20 = trunc i32 %13 to i8
  %21 = lshr i8 -117, %20
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [8 x i32], ptr @switch.table.get_transfer_param.53, i32 0, i32 %13
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %15
  %28 = phi i32 [ 536870912, %15 ], [ %26, %24 ]
  store i32 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16, i32 6
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %5, align 4
  %31 = load i32, ptr %11, align 4
  store i32 %31, ptr %6, align 4
  store i32 268435456, ptr %4, align 4
  br label %60

32:                                               ; preds = %7
  %33 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16, i32 1
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %2, align 4
  %35 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  %38 = icmp ult i32 %37, 8
  br i1 %38, label %43, label %39

39:                                               ; preds = %43, %32
  %40 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.37) #16
  br label %51

43:                                               ; preds = %32
  %44 = trunc i32 %37 to i8
  %45 = lshr i8 -117, %44
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %39, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds [8 x i32], ptr @switch.table.get_transfer_param.53, i32 0, i32 %37
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %39
  %52 = phi i32 [ 536870912, %39 ], [ %50, %48 ]
  store i32 %52, ptr %3, align 4
  %53 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 16, i32 5
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %5, align 4
  %55 = load i32, ptr %35, align 4
  store i32 %55, ptr %6, align 4
  store i32 0, ptr %4, align 4
  br label %60

56:                                               ; preds = %7
  %57 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.36) #16
  br label %60

60:                                               ; preds = %56, %51, %27
  %61 = phi i32 [ -22, %56 ], [ 0, %51 ], [ 0, %27 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tegra_dma_desc_get(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %27, label %7

7:                                                ; preds = %24, %1
  %8 = phi ptr [ %25, %24 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -68
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %8, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %8, i32 -68
  %19 = getelementptr i8, ptr %8, i32 -72
  %20 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  br label %34

24:                                               ; preds = %13, %7
  %25 = load ptr, ptr %8, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %7

27:                                               ; preds = %24, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2304, i32 noundef 100) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %29, ptr noundef %0) #15
  %32 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %29, i32 0, i32 4
  store ptr @tegra_dma_tx_submit, ptr %32, align 8
  %33 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %29, i32 0, i32 1
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi ptr [ %33, %31 ], [ %18, %17 ]
  %36 = phi ptr [ %29, %31 ], [ %19, %17 ]
  store i32 0, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi ptr [ null, %27 ], [ %36, %34 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dma_desc_put(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.tegra_dma_desc, ptr %1, i32 0, i32 5
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load volatile ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_dma_desc, ptr %1, i32 0, i32 5, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %12, ptr %16, align 4
  store ptr %9, ptr %12, align 4
  store ptr %13, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %14, align 4
  br label %18

18:                                               ; preds = %11, %8, %2
  %19 = getelementptr inbounds %struct.tegra_dma_desc, ptr %1, i32 0, i32 4
  %20 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %21 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %19, ptr %21, align 4
  store ptr %20, ptr %19, align 4
  %23 = getelementptr inbounds %struct.tegra_dma_desc, ptr %1, i32 0, i32 4, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %19, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @handle_once_dma_done(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 6
  store i8 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 -8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = getelementptr i8, ptr %5, i32 -3
  %18 = load i8, ptr %17, align 1, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #15, !srcloc !34
  unreachable

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_chan, ptr %27, i32 0, i32 3
  store i32 %22, ptr %28, align 4
  store i32 0, ptr %7, align 4
  %29 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 6
  %34 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12
  %35 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %33, ptr %35, align 4
  store ptr %34, ptr %33, align 4
  %37 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 6, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %33, ptr %36, align 4
  %38 = load i32, ptr %29, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = phi i32 [ %38, %32 ], [ %30, %25 ]
  %41 = add i32 %40, 1
  store i32 %41, ptr %29, align 4
  %42 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 4
  %43 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %44 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %42, ptr %44, align 4
  store ptr %43, ptr %42, align 4
  %46 = getelementptr inbounds %struct.tegra_dma_desc, ptr %7, i32 0, i32 4, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %42, ptr %45, align 4
  br label %47

47:                                               ; preds = %39, %2
  %48 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %49 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %5, ptr %49, align 4
  store ptr %48, ptr %5, align 4
  store ptr %50, ptr %13, align 4
  store volatile ptr %5, ptr %50, align 4
  br i1 %1, label %61, label %51

51:                                               ; preds = %47
  %52 = load volatile ptr, ptr %4, align 4
  %53 = icmp eq ptr %52, %4
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tegra_dma, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 5) #15
  br label %61

60:                                               ; preds = %51
  tail call fastcc void @tdc_start_head_req(ptr noundef %0)
  br label %61

61:                                               ; preds = %60, %54, %47
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_tx_submit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_dma_channel, ptr %3, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.tegra_dma_desc, ptr %0, i32 0, i32 3
  store i32 1, ptr %6, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dma_chan, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 1) #15
  store i32 %11, ptr %8, align 4
  store i32 %11, ptr %0, align 4
  %12 = getelementptr inbounds %struct.tegra_dma_desc, ptr %0, i32 0, i32 5
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.tegra_dma_channel, ptr %3, i32 0, i32 10
  %17 = getelementptr inbounds %struct.tegra_dma_channel, ptr %3, i32 0, i32 10, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_dma_desc, ptr %0, i32 0, i32 5, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  store ptr %13, ptr %18, align 4
  store ptr %16, ptr %20, align 4
  store ptr %20, ptr %17, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %19, align 4
  br label %22

22:                                               ; preds = %15, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tdc_start_head_req(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -32
  %5 = load i32, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %6 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #15, !srcloc !14
  %8 = getelementptr i8, ptr %3, i32 -16
  %9 = load i32, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #15, !srcloc !14
  %12 = getelementptr i8, ptr %3, i32 -24
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #15, !srcloc !14
  %16 = getelementptr i8, ptr %3, i32 -20
  %17 = load i32, ptr %16, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #15, !srcloc !14
  %20 = getelementptr i8, ptr %3, i32 -28
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #15, !srcloc !14
  %24 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_dma, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %27, i32 0, i32 4
  %29 = load i8, ptr %28, align 1, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = getelementptr i8, ptr %3, i32 -12
  %33 = load i32, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #15, !srcloc !14
  br label %36

36:                                               ; preds = %31, %1
  %37 = load i32, ptr %4, align 4
  %38 = or i32 %37, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %39 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #15, !srcloc !14
  %40 = getelementptr i8, ptr %3, i32 -4
  store i8 1, ptr %40, align 4
  %41 = getelementptr i8, ptr %3, i32 12
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 6
  store i8 1, ptr %42, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @handle_cont_sngl_cycle_dma_done(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_dma_desc, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %4, i32 -8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.tegra_dma_desc, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = urem i32 %11, %13
  store i32 %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.tegra_dma_desc, ptr %6, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.tegra_dma_desc, ptr %6, i32 0, i32 6
  %20 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12
  %21 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %19, ptr %21, align 4
  store ptr %20, ptr %19, align 4
  %23 = getelementptr inbounds %struct.tegra_dma_desc, ptr %6, i32 0, i32 6, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %19, ptr %22, align 4
  %24 = load i32, ptr %15, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi i32 [ %24, %18 ], [ %16, %2 ]
  %27 = add i32 %26, 1
  store i32 %27, ptr %15, align 4
  %28 = getelementptr i8, ptr %4, i32 12
  store i32 0, ptr %28, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %113, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %29, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %4, ptr %35, align 4
  store ptr %3, ptr %4, align 4
  store ptr %36, ptr %32, align 4
  store volatile ptr %4, ptr %36, align 4
  %37 = getelementptr i8, ptr %4, i32 -4
  store i8 0, ptr %37, align 4
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 -4
  %40 = load i8, ptr %39, align 4, !range !26
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %108

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %46 = and i32 %45, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %47 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #15, !srcloc !14
  %48 = and i32 %45, 1073741823
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %49 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #15, !srcloc !14
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %53 = and i32 %52, 1073741824
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %56 = load ptr, ptr %43, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %52) #15, !srcloc !14
  br label %58

58:                                               ; preds = %55, %42
  %59 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 6
  store i8 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tegra_dma, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @__pm_runtime_idle(ptr noundef %63, i32 noundef 5) #15
  %65 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dma_chan_dev, ptr %66, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.45) #16
  %68 = load volatile ptr, ptr %3, align 4
  %69 = icmp eq ptr %68, %3
  br i1 %69, label %110, label %70

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9
  %72 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 9, i32 1
  %73 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11
  %74 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 11, i32 1
  %75 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12
  %76 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 12, i32 1
  br label %77

77:                                               ; preds = %105, %70
  %78 = phi ptr [ %68, %70 ], [ %106, %105 ]
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  %83 = load ptr, ptr %72, align 4
  store ptr %78, ptr %72, align 4
  store ptr %71, ptr %78, align 4
  store ptr %83, ptr %79, align 4
  store volatile ptr %78, ptr %83, align 4
  %84 = getelementptr i8, ptr %78, i32 -3
  %85 = load i8, ptr %84, align 1, !range !26
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %77
  %88 = getelementptr i8, ptr %78, i32 8
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.tegra_dma_desc, ptr %89, i32 0, i32 3
  store i32 3, ptr %90, align 4
  %91 = getelementptr inbounds %struct.tegra_dma_desc, ptr %89, i32 0, i32 4
  %92 = load ptr, ptr %74, align 4
  store ptr %91, ptr %74, align 4
  store ptr %73, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tegra_dma_desc, ptr %89, i32 0, i32 4, i32 1
  store ptr %92, ptr %93, align 4
  store volatile ptr %91, ptr %92, align 4
  %94 = getelementptr inbounds %struct.tegra_dma_desc, ptr %89, i32 0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.tegra_dma_desc, ptr %89, i32 0, i32 6
  %99 = load ptr, ptr %76, align 4
  store ptr %98, ptr %76, align 4
  store ptr %75, ptr %98, align 4
  %100 = getelementptr inbounds %struct.tegra_dma_desc, ptr %89, i32 0, i32 6, i32 1
  store ptr %99, ptr %100, align 4
  store volatile ptr %98, ptr %99, align 4
  %101 = load i32, ptr %94, align 4
  br label %102

102:                                              ; preds = %97, %87
  %103 = phi i32 [ %101, %97 ], [ %95, %87 ]
  %104 = add i32 %103, 1
  store i32 %104, ptr %94, align 4
  br label %105

105:                                              ; preds = %102, %77
  %106 = load volatile ptr, ptr %3, align 4
  %107 = icmp eq ptr %106, %3
  br i1 %107, label %110, label %77

108:                                              ; preds = %31
  br i1 %1, label %113, label %109

109:                                              ; preds = %108
  tail call fastcc void @tdc_configure_next_head_desc(ptr noundef %0) #15
  br label %113

110:                                              ; preds = %105, %58
  %111 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 13
  store ptr null, ptr %111, align 4
  %112 = getelementptr inbounds %struct.tegra_dma_desc, ptr %6, i32 0, i32 3
  store i32 3, ptr %112, align 4
  br label %113

113:                                              ; preds = %110, %109, %108, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tdc_configure_next_head_desc(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %76, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 -32
  %8 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %11, i32 0, i32 3
  %13 = load i8, ptr %12, align 4, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %16 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -2147483648) #15, !srcloc !14
  br label %38

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %20) #15
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.tegra_dma, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %26 = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #15, !srcloc !14
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.tegra_dma, ptr %28, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ %30, %25 ], [ %23, %19 ]
  %33 = phi ptr [ %28, %25 ], [ %21, %19 ]
  %34 = getelementptr inbounds %struct.tegra_dma, ptr %33, i32 0, i32 7
  %35 = add i32 %32, 1
  store i32 %35, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %36 = load i16, ptr %20, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %38

38:                                               ; preds = %31, %15
  %39 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #15, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !18
  %43 = and i32 %42, 1073741824
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.46) #16
  br label %75

49:                                               ; preds = %38
  %50 = getelementptr i8, ptr %4, i32 -24
  %51 = load i32, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #15, !srcloc !14
  %54 = getelementptr i8, ptr %4, i32 -28
  %55 = load i32, ptr %54, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %56 = load ptr, ptr %39, align 4
  %57 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #15, !srcloc !14
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.tegra_dma, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %60, i32 0, i32 4
  %62 = load i8, ptr %61, align 1, !range !26
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %49
  %65 = getelementptr i8, ptr %4, i32 -12
  %66 = load i32, ptr %65, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %67 = load ptr, ptr %39, align 4
  %68 = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #15, !srcloc !14
  br label %69

69:                                               ; preds = %64, %49
  %70 = load i32, ptr %7, align 4
  %71 = or i32 %70, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %72 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #15, !srcloc !14
  %73 = getelementptr i8, ptr %4, i32 -4
  store i8 1, ptr %73, align 4
  %74 = getelementptr i8, ptr %4, i32 12
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %69, %45
  tail call fastcc void @tegra_dma_resume(ptr noundef %0) #15
  br label %76

76:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dma_resume(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %10 = getelementptr inbounds %struct.tegra_dma_channel, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #15, !srcloc !14
  br label %29

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %14) #15
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.tegra_dma, ptr %15, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 375, i32 noundef 9, ptr noundef null) #15
  br label %26

20:                                               ; preds = %13
  %21 = add i32 %17, -1
  store i32 %21, ptr %16, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %24 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -2147483648) #15, !srcloc !14
  br label %26

26:                                               ; preds = %23, %20, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %27 = load i16, ptr %14, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %29

29:                                               ; preds = %26, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_dev_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %19, %1
  %9 = phi i32 [ %20, %19 ], [ 0, %1 ]
  %10 = getelementptr %struct.tegra_dma, ptr %3, i32 0, i32 8, i32 %9, i32 14
  tail call void @tasklet_kill(ptr noundef %10) #15
  %11 = getelementptr %struct.tegra_dma, ptr %3, i32 0, i32 8, i32 %9, i32 5
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #15
  %13 = getelementptr %struct.tegra_dma, ptr %3, i32 0, i32 8, i32 %9, i32 6
  %14 = load i8, ptr %13, align 4, !range !26
  %15 = icmp eq i8 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #15
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.52, i32 noundef %9) #16
  br label %26

19:                                               ; preds = %8
  %20 = add nuw i32 %9, 1
  %21 = load ptr, ptr %4, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %8, label %24

24:                                               ; preds = %19, %1
  %25 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #15
  br label %26

26:                                               ; preds = %24, %16
  %27 = phi i32 [ %25, %24 ], [ -16, %16 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_dev_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @tegra_dma_init_hw(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #15
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %4, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dma_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #15
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 320866}
!13 = !{i64 2154368856}
!14 = !{i64 5086235}
!15 = !{i64 2153315836}
!16 = !{i64 2153315988}
!17 = !{i64 5086653}
!18 = !{i64 2154370505}
!19 = !{i64 2154369861}
!20 = !{i64 2148922940}
!21 = !{i64 2148918764}
!22 = !{i64 2148918839, i64 2148918866, i64 2148918913, i64 2148918935, i64 2148918963, i64 2148918983}
!23 = !{i64 2148945943}
!24 = !{i64 2153295445}
!25 = !{i64 2153295627}
!26 = !{i8 0, i8 2}
!27 = !{i64 2147908617}
!28 = !{i64 406927, i64 2147896898, i64 2147896924, i64 2147896971, i64 2147896993, i64 2147897021, i64 2147897041}
!29 = !{i64 393496, i64 393521, i64 393543, i64 393559, i64 393571, i64 393591, i64 393615, i64 393631, i64 393643}
!30 = !{i64 2147908743}
!31 = !{i64 2153203132}
!32 = !{i64 2153278596}
!33 = !{i64 2153278780}
!34 = !{i64 2153202196, i64 2153202683, i64 2153202233, i64 2153202289, i64 2153202323, i64 2153202347, i64 2153202388, i64 2153202409, i64 2153202437, i64 2153202471}
