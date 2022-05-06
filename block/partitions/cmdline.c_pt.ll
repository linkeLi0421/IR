; ModuleID = '/llk/IR/block/partitions/cmdline.c_pt.bc'
source_filename = "../block/partitions/cmdline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cmdline_parts = type { [32 x i8], i32, ptr, ptr }
%struct.cmdline_subpart = type { [32 x i8], i64, i64, i32, ptr }
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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.anon.79 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }

@__setup_str_cmdline_parts_setup = internal constant [13 x i8] c"blkdevparts=\00", section ".init.rodata", align 1
@__setup_cmdline_parts_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_cmdline_parts_setup, ptr @cmdline_parts_setup, i32 0 }, section ".init.setup", align 4
@cmdline = internal unnamed_addr global ptr null, align 4
@bdev_parts = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\014cmdline partition has no valid partition.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\014cmdline partition has no block device.\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"\014cmdline partition size is invalid.\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\014cmdline partition format is invalid.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"lk\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\014%s[%llu,%llu] overlaps with %s[%llu,%llu].\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\014Overlapping partitions are used in command line partitions.\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\014Don't use filesystems on overlapping partitions:\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_cmdline_parts_setup], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cmdline_parts_setup(ptr noundef %0) #0 section ".init.text" {
  store ptr %0, ptr @cmdline, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cmdline_partition(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [44 x i8], align 1
  %3 = alloca [68 x i8], align 1
  %4 = alloca ptr, align 4
  %5 = alloca [68 x i8], align 1
  %6 = load ptr, ptr @cmdline, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %196, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @bdev_parts, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %26, %8
  %12 = phi ptr [ %14, %26 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.cmdline_parts, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cmdline_parts, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %22, %18 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.cmdline_subpart, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %15, align 4
  tail call void @kfree(ptr noundef nonnull %19) #12
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18

24:                                               ; preds = %18
  %25 = load ptr, ptr @bdev_parts, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %25, %24 ], [ %12, %11 ]
  tail call void @kfree(ptr noundef %27) #12
  store ptr %14, ptr @bdev_parts, align 4
  %28 = icmp eq ptr %14, null
  br i1 %28, label %29, label %11

29:                                               ; preds = %26
  %30 = load ptr, ptr @cmdline, align 4
  br label %31

31:                                               ; preds = %29, %8
  %32 = phi ptr [ %30, %29 ], [ %6, %8 ]
  store ptr null, ptr @bdev_parts, align 4
  %33 = tail call noalias ptr @kstrdup(ptr noundef %32, i32 noundef 3264) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %194, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %5, i32 1
  br label %37

37:                                               ; preds = %160, %35
  %38 = phi ptr [ @bdev_parts, %35 ], [ %163, %160 ]
  %39 = phi ptr [ %33, %35 ], [ %164, %160 ]
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %167, label %42

42:                                               ; preds = %37
  %43 = call ptr @strchr(ptr noundef %39, i32 noundef 59) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i8 0, ptr %43, align 1
  br label %46

46:                                               ; preds = %45, %42
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(68) %5, i8 0, i32 68, i1 false) #12, !annotation !8
  store ptr null, ptr %38, align 4
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 44) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %159, label %50

50:                                               ; preds = %46
  %51 = call ptr @strchr(ptr noundef %39, i32 noundef 58) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %148

55:                                               ; preds = %50
  %56 = ptrtoint ptr %51 to i32
  %57 = ptrtoint ptr %39 to i32
  %58 = sub i32 %56, %57
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 31) #12
  %60 = call ptr @strncpy(ptr noundef nonnull %48, ptr noundef %39, i32 noundef %59) #12
  %61 = getelementptr [32 x i8], ptr %48, i32 0, i32 %59
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds %struct.cmdline_parts, ptr %48, i32 0, i32 1
  store i32 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.cmdline_parts, ptr %48, i32 0, i32 2
  br label %64

64:                                               ; preds = %138, %55
  %65 = phi ptr [ %51, %55 ], [ %71, %138 ]
  %66 = phi ptr [ %63, %55 ], [ %142, %138 ]
  %67 = getelementptr i8, ptr %65, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %143, label %70

70:                                               ; preds = %64
  %71 = call ptr @strchr(ptr noundef %67, i32 noundef 44) #12
  %72 = icmp eq ptr %71, null
  %73 = ptrtoint ptr %71 to i32
  %74 = ptrtoint ptr %67 to i32
  %75 = sub i32 %73, %74
  %76 = call i32 @llvm.smin.i32(i32 %75, i32 67) #12
  %77 = select i1 %72, i32 67, i32 %76
  %78 = call ptr @strncpy(ptr noundef nonnull %5, ptr noundef %67, i32 noundef %77) #12
  %79 = getelementptr [68 x i8], ptr %5, i32 0, i32 %77
  store i8 0, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr %5, ptr %4, align 4
  store ptr null, ptr %66, align 4
  %80 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %81 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 56) #13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %137, label %83

83:                                               ; preds = %70
  %84 = load i8, ptr %5, align 1
  %85 = icmp eq i8 %84, 45
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.cmdline_subpart, ptr %81, i32 0, i32 2
  store i64 -1, ptr %87, align 8
  store ptr %36, ptr %4, align 4
  br label %94

88:                                               ; preds = %83
  %89 = call i64 @memparse(ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %90 = getelementptr inbounds %struct.cmdline_subpart, ptr %81, i32 0, i32 2
  store i64 %89, ptr %90, align 8
  %91 = icmp ult i64 %89, 4096
  br i1 %91, label %134, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %4, align 4
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi ptr [ %93, %92 ], [ %36, %86 ]
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 64
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %95, i32 1
  store ptr %99, ptr %4, align 4
  %100 = call i64 @memparse(ptr noundef %99, ptr noundef nonnull %4) #12
  %101 = load ptr, ptr %4, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi ptr [ %101, %98 ], [ %95, %94 ]
  %104 = phi i64 [ %100, %98 ], [ -1, %94 ]
  %105 = getelementptr inbounds %struct.cmdline_subpart, ptr %81, i32 0, i32 1
  store i64 %104, ptr %105, align 8
  %106 = load i8, ptr %103, align 1
  %107 = icmp eq i8 %106, 40
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %103, i32 1
  store ptr %109, ptr %4, align 4
  %110 = call ptr @strchr(ptr noundef %109, i32 noundef 41) #12
  %111 = icmp eq ptr %110, null
  br i1 %111, label %134, label %112

112:                                              ; preds = %108
  %113 = ptrtoint ptr %110 to i32
  %114 = ptrtoint ptr %109 to i32
  %115 = sub i32 %113, %114
  %116 = call i32 @llvm.smin.i32(i32 %115, i32 31) #12
  %117 = call ptr @strncpy(ptr noundef nonnull %81, ptr noundef %109, i32 noundef %116) #12
  %118 = getelementptr [32 x i8], ptr %81, i32 0, i32 %116
  store i8 0, ptr %118, align 1
  %119 = getelementptr i8, ptr %110, i32 1
  store ptr %119, ptr %4, align 4
  br label %121

120:                                              ; preds = %102
  store i8 0, ptr %81, align 8
  br label %121

121:                                              ; preds = %120, %112
  %122 = phi ptr [ %119, %112 ], [ %103, %120 ]
  %123 = getelementptr inbounds %struct.cmdline_subpart, ptr %81, i32 0, i32 3
  store i32 0, ptr %123, align 8
  %124 = call i32 @strncmp(ptr noundef %122, ptr noundef nonnull dereferenceable(3) @.str.5, i32 noundef 2) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  store i32 1, ptr %123, align 8
  %127 = getelementptr i8, ptr %122, i32 2
  store ptr %127, ptr %4, align 4
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i32 [ 3, %126 ], [ 2, %121 ]
  %130 = phi ptr [ %127, %126 ], [ %122, %121 ]
  %131 = call i32 @strncmp(ptr noundef %130, ptr noundef nonnull dereferenceable(3) @.str.6, i32 noundef 2) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  store i32 %129, ptr %123, align 8
  br label %138

134:                                              ; preds = %108, %88
  %135 = phi ptr [ @.str.3, %88 ], [ @.str.4, %108 ]
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %135) #14
  call void @kfree(ptr noundef nonnull %81) #12
  br label %137

137:                                              ; preds = %134, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %148

138:                                              ; preds = %133, %128
  store ptr %81, ptr %66, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %139 = load i32, ptr %62, align 8
  %140 = add i32 %139, 1
  store i32 %140, ptr %62, align 8
  %141 = load ptr, ptr %66, align 4
  %142 = getelementptr inbounds %struct.cmdline_subpart, ptr %141, i32 0, i32 4
  br i1 %72, label %143, label %64

143:                                              ; preds = %138, %64
  %144 = load ptr, ptr %63, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %143
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %148

148:                                              ; preds = %146, %137, %53
  %149 = getelementptr inbounds %struct.cmdline_parts, ptr %48, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %152, %148
  %153 = phi ptr [ %156, %152 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.cmdline_subpart, ptr %153, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  store ptr %155, ptr %149, align 4
  call void @kfree(ptr noundef nonnull %153) #12
  %156 = load ptr, ptr %149, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %152

158:                                              ; preds = %152, %148
  call void @kfree(ptr noundef nonnull %48) #12
  br label %159

159:                                              ; preds = %158, %46
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #12
  br label %172

160:                                              ; preds = %143
  store ptr %48, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #12
  %161 = getelementptr i8, ptr %43, i32 1
  %162 = load ptr, ptr %38, align 4
  %163 = getelementptr inbounds %struct.cmdline_parts, ptr %162, i32 0, i32 3
  %164 = select i1 %44, ptr %39, ptr %161
  %165 = icmp eq ptr %161, null
  %166 = or i1 %44, %165
  br i1 %166, label %167, label %37

167:                                              ; preds = %160, %37
  %168 = load ptr, ptr @bdev_parts, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %195

170:                                              ; preds = %167
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %172

172:                                              ; preds = %170, %159
  %173 = load ptr, ptr @bdev_parts, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %193, label %175

175:                                              ; preds = %190, %172
  %176 = phi ptr [ %178, %190 ], [ %173, %172 ]
  %177 = getelementptr inbounds %struct.cmdline_parts, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.cmdline_parts, ptr %176, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %190, label %182

182:                                              ; preds = %182, %175
  %183 = phi ptr [ %186, %182 ], [ %180, %175 ]
  %184 = getelementptr inbounds %struct.cmdline_subpart, ptr %183, i32 0, i32 4
  %185 = load ptr, ptr %184, align 4
  store ptr %185, ptr %179, align 4
  call void @kfree(ptr noundef nonnull %183) #12
  %186 = load ptr, ptr %179, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %182

188:                                              ; preds = %182
  %189 = load ptr, ptr @bdev_parts, align 4
  br label %190

190:                                              ; preds = %188, %175
  %191 = phi ptr [ %189, %188 ], [ %176, %175 ]
  call void @kfree(ptr noundef %191) #12
  store ptr %178, ptr @bdev_parts, align 4
  %192 = icmp eq ptr %178, null
  br i1 %192, label %193, label %175

193:                                              ; preds = %190, %172
  call void @kfree(ptr noundef nonnull %33) #12
  br label %194

194:                                              ; preds = %193, %31
  store ptr null, ptr @cmdline, align 4
  br label %366

195:                                              ; preds = %167
  call void @kfree(ptr noundef nonnull %33) #12
  store ptr null, ptr @cmdline, align 4
  br label %196

196:                                              ; preds = %195, %1
  %197 = load ptr, ptr @bdev_parts, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %366, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %0, align 4
  %201 = getelementptr inbounds %struct.gendisk, ptr %200, i32 0, i32 3
  br label %202

202:                                              ; preds = %206, %199
  %203 = phi ptr [ %208, %206 ], [ %197, %199 ]
  %204 = call i32 @strncmp(ptr noundef %201, ptr noundef nonnull %203, i32 noundef 32) #12
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.cmdline_parts, ptr %203, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %366, label %202

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.gendisk, ptr %200, i32 0, i32 7
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.block_device, ptr %212, i32 0, i32 1
  %214 = load i64, ptr %213, align 8
  %215 = shl i64 %214, 9
  %216 = getelementptr inbounds %struct.cmdline_parts, ptr %203, i32 0, i32 2
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %272, label %219

219:                                              ; preds = %210
  %220 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 4
  %221 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 2
  %222 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 1
  %223 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  br label %224

224:                                              ; preds = %246, %219
  %225 = phi ptr [ %217, %219 ], [ %270, %246 ]
  %226 = phi i32 [ 1, %219 ], [ %269, %246 ]
  %227 = phi i64 [ 0, %219 ], [ %267, %246 ]
  %228 = getelementptr inbounds %struct.cmdline_subpart, ptr %225, i32 0, i32 1
  %229 = load i64, ptr %228, align 8
  %230 = icmp eq i64 %229, -1
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store i64 %227, ptr %228, align 8
  br label %232

232:                                              ; preds = %231, %224
  %233 = phi i64 [ %227, %231 ], [ %229, %224 ]
  %234 = icmp ugt i64 %215, %233
  br i1 %234, label %235, label %272

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.cmdline_subpart, ptr %225, i32 0, i32 2
  %237 = load i64, ptr %236, align 8
  %238 = sub i64 %215, %233
  %239 = icmp ugt i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i64 %238, ptr %236, align 8
  br label %241

241:                                              ; preds = %240, %235
  %242 = phi i64 [ %238, %240 ], [ %237, %235 ]
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(68) %3, i8 0, i32 68, i1 false) #12, !annotation !8
  %243 = load i32, ptr %220, align 4
  %244 = icmp sgt i32 %243, %226
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #12
  br label %272

246:                                              ; preds = %241
  %247 = load i64, ptr %228, align 8
  %248 = lshr i64 %247, 9
  %249 = load i64, ptr %236, align 8
  %250 = lshr i64 %249, 9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %2, i8 0, i32 44, i1 false) #12, !annotation !8
  %251 = load ptr, ptr %221, align 4
  %252 = getelementptr %struct.anon.79, ptr %251, i32 %226
  store i64 %248, ptr %252, align 8
  %253 = load ptr, ptr %221, align 4
  %254 = getelementptr %struct.anon.79, ptr %253, i32 %226, i32 1
  store i64 %250, ptr %254, align 8
  %255 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 44, ptr noundef nonnull @.str.8, ptr noundef %222, i32 noundef %226) #12
  %256 = load ptr, ptr %223, align 4
  %257 = call i32 @strlcat(ptr noundef %256, ptr noundef nonnull %2, i32 noundef 4096) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #12
  %258 = load ptr, ptr %221, align 4
  %259 = getelementptr %struct.anon.79, ptr %258, i32 %226, i32 4, i32 1
  %260 = call ptr @strncpy(ptr noundef %259, ptr noundef nonnull %225, i32 noundef 32) #12
  %261 = getelementptr %struct.anon.79, ptr %258, i32 %226, i32 4, i32 1, i32 32
  store i8 0, ptr %261, align 1
  %262 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 68, ptr noundef nonnull @.str.7, ptr noundef %259) #12
  %263 = load ptr, ptr %223, align 4
  %264 = call i32 @strlcat(ptr noundef %263, ptr noundef nonnull %3, i32 noundef 4096) #12
  %265 = load ptr, ptr %221, align 4
  %266 = getelementptr %struct.anon.79, ptr %265, i32 %226, i32 3
  store i8 1, ptr %266, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #12
  %267 = add i64 %242, %233
  %268 = getelementptr inbounds %struct.cmdline_subpart, ptr %225, i32 0, i32 4
  %269 = add nuw nsw i32 %226, 1
  %270 = load ptr, ptr %268, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %224

272:                                              ; preds = %246, %245, %232, %210
  %273 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 2
  %274 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 4
  %275 = load i32, ptr %274, align 4
  %276 = icmp sgt i32 %275, 1
  br i1 %276, label %277, label %362

277:                                              ; preds = %358, %272
  %278 = phi i32 [ %359, %358 ], [ %275, %272 ]
  %279 = phi i32 [ %286, %358 ], [ 1, %272 ]
  %280 = phi i1 [ %360, %358 ], [ true, %272 ]
  %281 = load ptr, ptr %273, align 4
  %282 = getelementptr %struct.anon.79, ptr %281, i32 %279, i32 3
  %283 = load i8, ptr %282, align 4, !range !9
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %362, label %285

285:                                              ; preds = %277
  %286 = add nuw nsw i32 %279, 1
  %287 = icmp slt i32 %286, %278
  br i1 %287, label %288, label %358

288:                                              ; preds = %285
  %289 = getelementptr %struct.anon.79, ptr %281, i32 %286, i32 3
  %290 = load i8, ptr %289, align 4, !range !9
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %358, label %292

292:                                              ; preds = %353, %288
  %293 = phi i32 [ %351, %353 ], [ %286, %288 ]
  %294 = phi i1 [ %350, %353 ], [ %280, %288 ]
  %295 = phi ptr [ %354, %353 ], [ %281, %288 ]
  %296 = phi i32 [ %349, %353 ], [ %278, %288 ]
  %297 = phi i32 [ %348, %353 ], [ %278, %288 ]
  %298 = getelementptr %struct.anon.79, ptr %295, i32 %293
  %299 = getelementptr %struct.anon.79, ptr %295, i32 %279
  %300 = load i64, ptr %299, align 8
  %301 = load i64, ptr %298, align 8
  %302 = getelementptr %struct.anon.79, ptr %295, i32 %293, i32 1
  %303 = load i64, ptr %302, align 8
  %304 = add i64 %303, %301
  %305 = icmp uge i64 %300, %301
  %306 = icmp ugt i64 %304, %300
  %307 = and i1 %305, %306
  br i1 %307, label %321, label %308

308:                                              ; preds = %292
  %309 = getelementptr %struct.anon.79, ptr %295, i32 %279, i32 1
  %310 = load i64, ptr %309, align 8
  %311 = add i64 %310, %300
  %312 = icmp ule i64 %311, %301
  %313 = icmp ugt i64 %311, %304
  %314 = icmp ult i64 %301, %300
  %315 = and i1 %314, %313
  %316 = or i1 %312, %315
  %317 = xor i1 %316, true
  %318 = icmp ule i64 %304, %311
  %319 = and i1 %306, %318
  %320 = select i1 %317, i1 true, i1 %319
  br i1 %320, label %321, label %347

321:                                              ; preds = %308, %292
  br i1 %294, label %322, label %332

322:                                              ; preds = %321
  %323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  %325 = load ptr, ptr %273, align 4
  %326 = getelementptr %struct.anon.79, ptr %325, i32 %279
  %327 = load i64, ptr %326, align 8
  %328 = getelementptr %struct.anon.79, ptr %325, i32 %293
  %329 = load i64, ptr %328, align 8
  %330 = getelementptr %struct.anon.79, ptr %325, i32 %293, i32 1
  %331 = load i64, ptr %330, align 8
  br label %332

332:                                              ; preds = %322, %321
  %333 = phi i64 [ %303, %321 ], [ %331, %322 ]
  %334 = phi i64 [ %301, %321 ], [ %329, %322 ]
  %335 = phi i64 [ %300, %321 ], [ %327, %322 ]
  %336 = phi ptr [ %295, %321 ], [ %325, %322 ]
  %337 = getelementptr %struct.anon.79, ptr %336, i32 %279, i32 4, i32 1
  %338 = shl i64 %335, 9
  %339 = getelementptr %struct.anon.79, ptr %336, i32 %279, i32 1
  %340 = load i64, ptr %339, align 8
  %341 = shl i64 %340, 9
  %342 = getelementptr %struct.anon.79, ptr %336, i32 %293, i32 4, i32 1
  %343 = shl i64 %334, 9
  %344 = shl i64 %333, 9
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %337, i64 noundef %338, i64 noundef %341, ptr noundef %342, i64 noundef %343, i64 noundef %344) #14
  %346 = load i32, ptr %274, align 4
  br label %347

347:                                              ; preds = %332, %308
  %348 = phi i32 [ %346, %332 ], [ %297, %308 ]
  %349 = phi i32 [ %346, %332 ], [ %296, %308 ]
  %350 = phi i1 [ false, %332 ], [ %294, %308 ]
  %351 = add nuw nsw i32 %293, 1
  %352 = icmp slt i32 %351, %349
  br i1 %352, label %353, label %358

353:                                              ; preds = %347
  %354 = load ptr, ptr %273, align 4
  %355 = getelementptr %struct.anon.79, ptr %354, i32 %351, i32 3
  %356 = load i8, ptr %355, align 4, !range !9
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %292

358:                                              ; preds = %353, %347, %288, %285
  %359 = phi i32 [ %278, %285 ], [ %278, %288 ], [ %348, %347 ], [ %348, %353 ]
  %360 = phi i1 [ %280, %285 ], [ %280, %288 ], [ %350, %347 ], [ %350, %353 ]
  %361 = icmp slt i32 %286, %359
  br i1 %361, label %277, label %362

362:                                              ; preds = %358, %277, %272
  %363 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 6
  %364 = load ptr, ptr %363, align 4
  %365 = call i32 @strlcat(ptr noundef %364, ptr noundef nonnull @.str, i32 noundef 4096) #12
  br label %366

366:                                              ; preds = %362, %206, %196, %194
  %367 = phi i32 [ -1, %194 ], [ 1, %362 ], [ 0, %196 ], [ 0, %206 ]
  ret i32 %367
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
