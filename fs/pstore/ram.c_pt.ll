; ModuleID = '/llk/IR/fs/pstore/ram.c_pt.bc'
source_filename = "../fs/pstore/ram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ramoops_context = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.persistent_ram_ecc_info, i32, i32, i32, i32, i32, i32, i32, %struct.pstore_info }
%struct.persistent_ram_ecc_info = type { i32, i32, i32, i32, ptr }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.ramoops_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.persistent_ram_ecc_info }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.persistent_ram_zone = type { i32, i32, ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, i32, ptr, ptr, ptr, i32, i32, %struct.persistent_ram_ecc_info, ptr, i32 }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_record_size = internal constant [20 x i8] c"ramoops.record_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@record_size = internal global i32 4096, align 4
@__param_record_size = internal constant %struct.kernel_param { ptr @__param_str_record_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @record_size } }, section "__param", align 4
@__UNIQUE_ID_record_sizetype166 = internal constant [35 x i8] c"ramoops.parmtype=record_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_record_size167 = internal constant [62 x i8] c"ramoops.parm=record_size:size of each dump done on oops/panic\00", section ".modinfo", align 1
@__param_str_console_size = internal constant [21 x i8] c"ramoops.console_size\00", align 1
@ramoops_console_size = internal global i32 4096, align 4
@__param_console_size = internal constant %struct.kernel_param { ptr @__param_str_console_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @ramoops_console_size } }, section "__param", align 4
@__UNIQUE_ID_console_sizetype168 = internal constant [36 x i8] c"ramoops.parmtype=console_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_console_size169 = internal constant [53 x i8] c"ramoops.parm=console_size:size of kernel console log\00", section ".modinfo", align 1
@__param_str_ftrace_size = internal constant [20 x i8] c"ramoops.ftrace_size\00", align 1
@ramoops_ftrace_size = internal global i32 4096, align 4
@__param_ftrace_size = internal constant %struct.kernel_param { ptr @__param_str_ftrace_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @ramoops_ftrace_size } }, section "__param", align 4
@__UNIQUE_ID_ftrace_sizetype170 = internal constant [35 x i8] c"ramoops.parmtype=ftrace_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_ftrace_size171 = internal constant [44 x i8] c"ramoops.parm=ftrace_size:size of ftrace log\00", section ".modinfo", align 1
@__param_str_pmsg_size = internal constant [18 x i8] c"ramoops.pmsg_size\00", align 1
@ramoops_pmsg_size = internal global i32 4096, align 4
@__param_pmsg_size = internal constant %struct.kernel_param { ptr @__param_str_pmsg_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @ramoops_pmsg_size } }, section "__param", align 4
@__UNIQUE_ID_pmsg_sizetype172 = internal constant [33 x i8] c"ramoops.parmtype=pmsg_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_pmsg_size173 = internal constant [54 x i8] c"ramoops.parm=pmsg_size:size of user space message log\00", section ".modinfo", align 1
@__param_str_mem_address = internal constant [20 x i8] c"ramoops.mem_address\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@mem_address = internal global i64 0, align 8
@__param_mem_address = internal constant %struct.kernel_param { ptr @__param_str_mem_address, ptr null, ptr @param_ops_ullong, i16 256, i8 -1, i8 2, %union.anon.4 { ptr @mem_address } }, section "__param", align 4
@__UNIQUE_ID_mem_addresstype174 = internal constant [36 x i8] c"ramoops.parmtype=mem_address:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_address175 = internal constant [77 x i8] c"ramoops.parm=mem_address:start of reserved RAM used to store oops/panic logs\00", section ".modinfo", align 1
@__param_str_mem_size = internal constant [17 x i8] c"ramoops.mem_size\00", align 1
@mem_size = internal global i32 0, align 4
@__param_mem_size = internal constant %struct.kernel_param { ptr @__param_str_mem_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @mem_size } }, section "__param", align 4
@__UNIQUE_ID_mem_sizetype176 = internal constant [32 x i8] c"ramoops.parmtype=mem_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_size177 = internal constant [73 x i8] c"ramoops.parm=mem_size:size of reserved RAM used to store oops/panic logs\00", section ".modinfo", align 1
@__param_str_mem_type = internal constant [17 x i8] c"ramoops.mem_type\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mem_type = internal global i32 0, align 4
@__param_mem_type = internal constant %struct.kernel_param { ptr @__param_str_mem_type, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @mem_type } }, section "__param", align 4
@__UNIQUE_ID_mem_typetype178 = internal constant [31 x i8] c"ramoops.parmtype=mem_type:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_type179 = internal constant [86 x i8] c"ramoops.parm=mem_type:memory type: 0=write-combined (default), 1=unbuffered, 2=cached\00", section ".modinfo", align 1
@__param_str_max_reason = internal constant [19 x i8] c"ramoops.max_reason\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ramoops_max_reason = internal global i32 -1, align 4
@__param_max_reason = internal constant %struct.kernel_param { ptr @__param_str_max_reason, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @ramoops_max_reason } }, section "__param", align 4
@__UNIQUE_ID_max_reasontype180 = internal constant [32 x i8] c"ramoops.parmtype=max_reason:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_reason181 = internal constant [82 x i8] c"ramoops.parm=max_reason:maximum reason for kmsg dump (default 2: Oops and Panic) \00", section ".modinfo", align 1
@__param_str_ecc = internal constant [12 x i8] c"ramoops.ecc\00", align 1
@ramoops_ecc = internal global i32 0, align 4
@__param_ecc = internal constant %struct.kernel_param { ptr @__param_str_ecc, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @ramoops_ecc } }, section "__param", align 4
@__UNIQUE_ID_ecctype182 = internal constant [25 x i8] c"ramoops.parmtype=ecc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ramoops_ecc183 = internal constant [151 x i8] c"ramoops.parm=ramoops_ecc:if non-zero, the option enables ECC support and specifies ECC buffer size in bytes (1 is a special value, means 16 bytes ECC)\00", section ".modinfo", align 1
@__param_str_dump_oops = internal constant [18 x i8] c"ramoops.dump_oops\00", align 1
@ramoops_dump_oops = internal global i32 -1, align 4
@__param_dump_oops = internal constant %struct.kernel_param { ptr @__param_str_dump_oops, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.4 { ptr @ramoops_dump_oops } }, section "__param", align 4
@__UNIQUE_ID_dump_oopstype184 = internal constant [31 x i8] c"ramoops.parmtype=dump_oops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_oops185 = internal constant [116 x i8] c"ramoops.parm=dump_oops:(deprecated: use max_reason instead) set to 1 to dump oopses & panics, 0 to only dump panics\00", section ".modinfo", align 1
@__initcall__kmod_ramoops__186_966_ramoops_init2 = internal global ptr @ramoops_init, section ".initcall2.init", align 4
@ramoops_driver = internal global %struct.platform_driver { ptr @ramoops_probe, ptr @ramoops_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ramoops_exit = internal global ptr @ramoops_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file187 = internal constant [31 x i8] c"ramoops.file=fs/pstore/ramoops\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [20 x i8] c"ramoops.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [59 x i8] c"ramoops.author=Marco Stornelli <marco.stornelli@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [49 x i8] c"ramoops.description=RAM Oops/Panic logger/driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"\016ramoops: using module parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ramoops\00", align 1
@dummy = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"\016ramoops: could not create platform device: %ld\0A\00", align 1
@dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ramoops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@oops_cxt = internal global %struct.ramoops_context { ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.persistent_ram_ecc_info zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.pstore_info { ptr null, ptr @.str.1, %struct.semaphore zeroinitializer, ptr null, i32 0, %struct.mutex zeroinitializer, i32 0, i32 0, ptr null, ptr @ramoops_pstore_open, ptr null, ptr @ramoops_pstore_read, ptr @ramoops_pstore_write, ptr @ramoops_pstore_write_user, ptr @ramoops_pstore_erase } }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\013ramoops: already initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\013ramoops: NULL platform data\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"\013ramoops: The memory size and the record/console size must be non-zero\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dmesg\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pmsg\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\013ramoops: cannot allocate pstore crash dump buffer\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\013ramoops: registering with pstore failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\016ramoops: using 0x%lx@0x%llx, ecc: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"====%lld.%lu-%c\0A%n\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"====%lld.%lu\0A%n\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ramoops_pstore_write._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ramoops_pstore_write = private unnamed_addr constant [21 x i8] c"ramoops_pstore_write\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\014ramoops: PMSG shouldn't call %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"====%lld.%06lu-%c\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"failed to locate DT /reserved-memory resource\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"unbuffered\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"no-dump-oops\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"mem-type\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"record-size\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"console-size\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"ftrace-size\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"pmsg-size\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"ecc-size\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"max-reason\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"reserved-memory\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"failed to parse property %s: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"%s %u > INT_MAX\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"%s record size == 0 (%zu / %u)\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"%s record count == 0 (%zu / %zu)\0A\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"%s zone size == 0\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"ramoops:%s\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"ramoops:%s(%d/%d)\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"failed to request %s mem region (0x%zx@0x%llx): %d\0A\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_console_size169, ptr @__UNIQUE_ID_console_sizetype168, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_dump_oops185, ptr @__UNIQUE_ID_dump_oopstype184, ptr @__UNIQUE_ID_ecctype182, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_ftrace_size171, ptr @__UNIQUE_ID_ftrace_sizetype170, ptr @__UNIQUE_ID_license188, ptr @__UNIQUE_ID_max_reason181, ptr @__UNIQUE_ID_max_reasontype180, ptr @__UNIQUE_ID_mem_address175, ptr @__UNIQUE_ID_mem_addresstype174, ptr @__UNIQUE_ID_mem_size177, ptr @__UNIQUE_ID_mem_sizetype176, ptr @__UNIQUE_ID_mem_type179, ptr @__UNIQUE_ID_mem_typetype178, ptr @__UNIQUE_ID_pmsg_size173, ptr @__UNIQUE_ID_pmsg_sizetype172, ptr @__UNIQUE_ID_ramoops_ecc183, ptr @__UNIQUE_ID_record_size167, ptr @__UNIQUE_ID_record_sizetype166, ptr @__exitcall_ramoops_exit, ptr @__initcall__kmod_ramoops__186_966_ramoops_init2, ptr @__param_console_size, ptr @__param_dump_oops, ptr @__param_ecc, ptr @__param_ftrace_size, ptr @__param_max_reason, ptr @__param_mem_address, ptr @__param_mem_size, ptr @__param_mem_type, ptr @__param_pmsg_size, ptr @__param_record_size, ptr @ramoops_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ramoops_init() #0 section ".init.text" {
  tail call fastcc void @ramoops_register_dummy() #13
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ramoops_driver, ptr noundef null) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @dummy, align 4
  tail call void @platform_device_unregister(ptr noundef %4) #14
  store ptr null, ptr @dummy, align 4
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ramoops_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ramoops_driver) #14
  %1 = load ptr, ptr @dummy, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #14
  store ptr null, ptr @dummy, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ramoops_register_dummy() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = alloca %struct.ramoops_platform_data, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  %3 = load i32, ptr @mem_size, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  %7 = getelementptr inbounds i8, ptr %2, i32 28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %7, i8 0, i32 28, i1 false)
  %8 = load i32, ptr @mem_size, align 4
  store i32 %8, ptr %2, align 4
  %9 = load i64, ptr @mem_address, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr @mem_type, align 4
  %13 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr @record_size, align 4
  %15 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr @ramoops_console_size, align 4
  %17 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = load i32, ptr @ramoops_ftrace_size, align 4
  %19 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr @ramoops_pmsg_size, align 4
  %21 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr @ramoops_max_reason, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load i32, ptr @ramoops_dump_oops, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 0
  %29 = select i1 %28, i32 1, i32 2
  br label %30

30:                                               ; preds = %27, %24, %5
  %31 = phi i32 [ %29, %27 ], [ %22, %5 ], [ 2, %24 ]
  %32 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 8
  store i32 1, ptr %33, align 4
  %34 = load i32, ptr @ramoops_ecc, align 4
  %35 = icmp eq i32 %34, 1
  %36 = select i1 %35, i32 16, i32 %34
  %37 = getelementptr inbounds %struct.ramoops_platform_data, ptr %2, i32 0, i32 9, i32 1
  store i32 %36, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #14
  %38 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #14
  store ptr @.str.1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 7
  store ptr %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 8
  store i32 56, ptr %41, align 8
  %42 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #14
  store ptr %42, ptr @dummy, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = ptrtoint ptr %42 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %45) #15
  store ptr null, ptr @dummy, align 4
  br label %47

47:                                               ; preds = %44, %30, %0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramoops_probe(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ramoops_platform_data, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  %15 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %338

19:                                               ; preds = %1
  %20 = icmp eq ptr %12, null
  br i1 %20, label %173, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = icmp ne ptr %14, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %173, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %28, i8 0, i32 44, i1 false)
  %29 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.17) #15
  br label %338

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %29, align 4
  %36 = add i32 %34, 1
  %37 = sub i32 %36, %35
  store i32 %37, ptr %10, align 4
  %38 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 1
  store i32 %35, ptr %38, align 4
  %39 = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.18, ptr noundef null) #14
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = tail call ptr @of_find_property(ptr noundef nonnull %23, ptr noundef nonnull @.str.19, ptr noundef null) #14
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i32 2, i32 1
  %46 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 7
  store i32 %45, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4
  %47 = load ptr, ptr %22, align 8
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef nonnull @.str.20, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #14
  %49 = call i32 @llvm.smin.i32(i32 %48, i32 0) #14
  %50 = icmp eq i32 %49, -22
  br i1 %50, label %56, label %51

51:                                               ; preds = %32
  %52 = icmp slt i32 %48, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53, %32
  %57 = phi i32 [ %54, %53 ], [ %41, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %58 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4
  %59 = load ptr, ptr %22, align 8
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef %59, ptr noundef nonnull @.str.21, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #14
  %61 = call i32 @llvm.smin.i32(i32 %60, i32 0) #14
  %62 = icmp eq i32 %61, -22
  br i1 %62, label %71, label %65

63:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.20, i32 noundef %54) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %338

64:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.20, i32 noundef %49) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %170

65:                                               ; preds = %56
  %66 = icmp slt i32 %60, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.21, i32 noundef %68) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %338

71:                                               ; preds = %67, %56
  %72 = phi i32 [ %68, %67 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  store i32 %72, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4
  %73 = load ptr, ptr %22, align 8
  %74 = call i32 @of_property_read_variable_u32_array(ptr noundef %73, ptr noundef nonnull @.str.22, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #14
  %75 = call i32 @llvm.smin.i32(i32 %74, i32 0) #14
  %76 = icmp eq i32 %75, -22
  br i1 %76, label %84, label %78

77:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21, i32 noundef %61) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %170

78:                                               ; preds = %71
  %79 = icmp slt i32 %74, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef %81) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %338

84:                                               ; preds = %80, %71
  %85 = phi i32 [ %81, %80 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %86 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 4
  store i32 %85, ptr %86, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4
  %87 = load ptr, ptr %22, align 8
  %88 = call i32 @of_property_read_variable_u32_array(ptr noundef %87, ptr noundef nonnull @.str.23, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #14
  %89 = call i32 @llvm.smin.i32(i32 %88, i32 0) #14
  %90 = icmp eq i32 %89, -22
  br i1 %90, label %98, label %92

91:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, i32 noundef %75) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %170

92:                                               ; preds = %84
  %93 = icmp slt i32 %88, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %92
  %95 = load i32, ptr %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, i32 noundef %95) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %338

98:                                               ; preds = %94, %84
  %99 = phi i32 [ %95, %94 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %100 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 5
  store i32 %99, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4
  %101 = load ptr, ptr %22, align 8
  %102 = call i32 @of_property_read_variable_u32_array(ptr noundef %101, ptr noundef nonnull @.str.24, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #14
  %103 = call i32 @llvm.smin.i32(i32 %102, i32 0) #14
  %104 = icmp eq i32 %103, -22
  br i1 %104, label %112, label %106

105:                                              ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.23, i32 noundef %89) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %170

106:                                              ; preds = %98
  %107 = icmp slt i32 %102, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %106
  %109 = load i32, ptr %5, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24, i32 noundef %109) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %338

112:                                              ; preds = %108, %98
  %113 = phi i32 [ %109, %108 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %114 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 6
  store i32 %113, ptr %114, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4
  %115 = load ptr, ptr %22, align 8
  %116 = call i32 @of_property_read_variable_u32_array(ptr noundef %115, ptr noundef nonnull @.str.25, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #14
  %117 = call i32 @llvm.smin.i32(i32 %116, i32 0) #14
  %118 = icmp eq i32 %117, -22
  br i1 %118, label %126, label %120

119:                                              ; preds = %106
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef %103) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %170

120:                                              ; preds = %112
  %121 = icmp slt i32 %116, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %120
  %123 = load i32, ptr %4, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %123) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %338

126:                                              ; preds = %122, %112
  %127 = phi i32 [ %123, %122 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %128 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 9, i32 1
  store i32 %127, ptr %128, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %129 = load ptr, ptr %22, align 8
  %130 = call i32 @of_property_read_variable_u32_array(ptr noundef %129, ptr noundef nonnull @.str.26, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #14
  %131 = call i32 @llvm.smin.i32(i32 %130, i32 0) #14
  %132 = icmp eq i32 %131, -22
  br i1 %132, label %140, label %134

133:                                              ; preds = %120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.25, i32 noundef %117) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %170

134:                                              ; preds = %126
  %135 = icmp slt i32 %130, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %134
  %137 = load i32, ptr %3, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26, i32 noundef %137) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %338

140:                                              ; preds = %136, %126
  %141 = phi i32 [ %137, %136 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %142 = getelementptr inbounds %struct.ramoops_platform_data, ptr %10, i32 0, i32 8
  store i32 %141, ptr %142, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  %143 = load ptr, ptr %22, align 8
  %144 = call i32 @of_property_read_variable_u32_array(ptr noundef %143, ptr noundef nonnull @.str.27, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #14
  %145 = call i32 @llvm.smin.i32(i32 %144, i32 0) #14
  %146 = icmp eq i32 %145, -22
  br i1 %146, label %153, label %148

147:                                              ; preds = %134
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26, i32 noundef %131) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %170

148:                                              ; preds = %140
  %149 = icmp slt i32 %144, 0
  br i1 %149, label %167, label %150

150:                                              ; preds = %148
  %151 = load i32, ptr %2, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %150, %140
  %154 = phi i32 [ %151, %150 ], [ %45, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  store i32 %154, ptr %46, align 4
  %155 = call ptr @of_get_parent(ptr noundef nonnull %23) #14
  %156 = call zeroext i1 @of_node_name_eq(ptr noundef %155, ptr noundef nonnull @.str.28) #14
  %157 = xor i1 %156, true
  %158 = icmp eq i32 %85, 0
  %159 = select i1 %157, i1 %158, i1 false
  %160 = icmp eq i32 %99, 0
  %161 = select i1 %159, i1 %160, i1 false
  %162 = icmp eq i32 %113, 0
  %163 = select i1 %161, i1 %162, i1 false
  %164 = icmp eq i32 %127, 0
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %168, label %169

166:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef %151) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %338

167:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %145) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %170

168:                                              ; preds = %153
  store i32 %72, ptr %86, align 4
  store i32 %72, ptr %114, align 4
  br label %169

169:                                              ; preds = %168, %153
  call void @of_node_put(ptr noundef %155) #14
  br label %179

170:                                              ; preds = %167, %147, %133, %119, %105, %91, %77, %64
  %171 = phi i32 [ %49, %64 ], [ %61, %77 ], [ %75, %91 ], [ %89, %105 ], [ %103, %119 ], [ %117, %133 ], [ %131, %147 ], [ %145, %167 ]
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %338, label %179

173:                                              ; preds = %21, %19
  %174 = icmp eq ptr %14, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %173
  %176 = load i32, ptr %14, align 4
  br label %179

177:                                              ; preds = %173
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %338

179:                                              ; preds = %175, %170, %169
  %180 = phi i32 [ %176, %175 ], [ %37, %170 ], [ %37, %169 ]
  %181 = phi ptr [ %14, %175 ], [ %10, %170 ], [ %10, %169 ]
  %182 = phi i32 [ -22, %175 ], [ 0, %170 ], [ 0, %169 ]
  %183 = icmp eq i32 %180, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 4
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %196, %179
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %338

202:                                              ; preds = %184
  %203 = call i32 @llvm.ctpop.i32(i32 %186) #14, !range !9
  %204 = icmp ult i32 %203, 2
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = call i32 @llvm.ctlz.i32(i32 %186, i1 true) #14, !range !9
  %207 = lshr i32 -2147483648, %206
  store i32 %207, ptr %185, align 4
  br label %208

208:                                              ; preds = %205, %202, %196, %192, %188
  %209 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  %212 = call i32 @llvm.ctpop.i32(i32 %210) #14, !range !9
  %213 = icmp ult i32 %212, 2
  %214 = or i1 %211, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %208
  %216 = call i32 @llvm.ctlz.i32(i32 %210, i1 false) #14, !range !9
  %217 = lshr i32 -2147483648, %216
  store i32 %217, ptr %209, align 4
  br label %218

218:                                              ; preds = %215, %208
  %219 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 5
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  %222 = call i32 @llvm.ctpop.i32(i32 %220) #14, !range !9
  %223 = icmp ult i32 %222, 2
  %224 = or i1 %221, %223
  br i1 %224, label %228, label %225

225:                                              ; preds = %218
  %226 = call i32 @llvm.ctlz.i32(i32 %220, i1 false) #14, !range !9
  %227 = lshr i32 -2147483648, %226
  store i32 %227, ptr %219, align 4
  br label %228

228:                                              ; preds = %225, %218
  %229 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 6
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  %232 = call i32 @llvm.ctpop.i32(i32 %230) #14, !range !9
  %233 = icmp ult i32 %232, 2
  %234 = or i1 %231, %233
  br i1 %234, label %238, label %235

235:                                              ; preds = %228
  %236 = call i32 @llvm.ctlz.i32(i32 %230, i1 false) #14, !range !9
  %237 = lshr i32 -2147483648, %236
  store i32 %237, ptr %229, align 4
  br label %238

238:                                              ; preds = %235, %228
  store i32 %180, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %239 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 1
  %240 = load i32, ptr %239, align 4
  store i32 %240, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %241 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 2
  %242 = load i32, ptr %241, align 4
  store i32 %242, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %243 = load i32, ptr %185, align 4
  store i32 %243, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 7), align 4
  %244 = load i32, ptr %209, align 4
  store i32 %244, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %245 = load i32, ptr %219, align 4
  store i32 %245, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 9), align 4
  %246 = load i32, ptr %229, align 4
  store i32 %246, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  %247 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 8
  %248 = load i32, ptr %247, align 4
  store i32 %248, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 11), align 4
  %249 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12), ptr noundef align 4 dereferenceable(20) %249, i32 20, i1 false)
  store i32 %240, ptr %11, align 4
  %250 = add i32 %244, %245
  %251 = add i32 %250, %246
  %252 = sub i32 %180, %251
  %253 = call fastcc i32 @ramoops_init_przs(ptr noundef nonnull @.str.6, ptr noundef %12, ptr noundef nonnull @oops_cxt, ptr noundef nonnull %11, i32 noundef %252, i32 noundef %243, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), i32 noundef 0, i32 noundef 0)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %338

255:                                              ; preds = %238
  %256 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %257 = call fastcc i32 @ramoops_init_prz(ptr noundef nonnull @.str.7, ptr noundef %12, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 1), ptr noundef nonnull %11, i32 noundef %256)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %336

259:                                              ; preds = %255
  %260 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 11), align 4
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  %263 = load i32, ptr @nr_cpu_ids, align 4
  %264 = select i1 %262, i32 1, i32 %263
  store i32 %264, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  %265 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 9), align 4
  %266 = call fastcc i32 @ramoops_init_przs(ptr noundef nonnull @.str.8, ptr noundef %12, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), ptr noundef nonnull %11, i32 noundef %265, i32 noundef -1, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), i32 noundef 332032, i32 noundef %261)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %333

268:                                              ; preds = %259
  %269 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  %270 = call fastcc i32 @ramoops_init_prz(ptr noundef nonnull @.str.9, ptr noundef %12, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 3), ptr noundef nonnull %11, i32 noundef %269)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %333

272:                                              ; preds = %268
  store ptr @oops_cxt, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %273 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  store i32 1, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  %276 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 7
  %277 = load i32, ptr %276, align 4
  store i32 %277, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 7), align 4
  br label %278

278:                                              ; preds = %275, %272
  %279 = phi i32 [ 1, %275 ], [ 0, %272 ]
  %280 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = or i32 %279, 2
  store i32 %283, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  br label %284

284:                                              ; preds = %282, %278
  %285 = phi i32 [ %283, %282 ], [ %279, %278 ]
  %286 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = or i32 %285, 4
  store i32 %289, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  br label %290

290:                                              ; preds = %288, %284
  %291 = phi i32 [ %289, %288 ], [ %285, %284 ]
  %292 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = or i32 %291, 8
  store i32 %295, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 6), align 4
  br label %296

296:                                              ; preds = %294, %290
  %297 = phi i32 [ %295, %294 ], [ %291, %290 ]
  %298 = and i32 %297, 1
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %309, label %300

300:                                              ; preds = %296
  %301 = load ptr, ptr @oops_cxt, align 4
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr inbounds %struct.persistent_ram_zone, ptr %302, i32 0, i32 8
  %304 = load i32, ptr %303, align 4
  store i32 %304, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 4), align 4
  %305 = call noalias align 64 ptr @__kmalloc(i32 noundef %304, i32 noundef 3520) #16
  store ptr %305, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 3), align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %330

309:                                              ; preds = %300, %296
  %310 = call i32 @pstore_register(ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20)) #14
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  %314 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 3), align 4
  call void @kfree(ptr noundef %314) #14
  br label %330

315:                                              ; preds = %309
  %316 = load i32, ptr %181, align 4
  store i32 %316, ptr @mem_size, align 4
  %317 = load i32, ptr %239, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, ptr @mem_address, align 8
  %319 = load i32, ptr %185, align 4
  store i32 %319, ptr @record_size, align 4
  %320 = getelementptr inbounds %struct.ramoops_platform_data, ptr %181, i32 0, i32 7
  %321 = load i32, ptr %320, align 4
  store i32 %321, ptr @ramoops_max_reason, align 4
  %322 = load i32, ptr %209, align 4
  store i32 %322, ptr @ramoops_console_size, align 4
  %323 = load i32, ptr %229, align 4
  store i32 %323, ptr @ramoops_pmsg_size, align 4
  %324 = load i32, ptr %219, align 4
  store i32 %324, ptr @ramoops_ftrace_size, align 4
  %325 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %326 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %327 = zext i32 %326 to i64
  %328 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12, i32 1), align 4
  %329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %325, i64 noundef %327, i32 noundef %328) #15
  br label %338

330:                                              ; preds = %312, %307
  %331 = phi i32 [ %310, %312 ], [ -12, %307 ]
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 4), align 4
  %332 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 3), align 4
  call void @persistent_ram_free(ptr noundef %332) #14
  br label %333

333:                                              ; preds = %330, %268, %259
  %334 = phi i32 [ %266, %259 ], [ %270, %268 ], [ %331, %330 ]
  %335 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  call void @persistent_ram_free(ptr noundef %335) #14
  br label %336

336:                                              ; preds = %333, %255
  %337 = phi i32 [ %257, %255 ], [ %334, %333 ]
  call fastcc void @ramoops_free_przs()
  br label %338

338:                                              ; preds = %336, %315, %238, %200, %177, %170, %166, %139, %125, %111, %97, %83, %70, %63, %31, %17
  %339 = phi i32 [ 0, %315 ], [ -22, %17 ], [ %253, %238 ], [ %337, %336 ], [ %182, %200 ], [ -22, %177 ], [ %171, %170 ], [ -75, %166 ], [ -75, %139 ], [ -75, %125 ], [ -75, %111 ], [ -75, %97 ], [ -75, %83 ], [ -75, %70 ], [ -75, %63 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  ret i32 %339
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramoops_remove(ptr nocapture noundef readnone %0) #5 {
  tail call void @pstore_unregister(ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20)) #14
  %2 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 3), align 4
  tail call void @kfree(ptr noundef %2) #14
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 20, i32 4), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 3), align 4
  tail call void @persistent_ram_free(ptr noundef %3) #14
  %4 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  tail call void @persistent_ram_free(ptr noundef %4) #14
  tail call fastcc void @ramoops_free_przs()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ramoops_init_przs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #5 {
  %10 = icmp eq i32 %4, 0
  %11 = icmp eq i32 %5, 0
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %94

14:                                               ; preds = %9
  %15 = icmp slt i32 %5, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %94, label %19

19:                                               ; preds = %16
  %20 = udiv i32 %4, %17
  %21 = icmp ugt i32 %17, %4
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef %0, i32 noundef %4, i32 noundef %17) #15
  br label %92

23:                                               ; preds = %14
  %24 = udiv i32 %4, %5
  store i32 %24, ptr %6, align 4
  %25 = icmp ugt i32 %5, %4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %0, i32 noundef %4, i32 noundef %5) #15
  br label %92

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %17, %19 ], [ %24, %23 ]
  %29 = phi i32 [ %20, %19 ], [ %5, %23 ]
  %30 = load i32, ptr %3, align 4
  %31 = add i32 %30, %4
  %32 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %33 = sub i32 %31, %32
  %34 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = zext i32 %30 to i64
  %38 = zext i32 %32 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %0, i32 noundef %4, i64 noundef %37, i32 noundef %34, i64 noundef %38) #15
  br label %92

39:                                               ; preds = %27
  %40 = udiv i32 %4, %28
  %41 = icmp ugt i32 %28, %4
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %0) #15
  br label %92

43:                                               ; preds = %39
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #14
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %92, label %46, !prof !10

46:                                               ; preds = %43
  %47 = extractvalue { i32, i1 } %44, 0
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %92, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %91, label %53

53:                                               ; preds = %82, %50
  %54 = phi i32 [ %89, %82 ], [ %51, %50 ]
  %55 = phi i32 [ %88, %82 ], [ 0, %50 ]
  %56 = icmp eq i32 %54, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %0) #14
  br label %62

59:                                               ; preds = %53
  %60 = add i32 %54, -1
  %61 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.36, ptr noundef %0, i32 noundef %55, i32 noundef %60) #14
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi ptr [ %58, %57 ], [ %61, %59 ]
  %64 = load i32, ptr %3, align 4
  %65 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %66 = tail call ptr @persistent_ram_new(i32 noundef %64, i32 noundef %40, i32 noundef %7, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12), i32 noundef %65, i32 noundef %8, ptr noundef %63) #14
  %67 = getelementptr ptr, ptr %48, i32 %55
  store ptr %66, ptr %67, align 4
  tail call void @kfree(ptr noundef %63) #14
  %68 = load ptr, ptr %67, align 4
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = ptrtoint ptr %68 to i32
  %72 = load i32, ptr %3, align 4
  %73 = zext i32 %72 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %0, i32 noundef %29, i64 noundef %73, i32 noundef %71) #15
  %74 = icmp sgt i32 %55, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %75, %70
  %76 = phi i32 [ %77, %75 ], [ %55, %70 ]
  %77 = add nsw i32 %76, -1
  %78 = getelementptr ptr, ptr %48, i32 %77
  %79 = load ptr, ptr %78, align 4
  tail call void @persistent_ram_free(ptr noundef %79) #14
  %80 = icmp ugt i32 %76, 1
  br i1 %80, label %75, label %81

81:                                               ; preds = %75, %70
  tail call void @kfree(ptr noundef nonnull %48) #14
  br label %92

82:                                               ; preds = %62
  %83 = load i32, ptr %3, align 4
  %84 = add i32 %83, %40
  store i32 %84, ptr %3, align 4
  %85 = tail call i32 @pstore_name_to_type(ptr noundef %0) #14
  %86 = load ptr, ptr %67, align 4
  %87 = getelementptr inbounds %struct.persistent_ram_zone, ptr %86, i32 0, i32 4
  store i32 %85, ptr %87, align 4
  %88 = add nuw i32 %55, 1
  %89 = load i32, ptr %6, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %53, label %91

91:                                               ; preds = %82, %50
  store ptr %48, ptr %2, align 4
  br label %94

92:                                               ; preds = %81, %46, %43, %42, %36, %26, %22
  %93 = phi i32 [ -12, %22 ], [ -12, %36 ], [ %71, %81 ], [ -12, %46 ], [ -12, %42 ], [ -12, %26 ], [ -12, %43 ]
  store i32 0, ptr %6, align 4
  br label %94

94:                                               ; preds = %92, %91, %16, %13
  %95 = phi i32 [ 0, %13 ], [ %93, %92 ], [ 0, %91 ], [ 0, %16 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ramoops_init_prz(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #5 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, %4
  %10 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %11 = sub i32 %9, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = zext i32 %8 to i64
  %16 = zext i32 %10 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %0, i32 noundef %4, i64 noundef %15, i32 noundef %12, i64 noundef %16) #15
  br label %34

17:                                               ; preds = %7
  %18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %0) #14
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %21 = tail call ptr @persistent_ram_new(i32 noundef %19, i32 noundef %4, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 12), i32 noundef %20, i32 noundef 2, ptr noundef %18) #14
  store ptr %21, ptr %2, align 4
  tail call void @kfree(ptr noundef %18) #14
  %22 = load ptr, ptr %2, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = ptrtoint ptr %22 to i32
  %26 = load i32, ptr %3, align 4
  %27 = zext i32 %26 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %0, i32 noundef %4, i64 noundef %27, i32 noundef %25) #15
  br label %34

28:                                               ; preds = %17
  %29 = load i32, ptr %3, align 4
  %30 = add i32 %29, %4
  store i32 %30, ptr %3, align 4
  %31 = tail call i32 @pstore_name_to_type(ptr noundef %0) #14
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.persistent_ram_zone, ptr %32, i32 0, i32 4
  store i32 %31, ptr %33, align 4
  br label %34

34:                                               ; preds = %28, %24, %14, %5
  %35 = phi i32 [ -12, %14 ], [ %25, %24 ], [ 0, %28 ], [ 0, %5 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ramoops_free_przs() unnamed_addr #5 {
  %1 = load ptr, ptr @oops_cxt, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %14, %6 ], [ %1, %3 ]
  %8 = phi i32 [ %11, %6 ], [ 0, %3 ]
  %9 = getelementptr ptr, ptr %7, i32 %8
  %10 = load ptr, ptr %9, align 4
  tail call void @persistent_ram_free(ptr noundef %10) #14
  %11 = add nuw i32 %8, 1
  %12 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  %13 = icmp ult i32 %11, %12
  %14 = load ptr, ptr @oops_cxt, align 4
  br i1 %13, label %6, label %15

15:                                               ; preds = %6, %3
  %16 = phi ptr [ %1, %3 ], [ %14, %6 ]
  tail call void @kfree(ptr noundef %16) #14
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 13), align 4
  br label %17

17:                                               ; preds = %15, %0
  %18 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %31, %23 ], [ %18, %20 ]
  %25 = phi i32 [ %28, %23 ], [ 0, %20 ]
  %26 = getelementptr ptr, ptr %24, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call void @persistent_ram_free(ptr noundef %27) #14
  %28 = add nuw i32 %25, 1
  %29 = load i32, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  %30 = icmp ult i32 %28, %29
  %31 = load ptr, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 2), align 4
  br i1 %30, label %23, label %32

32:                                               ; preds = %23, %20
  %33 = phi ptr [ %18, %20 ], [ %31, %23 ]
  tail call void @kfree(ptr noundef %33) #14
  store i32 0, ptr getelementptr inbounds (%struct.ramoops_context, ptr @oops_cxt, i32 0, i32 17), align 4
  br label %34

34:                                               ; preds = %32, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ramoops_pstore_open(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 15
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 16
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 18
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ramoops_context, ptr %3, i32 0, i32 19
  store i32 0, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_read(ptr noundef %0) #5 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.pstore_info, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3, i32 1
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 10
  store i8 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 15
  %11 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 13
  %12 = load i32, ptr %10, align 4
  %13 = load i32, ptr %11, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  br label %18

18:                                               ; preds = %47, %15
  %19 = phi i32 [ %12, %15 ], [ %48, %47 ]
  %20 = load ptr, ptr %6, align 4
  %21 = add nuw i32 %19, 1
  store i32 %21, ptr %10, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = getelementptr ptr, ptr %20, i32 %19
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.persistent_ram_zone, ptr %25, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @persistent_ram_save_old(ptr noundef nonnull %25) #14
  br label %32

32:                                               ; preds = %31, %27
  %33 = call i32 @persistent_ram_old_size(ptr noundef nonnull %25) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.persistent_ram_zone, ptr %25, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %16, align 4
  %38 = sext i32 %19 to i64
  store i64 %38, ptr %17, align 8
  %39 = call i32 @persistent_ram_old_size(ptr noundef nonnull %25) #14
  %40 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %25, ptr noundef null, i32 noundef 0) #14
  %41 = sub i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %74, label %49

43:                                               ; preds = %32, %23, %18
  %44 = load i32, ptr %10, align 4
  %45 = load i32, ptr %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %70, %43
  %48 = phi i32 [ %44, %43 ], [ %71, %70 ]
  br label %18

49:                                               ; preds = %35
  %50 = call ptr @persistent_ram_old(ptr noundef nonnull %25) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %51 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %50, ptr noundef nonnull @.str.13, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, ptr %8, align 8
  %55 = mul i32 %54, 1000
  store i32 %55, ptr %8, align 8
  %56 = load i8, ptr %2, align 1
  %57 = icmp eq i8 %56, 67
  %58 = zext i1 %57 to i8
  br label %66

59:                                               ; preds = %49
  %60 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %50, ptr noundef nonnull @.str.14, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %3) #14
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, ptr %8, align 8
  %64 = mul i32 %63, 1000
  store i32 %64, ptr %8, align 8
  br label %66

65:                                               ; preds = %59
  store i64 0, ptr %7, align 8
  store i32 0, ptr %8, align 8
  br label %66

66:                                               ; preds = %65, %62, %53
  %67 = phi i8 [ 0, %62 ], [ 0, %65 ], [ %58, %53 ]
  store i8 %67, ptr %9, align 1
  %68 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  call void @persistent_ram_free_old(ptr noundef nonnull %25) #14
  call void @persistent_ram_zap(ptr noundef nonnull %25) #14
  %71 = load i32, ptr %10, align 4
  %72 = load i32, ptr %11, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %47, label %80

74:                                               ; preds = %66, %35
  %75 = phi i32 [ %68, %66 ], [ 0, %35 ]
  %76 = call i32 @persistent_ram_old_size(ptr noundef nonnull %25) #14
  %77 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %25, ptr noundef null, i32 noundef 0) #14
  %78 = sub i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %74, %70, %43
  %81 = phi ptr [ %25, %74 ], [ null, %43 ], [ null, %70 ]
  %82 = phi i32 [ %75, %74 ], [ 0, %43 ], [ 0, %70 ]
  %83 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 16
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %92, label %111

87:                                               ; preds = %1
  %88 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 16
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %87, %80
  %93 = phi i32 [ 0, %87 ], [ %82, %80 ]
  %94 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 1
  %95 = icmp eq ptr %94, null
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %94, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.persistent_ram_zone, ptr %97, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  call void @persistent_ram_save_old(ptr noundef nonnull %97) #14
  br label %104

104:                                              ; preds = %103, %99
  %105 = call i32 @persistent_ram_old_size(ptr noundef nonnull %97) #14
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %100, align 4
  %109 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  store i64 0, ptr %110, align 8
  br label %113

111:                                              ; preds = %80
  %112 = icmp eq ptr %81, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %111, %107, %74
  %114 = phi i32 [ %82, %111 ], [ %93, %107 ], [ %75, %74 ]
  %115 = phi ptr [ %81, %111 ], [ %97, %107 ], [ %25, %74 ]
  %116 = call i32 @persistent_ram_old_size(ptr noundef nonnull %115) #14
  %117 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %115, ptr noundef null, i32 noundef 0) #14
  %118 = sub i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %113, %111, %104, %96, %92, %87
  %121 = phi i32 [ %114, %113 ], [ %82, %111 ], [ %93, %92 ], [ %93, %96 ], [ %93, %104 ], [ 0, %87 ]
  %122 = phi ptr [ %115, %113 ], [ null, %111 ], [ null, %92 ], [ null, %96 ], [ null, %104 ], [ null, %87 ]
  %123 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 19
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 3
  %129 = icmp eq ptr %128, null
  br i1 %129, label %154, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %128, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %154, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.persistent_ram_zone, ptr %131, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  call void @persistent_ram_save_old(ptr noundef nonnull %131) #14
  br label %138

138:                                              ; preds = %137, %133
  %139 = call i32 @persistent_ram_old_size(ptr noundef nonnull %131) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %134, align 4
  %143 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  store i64 0, ptr %144, align 8
  br label %147

145:                                              ; preds = %120
  %146 = icmp eq ptr %122, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %145, %141, %113
  %148 = phi i32 [ %121, %145 ], [ %121, %141 ], [ %114, %113 ]
  %149 = phi ptr [ %122, %145 ], [ %131, %141 ], [ %115, %113 ]
  %150 = call i32 @persistent_ram_old_size(ptr noundef nonnull %149) #14
  %151 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %149, ptr noundef null, i32 noundef 0) #14
  %152 = sub i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %243

154:                                              ; preds = %147, %145, %138, %130, %127
  %155 = phi i32 [ %121, %138 ], [ %121, %130 ], [ %121, %127 ], [ %121, %145 ], [ %148, %147 ]
  %156 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 11
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 18
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 4
  %164 = icmp eq i32 %162, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %275, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %167, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %275, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.persistent_ram_zone, ptr %170, i32 0, i32 4
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  call void @persistent_ram_save_old(ptr noundef nonnull %170) #14
  br label %177

177:                                              ; preds = %176, %172
  %178 = call i32 @persistent_ram_old_size(ptr noundef nonnull %170) #14
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %275, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %173, align 4
  %182 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  store i32 %181, ptr %182, align 4
  br label %239

183:                                              ; preds = %160, %154
  %184 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %185 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3520, i32 noundef 84) #17
  %186 = icmp eq ptr %185, null
  br i1 %186, label %275, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 18
  %189 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 17
  %190 = load i32, ptr %188, align 4
  %191 = load i32, ptr %189, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.ramoops_context, ptr %6, i32 0, i32 2
  %195 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %196 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  %197 = getelementptr inbounds %struct.persistent_ram_zone, ptr %185, i32 0, i32 14
  %198 = getelementptr inbounds %struct.persistent_ram_zone, ptr %185, i32 0, i32 12
  %199 = getelementptr inbounds %struct.persistent_ram_zone, ptr %185, i32 0, i32 13
  %200 = getelementptr inbounds %struct.persistent_ram_zone, ptr %185, i32 0, i32 16
  br label %201

201:                                              ; preds = %235, %193
  %202 = phi i32 [ %190, %193 ], [ %236, %235 ]
  %203 = load ptr, ptr %194, align 4
  %204 = add nuw i32 %202, 1
  store i32 %204, ptr %188, align 4
  %205 = icmp eq ptr %203, null
  br i1 %205, label %235, label %206

206:                                              ; preds = %201
  %207 = getelementptr ptr, ptr %203, i32 %202
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %235, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.persistent_ram_zone, ptr %208, i32 0, i32 4
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  call void @persistent_ram_save_old(ptr noundef nonnull %208) #14
  br label %215

215:                                              ; preds = %214, %210
  %216 = call i32 @persistent_ram_old_size(ptr noundef nonnull %208) #14
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %235, label %218

218:                                              ; preds = %215
  %219 = load i32, ptr %211, align 4
  store i32 %219, ptr %195, align 4
  %220 = sext i32 %202 to i64
  store i64 %220, ptr %196, align 8
  %221 = call i32 @persistent_ram_old_size(ptr noundef nonnull %208) #14
  %222 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %208, ptr noundef null, i32 noundef 0) #14
  %223 = sub i32 0, %222
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %235, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.persistent_ram_zone, ptr %208, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %197, ptr noundef align 4 dereferenceable(20) %226, i32 20, i1 false)
  %227 = getelementptr inbounds %struct.persistent_ram_zone, ptr %208, i32 0, i32 12
  %228 = load i32, ptr %227, align 4
  %229 = load i32, ptr %198, align 8
  %230 = add i32 %229, %228
  store i32 %230, ptr %198, align 8
  %231 = getelementptr inbounds %struct.persistent_ram_zone, ptr %208, i32 0, i32 13
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %199, align 4
  %234 = add i32 %233, %232
  store i32 %234, ptr %199, align 4
  store i32 0, ptr %200, align 8
  br label %235

235:                                              ; preds = %225, %218, %215, %206, %201
  %236 = load i32, ptr %188, align 4
  %237 = load i32, ptr %189, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %201, label %239

239:                                              ; preds = %235, %187, %180
  %240 = phi ptr [ %170, %180 ], [ %185, %187 ], [ %185, %235 ]
  %241 = phi i1 [ false, %180 ], [ true, %187 ], [ true, %235 ]
  %242 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  store i64 0, ptr %242, align 8
  br label %243

243:                                              ; preds = %239, %147
  %244 = phi i32 [ %148, %147 ], [ %155, %239 ]
  %245 = phi ptr [ %149, %147 ], [ %240, %239 ]
  %246 = phi i1 [ false, %147 ], [ %241, %239 ]
  %247 = call i32 @persistent_ram_old_size(ptr noundef nonnull %245) #14
  %248 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %245, ptr noundef null, i32 noundef 0) #14
  %249 = sub i32 0, %248
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %269, label %251

251:                                              ; preds = %243
  %252 = call i32 @persistent_ram_old_size(ptr noundef nonnull %245) #14
  %253 = sub i32 %252, %244
  %254 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %245, ptr noundef null, i32 noundef 0) #14
  %255 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 6
  store i32 %254, ptr %255, align 8
  %256 = add i32 %253, %254
  %257 = add i32 %256, 1
  %258 = call noalias align 64 ptr @__kmalloc(i32 noundef %257, i32 noundef 3264) #16
  %259 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 4
  store ptr %258, ptr %259, align 8
  %260 = icmp eq ptr %258, null
  br i1 %260, label %269, label %261

261:                                              ; preds = %251
  %262 = call ptr @persistent_ram_old(ptr noundef nonnull %245) #14
  %263 = getelementptr i8, ptr %262, i32 %244
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %258, ptr align 1 %263, i32 %253, i1 false)
  %264 = load ptr, ptr %259, align 8
  %265 = getelementptr i8, ptr %264, i32 %253
  %266 = load i32, ptr %255, align 8
  %267 = add i32 %266, 1
  %268 = call i32 @persistent_ram_ecc_string(ptr noundef nonnull %245, ptr noundef %265, i32 noundef %267) #14
  br i1 %246, label %271, label %275

269:                                              ; preds = %251, %243
  %270 = phi i32 [ 0, %243 ], [ -12, %251 ]
  br i1 %246, label %271, label %275

271:                                              ; preds = %269, %261
  %272 = phi i32 [ %253, %261 ], [ %270, %269 ]
  %273 = getelementptr inbounds %struct.persistent_ram_zone, ptr %245, i32 0, i32 15
  %274 = load ptr, ptr %273, align 4
  call void @kfree(ptr noundef %274) #14
  call void @kfree(ptr noundef nonnull %245) #14
  br label %275

275:                                              ; preds = %271, %269, %261, %183, %177, %169, %165
  %276 = phi i32 [ %272, %271 ], [ %270, %269 ], [ %253, %261 ], [ -12, %183 ], [ 0, %165 ], [ 0, %169 ], [ 0, %177 ]
  ret i32 %276
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_write(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca [36 x i8], align 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.pstore_info, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %86 [
    i32 2, label %8
    i32 3, label %18
    i32 7, label %40
    i32 0, label %45
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ramoops_context, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %86, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @persistent_ram_write(ptr noundef nonnull %10, ptr noundef %14, i32 noundef %16) #14
  br label %86

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ramoops_context, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ramoops_context, ptr %5, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @llvm.thread.pointer() #14
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %30, %27 ], [ 0, %22 ]
  %33 = getelementptr ptr, ptr %20, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @persistent_ram_write(ptr noundef %34, ptr noundef %36, i32 noundef %38) #14
  br label %86

40:                                               ; preds = %1
  %41 = tail call i32 @___ratelimit(ptr noundef nonnull @ramoops_pstore_write._rs, ptr noundef nonnull @__func__.ramoops_pstore_write) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %86, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ramoops_pstore_write) #15
  br label %86

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load ptr, ptr %5, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ramoops_context, ptr %5, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr ptr, ptr %50, i32 %54
  %56 = load ptr, ptr %55, align 4
  tail call void @persistent_ram_zap(ptr noundef %56) #14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(36) %2, i8 0, i32 36, i1 false) #14, !annotation !8
  %57 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = sdiv i32 %60, 1000
  %62 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 10
  %63 = load i8, ptr %62, align 8, !range !11
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 68, i32 67
  %66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %2, i32 noundef 36, ptr noundef nonnull @.str.16, i64 noundef %58, i32 noundef %61, i32 noundef %65) #14
  %67 = call i32 @persistent_ram_write(ptr noundef %56, ptr noundef nonnull %2, i32 noundef %66) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #14
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %66
  %73 = getelementptr inbounds %struct.persistent_ram_zone, ptr %56, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %72, %74
  %76 = sub i32 %74, %66
  %77 = select i1 %75, i32 %76, i32 %71
  %78 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 8
  %80 = call i32 @persistent_ram_write(ptr noundef %56, ptr noundef %79, i32 noundef %77) #14
  %81 = load i32, ptr %53, align 4
  %82 = add i32 %81, 1
  %83 = getelementptr inbounds %struct.ramoops_context, ptr %5, i32 0, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = urem i32 %82, %84
  store i32 %85, ptr %53, align 4
  br label %86

86:                                               ; preds = %69, %52, %49, %45, %43, %40, %31, %18, %12, %8, %1
  %87 = phi i32 [ 0, %12 ], [ 0, %69 ], [ -12, %8 ], [ 0, %31 ], [ -12, %18 ], [ -22, %43 ], [ -22, %40 ], [ -22, %1 ], [ -28, %45 ], [ -28, %49 ], [ -12, %52 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_write_user(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.pstore_info, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ramoops_context, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @persistent_ram_write_user(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %15) #14
  br label %17

17:                                               ; preds = %13, %6, %2
  %18 = phi i32 [ %16, %13 ], [ -12, %6 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramoops_pstore_erase(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.pstore_info, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %37 [
    i32 0, label %7
    i32 2, label %18
    i32 3, label %20
    i32 7, label %32
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ramoops_context, ptr %4, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 4
  %16 = trunc i64 %9 to i32
  %17 = getelementptr ptr, ptr %15, i32 %16
  br label %34

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ramoops_context, ptr %4, i32 0, i32 1
  br label %34

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.ramoops_context, ptr %4, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ramoops_context, ptr %4, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = trunc i64 %22 to i32
  %31 = getelementptr ptr, ptr %29, i32 %30
  br label %34

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.ramoops_context, ptr %4, i32 0, i32 3
  br label %34

34:                                               ; preds = %32, %27, %18, %14
  %35 = phi ptr [ %33, %32 ], [ %31, %27 ], [ %19, %18 ], [ %17, %14 ]
  %36 = load ptr, ptr %35, align 4
  tail call void @persistent_ram_free_old(ptr noundef %36) #14
  tail call void @persistent_ram_zap(ptr noundef %36) #14
  br label %37

37:                                               ; preds = %34, %20, %7, %1
  %38 = phi i32 [ 0, %34 ], [ -22, %7 ], [ -22, %20 ], [ -22, %1 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @persistent_ram_old(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_free_old(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_zap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_old_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_ecc_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @persistent_ram_save_old(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @persistent_ram_write_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @persistent_ram_new(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_name_to_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { cold }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
