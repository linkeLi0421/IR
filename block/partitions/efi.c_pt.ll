; ModuleID = '/llk/IR/block/partitions/efi.c_pt.bc'
source_filename = "../block/partitions/efi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type {}
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct._legacy_mbr = type <{ [440 x i8], i32, i16, [4 x %struct._gpt_mbr_record], i16 }>
%struct._gpt_mbr_record = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct._gpt_header = type <{ i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.guid_t, i64, i32, i32, i32 }>
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct._gpt_entry = type { %struct.guid_t, %struct.guid_t, i64, i64, %struct._gpt_entry_attributes, [36 x i16] }
%struct._gpt_entry_attributes = type { i64 }
%struct.anon.79 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.Sector = type { ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.45, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.45 = type { %struct.atomic_t }

@__setup_str_force_gpt_fn = internal constant [4 x i8] c"gpt\00", section ".init.rodata", align 1
@__setup_force_gpt_fn = internal global %struct.obs_kernel_param { ptr @__setup_str_force_gpt_fn, ptr @force_gpt_fn, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@force_gpt = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\014Alternate GPT is invalid, using primary GPT.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\014Primary GPT is invalid, using alternate GPT.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"\014GPT:Primary header LBA != Alt. header alternate_lba\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\014GPT:%lld != %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\014GPT:Primary header alternate_lba != Alt. header my_lba\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\014GPT:first_usable_lbas don't match.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\014GPT:last_usable_lbas don't match.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\014GPT:disk_guids don't match.\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"\014GPT:num_partition_entries don't match: 0x%x != 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"\014GPT:sizeof_partition_entry values don't match: 0x%x != 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"\014GPT:partition_entry_array_crc32 values don't match: 0x%x != 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"\014GPT:Primary header thinks Alt. header is not at the end of the disk.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"\014GPT:Alternate GPT header not at the end of the disk.\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\014GPT: Use GNU Parted to correct GPT errors.\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_force_gpt_fn], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @force_gpt_fn(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i1 true, ptr @force_gpt, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @efi_partition(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.guid_t, align 4
  %3 = alloca %struct.guid_t, align 4
  %4 = alloca [44 x i8], align 1
  %5 = alloca %struct.guid_t, align 4
  %6 = alloca %struct.guid_t, align 4
  %7 = alloca %struct.guid_t, align 4
  %8 = alloca %struct.guid_t, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i64, align 8
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 32, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 512, i32 %20
  br label %23

23:                                               ; preds = %18, %1
  %24 = phi i32 [ 512, %1 ], [ %22, %18 ]
  %25 = lshr i32 %24, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store ptr null, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store ptr null, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store ptr null, ptr %12, align 4
  %26 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = shl i64 %31, 9
  br i1 %17, label %38, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 32, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 512, i32 %35
  br label %38

38:                                               ; preds = %33, %23
  %39 = phi i32 [ 512, %23 ], [ %37, %33 ]
  %40 = icmp ult i64 %32, 4294967296
  br i1 %40, label %41, label %45, !prof !8

41:                                               ; preds = %38
  %42 = trunc i64 %32 to i32
  %43 = udiv i32 %42, %39
  %44 = zext i32 %43 to i64
  br label %48

45:                                               ; preds = %38
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %32) #16, !srcloc !9
  %47 = extractvalue { i64, i64 } %46, 1
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i64 [ %44, %41 ], [ %47, %45 ]
  %50 = add i64 %49, -1
  %51 = load i1, ptr @force_gpt, align 4
  br i1 %51, label %95, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 512) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %276, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @read_lba(ptr noundef %0, i64 noundef 0, ptr noundef nonnull %54, i32 noundef 512) #15
  %58 = getelementptr inbounds %struct._legacy_mbr, ptr %54, i32 0, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, -21931
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 0, i32 4
  %63 = load i8, ptr %62, align 2
  %64 = icmp eq i8 %63, -18
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 0, i32 8
  %67 = load i32, ptr %66, align 2
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %93, label %69

69:                                               ; preds = %65, %61
  %70 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 1, i32 4
  %71 = load i8, ptr %70, align 2
  %72 = icmp eq i8 %71, -18
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 1, i32 8
  %75 = load i32, ptr %74, align 2
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %93, label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 2, i32 4
  %79 = load i8, ptr %78, align 2
  %80 = icmp eq i8 %79, -18
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 2, i32 8
  %83 = load i32, ptr %82, align 2
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %93, label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 3, i32 4
  %87 = load i8, ptr %86, align 2
  %88 = icmp eq i8 %87, -18
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr %struct._legacy_mbr, ptr %54, i32 0, i32 3, i32 3, i32 8
  %91 = load i32, ptr %90, align 2
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %81, %73, %65
  tail call void @kfree(ptr noundef nonnull %54) #15
  br label %95

94:                                               ; preds = %89, %85, %56
  tail call void @kfree(ptr noundef nonnull %54) #15
  br label %276

95:                                               ; preds = %93, %48
  %96 = call fastcc i32 @is_gpt_valid(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %11) #15
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load ptr, ptr %9, align 4
  %100 = getelementptr inbounds %struct._gpt_header, ptr %99, i32 0, i32 6
  %101 = load i64, ptr %100, align 1
  %102 = call fastcc i32 @is_gpt_valid(ptr noundef %0, i64 noundef %101, ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i32 [ %102, %98 ], [ 0, %95 ]
  %105 = icmp eq i32 %104, 0
  %106 = load i1, ptr @force_gpt, align 4
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = call fastcc i32 @is_gpt_valid(ptr noundef %0, i64 noundef %50, ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  %110 = load i1, ptr @force_gpt, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = phi i1 [ %110, %108 ], [ %106, %103 ]
  %113 = phi i32 [ %109, %108 ], [ %104, %103 ]
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i1 %112, i1 false
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.block_device_operations, ptr %27, i32 0, i32 16
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  store i64 0, ptr %13, align 8, !annotation !10
  %121 = call i32 %118(ptr noundef %14, ptr noundef nonnull %13) #15
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, ptr %13, align 8
  %125 = call fastcc i32 @is_gpt_valid(ptr noundef %0, i64 noundef %124, ptr noundef nonnull %10, ptr noundef nonnull %12) #15
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i32 [ 0, %120 ], [ %125, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  br label %128

128:                                              ; preds = %126, %116, %111
  %129 = phi i32 [ %127, %126 ], [ 0, %116 ], [ %113, %111 ]
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %97, i1 true, i1 %130
  %132 = load ptr, ptr %9, align 4
  %133 = load ptr, ptr %10, align 4
  br i1 %131, label %134, label %276

134:                                              ; preds = %128
  %135 = icmp ne ptr %132, null
  %136 = icmp ne ptr %133, null
  %137 = and i1 %135, %136
  br i1 %137, label %138, label %268

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 5
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 6
  %142 = load i64, ptr %141, align 1
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %138
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  %146 = load i64, ptr %139, align 1
  %147 = load i64, ptr %141, align 1
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %146, i64 noundef %147) #18
  br label %149

149:                                              ; preds = %144, %138
  %150 = phi i32 [ 1, %144 ], [ 0, %138 ]
  %151 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 6
  %152 = load i64, ptr %151, align 1
  %153 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 5
  %154 = load i64, ptr %153, align 1
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  %158 = load i64, ptr %151, align 1
  %159 = load i64, ptr %153, align 1
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %158, i64 noundef %159) #18
  %161 = add nuw nsw i32 %150, 1
  br label %162

162:                                              ; preds = %156, %149
  %163 = phi i32 [ %161, %156 ], [ %150, %149 ]
  %164 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 7
  %165 = load i64, ptr %164, align 1
  %166 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 7
  %167 = load i64, ptr %166, align 1
  %168 = icmp eq i64 %165, %167
  br i1 %168, label %175, label %169

169:                                              ; preds = %162
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #18
  %171 = load i64, ptr %164, align 1
  %172 = load i64, ptr %166, align 1
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %171, i64 noundef %172) #18
  %174 = add nuw nsw i32 %163, 1
  br label %175

175:                                              ; preds = %169, %162
  %176 = phi i32 [ %174, %169 ], [ %163, %162 ]
  %177 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 8
  %178 = load i64, ptr %177, align 1
  %179 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 8
  %180 = load i64, ptr %179, align 1
  %181 = icmp eq i64 %178, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %175
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #18
  %184 = load i64, ptr %177, align 1
  %185 = load i64, ptr %179, align 1
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %184, i64 noundef %185) #18
  %187 = add nuw nsw i32 %176, 1
  br label %188

188:                                              ; preds = %182, %175
  %189 = phi i32 [ %187, %182 ], [ %176, %175 ]
  %190 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 9
  %191 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 9
  %192 = load i32, ptr %190, align 1
  %193 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 9, i32 0, i32 4
  %194 = load i32, ptr %193, align 1
  %195 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 9, i32 0, i32 8
  %196 = load i32, ptr %195, align 1
  %197 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 9, i32 0, i32 12
  %198 = load i32, ptr %197, align 1
  %199 = load i32, ptr %191, align 1
  %200 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 9, i32 0, i32 4
  %201 = load i32, ptr %200, align 1
  %202 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 9, i32 0, i32 8
  %203 = load i32, ptr %202, align 1
  %204 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 9, i32 0, i32 12
  %205 = load i32, ptr %204, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  store i32 %192, ptr %7, align 4
  %206 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 1
  store i32 %194, ptr %206, align 4
  %207 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 2
  store i32 %196, ptr %207, align 4
  %208 = getelementptr inbounds [4 x i32], ptr %7, i32 0, i32 3
  store i32 %198, ptr %208, align 4
  store i32 %199, ptr %8, align 4
  %209 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  store i32 %201, ptr %209, align 4
  %210 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 2
  store i32 %203, ptr %210, align 4
  %211 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 3
  store i32 %205, ptr %211, align 4
  %212 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %7, ptr noundef nonnull dereferenceable(16) %8, i32 16) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %188
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #18
  %216 = add nuw nsw i32 %189, 1
  br label %217

217:                                              ; preds = %214, %188
  %218 = phi i32 [ %216, %214 ], [ %189, %188 ]
  %219 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 11
  %220 = load i32, ptr %219, align 1
  %221 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 11
  %222 = load i32, ptr %221, align 1
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %227, label %224

224:                                              ; preds = %217
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %220, i32 noundef %222) #18
  %226 = add nuw nsw i32 %218, 1
  br label %227

227:                                              ; preds = %224, %217
  %228 = phi i32 [ %226, %224 ], [ %218, %217 ]
  %229 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 12
  %230 = load i32, ptr %229, align 1
  %231 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 12
  %232 = load i32, ptr %231, align 1
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %237, label %234

234:                                              ; preds = %227
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %230, i32 noundef %232) #18
  %236 = add nuw nsw i32 %228, 1
  br label %237

237:                                              ; preds = %234, %227
  %238 = phi i32 [ %236, %234 ], [ %228, %227 ]
  %239 = getelementptr inbounds %struct._gpt_header, ptr %132, i32 0, i32 13
  %240 = load i32, ptr %239, align 1
  %241 = getelementptr inbounds %struct._gpt_header, ptr %133, i32 0, i32 13
  %242 = load i32, ptr %241, align 1
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %247, label %244

244:                                              ; preds = %237
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %240, i32 noundef %242) #18
  %246 = add nuw nsw i32 %238, 1
  br label %247

247:                                              ; preds = %244, %237
  %248 = phi i32 [ %246, %244 ], [ %238, %237 ]
  %249 = load i64, ptr %151, align 1
  %250 = icmp eq i64 %249, %50
  br i1 %250, label %256, label %251

251:                                              ; preds = %247
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #18
  %253 = load i64, ptr %151, align 1
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %253, i64 noundef %50) #18
  %255 = add nuw nsw i32 %248, 1
  br label %256

256:                                              ; preds = %251, %247
  %257 = phi i32 [ %255, %251 ], [ %248, %247 ]
  %258 = load i64, ptr %153, align 1
  %259 = icmp eq i64 %258, %50
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #18
  %262 = load i64, ptr %153, align 1
  %263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %262, i64 noundef %50) #18
  br label %266

264:                                              ; preds = %256
  %265 = icmp eq i32 %257, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %264, %260
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %268

268:                                              ; preds = %266, %264, %134
  br i1 %97, label %269, label %272

269:                                              ; preds = %268
  %270 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %133) #15
  %271 = load ptr, ptr %12, align 4
  call void @kfree(ptr noundef %271) #15
  br i1 %130, label %286, label %281

272:                                              ; preds = %268
  br i1 %130, label %273, label %276

273:                                              ; preds = %272
  %274 = load ptr, ptr %12, align 4
  call void @kfree(ptr noundef %132) #15
  %275 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %275) #15
  br label %281

276:                                              ; preds = %272, %128, %94, %52
  %277 = phi ptr [ null, %94 ], [ %133, %272 ], [ null, %52 ], [ %133, %128 ]
  %278 = phi ptr [ null, %94 ], [ %132, %272 ], [ null, %52 ], [ %132, %128 ]
  call void @kfree(ptr noundef %278) #15
  call void @kfree(ptr noundef %277) #15
  %279 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %279) #15
  %280 = load ptr, ptr %12, align 4
  call void @kfree(ptr noundef %280) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %311

281:                                              ; preds = %273, %269
  %282 = phi ptr [ @.str.2, %273 ], [ @.str.1, %269 ]
  %283 = phi ptr [ %133, %273 ], [ %132, %269 ]
  %284 = phi ptr [ %274, %273 ], [ %270, %269 ]
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %282) #18
  br label %286

286:                                              ; preds = %281, %269
  %287 = phi ptr [ %132, %269 ], [ %283, %281 ]
  %288 = phi ptr [ %270, %269 ], [ %284, %281 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  %289 = icmp ne ptr %287, null
  %290 = icmp ne ptr %288, null
  %291 = select i1 %289, i1 %290, i1 false
  br i1 %291, label %292, label %311

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 4
  %294 = getelementptr inbounds %struct._gpt_header, ptr %287, i32 0, i32 11
  %295 = load i32, ptr %294, align 1
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %430, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %299 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %300 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %301 = zext i32 %25 to i64
  %302 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 2
  %303 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 1
  %304 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  %305 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %306 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %307 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %308 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %309 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %310 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  br label %314

311:                                              ; preds = %286, %276
  %312 = phi ptr [ null, %276 ], [ %288, %286 ]
  %313 = phi ptr [ null, %276 ], [ %287, %286 ]
  call void @kfree(ptr noundef %313) #15
  call void @kfree(ptr noundef %312) #15
  br label %434

314:                                              ; preds = %426, %297
  %315 = phi i32 [ %295, %297 ], [ %427, %426 ]
  %316 = phi i32 [ 0, %297 ], [ %428, %426 ]
  %317 = load i32, ptr %293, align 4
  %318 = add i32 %317, -1
  %319 = icmp ult i32 %316, %318
  br i1 %319, label %320, label %430

320:                                              ; preds = %314
  %321 = getelementptr %struct._gpt_entry, ptr %288, i32 %316
  %322 = getelementptr %struct._gpt_entry, ptr %288, i32 %316, i32 2
  %323 = load i64, ptr %322, align 1
  %324 = getelementptr %struct._gpt_entry, ptr %288, i32 %316, i32 3
  %325 = load i64, ptr %324, align 1
  %326 = load ptr, ptr %0, align 4
  %327 = getelementptr inbounds %struct.gendisk, ptr %326, i32 0, i32 7
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.block_device, ptr %328, i32 0, i32 1
  %330 = load i64, ptr %329, align 8
  %331 = shl i64 %330, 9
  %332 = getelementptr inbounds %struct.gendisk, ptr %326, i32 0, i32 9
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %320
  %336 = getelementptr inbounds %struct.request_queue, ptr %333, i32 0, i32 32, i32 9
  %337 = load i32, ptr %336, align 4
  %338 = icmp eq i32 %337, 0
  %339 = select i1 %338, i32 512, i32 %337
  br label %340

340:                                              ; preds = %335, %320
  %341 = phi i32 [ 512, %320 ], [ %339, %335 ]
  %342 = icmp ult i64 %331, 4294967296
  br i1 %342, label %343, label %347, !prof !8

343:                                              ; preds = %340
  %344 = trunc i64 %331 to i32
  %345 = udiv i32 %344, %341
  %346 = zext i32 %345 to i64
  br label %350

347:                                              ; preds = %340
  %348 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %341, i64 %331) #16, !srcloc !9
  %349 = extractvalue { i64, i64 } %348, 1
  br label %350

350:                                              ; preds = %347, %343
  %351 = phi i64 [ %346, %343 ], [ %349, %347 ]
  %352 = add i64 %351, -1
  %353 = load i32, ptr %321, align 1
  %354 = getelementptr inbounds [4 x i32], ptr %321, i32 0, i32 1
  %355 = load i32, ptr %354, align 1
  %356 = getelementptr inbounds [4 x i32], ptr %321, i32 0, i32 2
  %357 = load i32, ptr %356, align 1
  %358 = getelementptr inbounds [4 x i32], ptr %321, i32 0, i32 3
  %359 = load i32, ptr %358, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  store i32 %353, ptr %5, align 4
  store i32 %355, ptr %298, align 4
  store i32 %357, ptr %299, align 4
  store i32 %359, ptr %300, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false) #15
  %360 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) %6, i32 16) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  %361 = icmp eq i32 %360, 0
  %362 = icmp ugt i64 %323, %352
  %363 = select i1 %361, i1 true, i1 %362
  %364 = icmp ugt i64 %325, %352
  %365 = select i1 %363, i1 true, i1 %364
  br i1 %365, label %426, label %366

366:                                              ; preds = %350
  %367 = add nuw i32 %316, 1
  %368 = icmp sgt i32 %317, %367
  br i1 %368, label %369, label %385

369:                                              ; preds = %366
  %370 = sub i64 1, %323
  %371 = add i64 %370, %325
  %372 = mul i64 %371, %301
  %373 = mul i64 %323, %301
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %4, i8 0, i32 44, i1 false) #15, !annotation !10
  %374 = load ptr, ptr %302, align 4
  %375 = getelementptr %struct.anon.79, ptr %374, i32 %367
  store i64 %373, ptr %375, align 8
  %376 = load ptr, ptr %302, align 4
  %377 = getelementptr %struct.anon.79, ptr %376, i32 %367, i32 1
  store i64 %372, ptr %377, align 8
  %378 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 44, ptr noundef nonnull @.str.15, ptr noundef %303, i32 noundef %367) #15
  %379 = load ptr, ptr %304, align 4
  %380 = call i32 @strlcat(ptr noundef %379, ptr noundef nonnull %4, i32 noundef 4096) #15
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #15
  %381 = load i32, ptr %321, align 1
  %382 = load i32, ptr %354, align 1
  %383 = load i32, ptr %356, align 1
  %384 = load i32, ptr %358, align 1
  br label %385

385:                                              ; preds = %369, %366
  %386 = phi i32 [ %359, %366 ], [ %384, %369 ]
  %387 = phi i32 [ %357, %366 ], [ %383, %369 ]
  %388 = phi i32 [ %355, %366 ], [ %382, %369 ]
  %389 = phi i32 [ %353, %366 ], [ %381, %369 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  store i32 %389, ptr %2, align 4
  store i32 %388, ptr %305, align 4
  store i32 %387, ptr %306, align 4
  store i32 %386, ptr %307, align 4
  store i32 -1583511537, ptr %3, align 4
  store i32 1295713788, ptr %308, align 4
  store i32 1064568480, ptr %309, align 4
  store i32 512853007, ptr %310, align 4
  %390 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) %3, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %385
  %393 = load ptr, ptr %302, align 4
  %394 = getelementptr %struct.anon.79, ptr %393, i32 %367, i32 2
  store i32 1, ptr %394, align 8
  br label %395

395:                                              ; preds = %392, %385
  %396 = load ptr, ptr %302, align 4
  %397 = getelementptr %struct.anon.79, ptr %396, i32 %367, i32 4
  %398 = getelementptr %struct._gpt_entry, ptr %288, i32 %316, i32 1
  %399 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %397, ptr noundef nonnull @.str.16, ptr noundef %398) #15
  %400 = getelementptr %struct._gpt_entry, ptr %288, i32 %316, i32 5
  %401 = getelementptr %struct.anon.79, ptr %396, i32 %367, i32 4, i32 1
  %402 = getelementptr i8, ptr %401, i32 36
  store i8 0, ptr %402, align 1
  br label %403

403:                                              ; preds = %417, %395
  %404 = phi i32 [ 0, %395 ], [ %420, %417 ]
  %405 = getelementptr i16, ptr %400, i32 %404
  %406 = load i16, ptr %405, align 2
  %407 = trunc i16 %406 to i8
  %408 = and i16 %406, 255
  %409 = icmp eq i16 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %403
  %411 = zext i16 %408 to i32
  %412 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %411
  %413 = load i8, ptr %412, align 1
  %414 = and i8 %413, -105
  %415 = icmp eq i8 %414, 0
  %416 = select i1 %415, i8 33, i8 %407
  br label %417

417:                                              ; preds = %410, %403
  %418 = phi i8 [ %416, %410 ], [ %407, %403 ]
  %419 = getelementptr i8, ptr %401, i32 %404
  store i8 %418, ptr %419, align 1
  %420 = add nuw nsw i32 %404, 1
  %421 = icmp eq i32 %420, 36
  br i1 %421, label %422, label %403

422:                                              ; preds = %417
  %423 = load ptr, ptr %302, align 4
  %424 = getelementptr %struct.anon.79, ptr %423, i32 %367, i32 3
  store i8 1, ptr %424, align 4
  %425 = load i32, ptr %294, align 1
  br label %426

426:                                              ; preds = %422, %350
  %427 = phi i32 [ %315, %350 ], [ %425, %422 ]
  %428 = add nuw i32 %316, 1
  %429 = icmp ult i32 %428, %427
  br i1 %429, label %314, label %430

430:                                              ; preds = %426, %314, %292
  call void @kfree(ptr noundef nonnull %288) #15
  call void @kfree(ptr noundef nonnull %287) #15
  %431 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  %432 = load ptr, ptr %431, align 4
  %433 = call i32 @strlcat(ptr noundef %432, ptr noundef nonnull @.str, i32 noundef 4096) #15
  br label %434

434:                                              ; preds = %430, %311
  %435 = phi i32 [ 1, %430 ], [ 0, %311 ]
  ret i32 %435
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i64 @last_lba(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = shl i64 %5, 9
  %7 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 512, i32 %12
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ 512, %1 ], [ %14, %10 ]
  %17 = icmp ult i64 %6, 4294967296
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %15
  %19 = trunc i64 %6 to i32
  %20 = udiv i32 %19, %16
  %21 = zext i32 %20 to i64
  br label %25

22:                                               ; preds = %15
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %6) #16, !srcloc !9
  %24 = extractvalue { i64, i64 } %23, 1
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = add i64 %26, -1
  ret i64 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_lba(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca %struct.Sector, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = lshr i32 %12, 9
  %15 = select i1 %13, i32 1, i32 %14
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ 1, %4 ], [ %15, %10 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %80, label %19

19:                                               ; preds = %16
  %20 = zext i32 %17 to i64
  %21 = mul i64 %20, %1
  %22 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = shl i64 %25, 9
  br i1 %9, label %32, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 512, i32 %29
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i32 [ 512, %19 ], [ %31, %27 ]
  %34 = icmp ult i64 %26, 4294967296
  br i1 %34, label %35, label %39, !prof !8

35:                                               ; preds = %32
  %36 = trunc i64 %26 to i32
  %37 = udiv i32 %36, %33
  %38 = zext i32 %37 to i64
  br label %42

39:                                               ; preds = %32
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %26) #16, !srcloc !9
  %41 = extractvalue { i64, i64 } %40, 1
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i64 [ %38, %35 ], [ %41, %39 ]
  %44 = add i64 %43, -1
  %45 = icmp ult i64 %44, %1
  %46 = icmp eq i32 %3, 0
  %47 = or i1 %45, %46
  br i1 %47, label %80, label %48

48:                                               ; preds = %75, %42
  %49 = phi i64 [ %53, %75 ], [ %21, %42 ]
  %50 = phi i32 [ %77, %75 ], [ 0, %42 ]
  %51 = phi i32 [ %78, %75 ], [ %3, %42 ]
  %52 = phi ptr [ %76, %75 ], [ %2, %42 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !10
  %53 = add i64 %49, 1
  %54 = call ptr @read_part_sector(ptr noundef %0, i64 noundef %49, ptr noundef nonnull %5) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %80

57:                                               ; preds = %48
  %58 = call i32 @llvm.umin.i32(i32 %51, i32 512)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr nonnull align 1 %54, i32 %58, i1 false)
  %59 = load i32, ptr %5, align 4
  %60 = inttoptr i32 %59 to ptr
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65, !prof !8

65:                                               ; preds = %57
  %66 = add i32 %62, -1
  %67 = inttoptr i32 %66 to ptr
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi ptr [ %60, %57 ], [ %67, %65 ]
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #15, !srcloc !12
  %71 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #15, !srcloc !13
  %72 = extractvalue { i32, i32 } %71, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  call void @__put_page(ptr noundef %69) #15
  br label %75

75:                                               ; preds = %74, %68
  %76 = getelementptr i8, ptr %52, i32 %58
  %77 = add i32 %50, %58
  %78 = sub i32 %51, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %48

80:                                               ; preds = %75, %56, %42, %16
  %81 = phi i32 [ 0, %42 ], [ 0, %16 ], [ %50, %56 ], [ %77, %75 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @is_gpt_valid(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 512, i32 %13
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ 512, %6 ], [ %15, %11 ]
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %87, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @read_lba(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %18, i32 noundef %17) #15
  %22 = icmp ult i32 %21, %17
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %87

24:                                               ; preds = %20
  store ptr %18, ptr %2, align 4
  %25 = load i64, ptr %18, align 64
  %26 = icmp eq i64 %25, 6075990659671082565
  br i1 %26, label %27, label %85

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 32, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 512, i32 %36
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i32 [ 512, %27 ], [ %38, %34 ]
  %41 = icmp ugt i32 %29, %40
  %42 = icmp ult i32 %29, 92
  %43 = or i1 %42, %41
  br i1 %43, label %85, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 3
  %46 = load i32, ptr %45, align 16
  store i32 0, ptr %45, align 16
  %47 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %18, i32 noundef %29) #20
  %48 = xor i32 %47, -1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  store i32 %46, ptr %45, align 16
  %51 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 5
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, %1
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = tail call fastcc i64 @last_lba(ptr noundef %30)
  %56 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 7
  %57 = load i64, ptr %56, align 8
  %58 = icmp ugt i64 %57, %55
  br i1 %58, label %85, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 8
  %61 = load i64, ptr %60, align 16
  %62 = icmp ugt i64 %61, %55
  %63 = icmp ult i64 %61, %57
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %85, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 12
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct._gpt_header, ptr %18, i32 0, i32 11
  %71 = load i32, ptr %70, align 16
  %72 = shl i32 %71, 7
  %73 = icmp ugt i32 %71, 65536
  br i1 %73, label %85, label %74

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @alloc_read_gpt_entries(ptr noundef %0, ptr noundef nonnull %18)
  store ptr %75, ptr %3, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %75, i32 noundef %72) #20
  %79 = xor i32 %78, -1
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr inbounds %struct._gpt_header, ptr %80, i32 0, i32 13
  %82 = load i32, ptr %81, align 1
  %83 = icmp eq i32 %82, %79
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  tail call void @kfree(ptr noundef nonnull %75) #15
  store ptr null, ptr %3, align 4
  br label %85

85:                                               ; preds = %84, %74, %69, %65, %59, %54, %50, %44, %39, %24
  %86 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %86) #15
  br label %87

87:                                               ; preds = %85, %23, %16
  store ptr null, ptr %2, align 4
  br label %88

88:                                               ; preds = %87, %77, %4
  %89 = phi i32 [ 0, %4 ], [ 1, %77 ], [ 0, %87 ]
  ret i32 %89
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_read_gpt_entries(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._gpt_header, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 1
  %7 = getelementptr inbounds %struct._gpt_header, ptr %1, i32 0, i32 12
  %8 = load i32, ptr %7, align 1
  %9 = mul i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._gpt_header, ptr %1, i32 0, i32 10
  %16 = load i64, ptr %15, align 1
  %17 = tail call fastcc i32 @read_lba(ptr noundef %0, i64 noundef %16, ptr noundef nonnull %12, i32 noundef %9)
  %18 = icmp ult i32 %17, %9
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @kfree(ptr noundef nonnull %12) #15
  br label %20

20:                                               ; preds = %19, %14, %11, %4, %2
  %21 = phi ptr [ null, %19 ], [ null, %2 ], [ null, %4 ], [ null, %11 ], [ %12, %14 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }

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
!9 = !{i64 2148347288, i64 2148347568, i64 2148347902, i64 2148348236}
!10 = !{!"auto-init"}
!11 = !{i64 2148034763}
!12 = !{i64 431925, i64 2147921896, i64 2147921922, i64 2147921969, i64 2147921991, i64 2147922019, i64 2147922039}
!13 = !{i64 2147937149, i64 2147937181, i64 2147937210, i64 2147937244, i64 2147937275, i64 2147937298}
!14 = !{i64 2148034966}
