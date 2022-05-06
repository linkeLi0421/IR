; ModuleID = '/llk/IR/drivers/mtd/mtdconcat.c_pt.bc'
source_filename = "../drivers/mtd/mtdconcat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_concat_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_concat_create\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_concat_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_concat_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_concat_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_concat_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_concat = type { %struct.mtd_info, i32, ptr }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"\015Concatenating MTD devices:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\015(%d): \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\015into device \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"memory allocation error while creating concatenated device \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Incompatible device type on \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Incompatible device flags on \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Incompatible OOB or ECC data on \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"memory allocation error while creating erase region list for device \22%s\22\0A\00", align 1
@__kstrtab_mtd_concat_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_concat_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_concat_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_concat_create to i32), ptr @__kstrtab_mtd_concat_create, ptr @__kstrtabns_mtd_concat_create }, section "___ksymtab+mtd_concat_create", align 4
@__kstrtab_mtd_concat_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_concat_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_concat_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_concat_destroy to i32), ptr @__kstrtab_mtd_concat_destroy, ptr @__kstrtabns_mtd_concat_destroy }, section "___ksymtab+mtd_concat_destroy", align 4
@__UNIQUE_ID_file238 = internal constant [25 x i8] c"mtd.file=drivers/mtd/mtd\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [16 x i8] c"mtd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [44 x i8] c"mtd.author=Robert Kaiser <rkaiser@sysgo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [65 x i8] c"mtd.description=Generic support for concatenating of MTD devices\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"\013mtdconcat: Cannot write from panic without panic_write\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__ksymtab_mtd_concat_create, ptr @__ksymtab_mtd_concat_destroy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtd_concat_create(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %13, %6 ], [ 0, %3 ]
  %8 = getelementptr ptr, ptr %0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %7, ptr noundef %11) #8
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6

15:                                               ; preds = %6, %3
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %2) #8
  %17 = shl i32 %1, 2
  %18 = add i32 %17, 816
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %2) #8
  br label %425

23:                                               ; preds = %15
  %24 = getelementptr %struct.mtd_concat, ptr %19, i32 1
  %25 = getelementptr inbounds %struct.mtd_concat, ptr %19, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = load i8, ptr %26, align 8
  store i8 %27, ptr %19, align 64
  %28 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 2
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 3
  store i32 %36, ptr %37, align 16
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.mtd_info, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 4
  store i32 %40, ptr %41, align 4
  br i1 %5, label %42, label %52

42:                                               ; preds = %42, %23
  %43 = phi i32 [ %50, %42 ], [ 0, %23 ]
  %44 = phi i32 [ %49, %42 ], [ 0, %23 ]
  %45 = getelementptr ptr, ptr %0, i32 %43
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mtd_info, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = tail call i32 @llvm.umax.i32(i32 %44, i32 %48)
  %50 = add nuw nsw i32 %43, 1
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %52, label %42

52:                                               ; preds = %42, %23
  %53 = phi i32 [ 0, %23 ], [ %49, %42 ]
  %54 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 5
  store i32 %53, ptr %54, align 8
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 53
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 53
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 6
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.mtd_info, ptr %62, i32 0, i32 7
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 7
  store i32 %64, ptr %65, align 32
  br label %66

66:                                               ; preds = %66, %52
  %67 = phi ptr [ %62, %52 ], [ %69, %66 ]
  %68 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 62
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %66

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 36
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 36
  store ptr @concat_writev, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 27
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 27
  store ptr @concat_read_oob, ptr %82, align 16
  br label %83

83:                                               ; preds = %81, %77
  %84 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 28
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 28
  store ptr @concat_write_oob, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 42
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 42
  store ptr @concat_block_isbad, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 43
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 43
  store ptr @concat_block_markbad, ptr %100, align 16
  br label %101

101:                                              ; preds = %99, %95
  %102 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 26
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 26
  store ptr @concat_panic_write, ptr %106, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 24
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 24
  store ptr @concat_read, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = getelementptr inbounds %struct.mtd_info, ptr %67, i32 0, i32 25
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 25
  store ptr @concat_write, ptr %118, align 8
  br label %119

119:                                              ; preds = %117, %113
  %120 = load ptr, ptr %0, align 4
  %121 = getelementptr inbounds %struct.mtd_info, ptr %120, i32 0, i32 52, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 52, i32 2
  store i32 %122, ptr %123, align 4
  store ptr %120, ptr %24, align 16
  %124 = icmp sgt i32 %1, 1
  br i1 %124, label %125, label %220

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 27
  %127 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 28
  %128 = getelementptr ptr, ptr %0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load i8, ptr %129, align 8
  %131 = icmp eq i8 %27, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %214, %125
  %133 = phi ptr [ %128, %125 ], [ %216, %214 ]
  tail call void @kfree(ptr noundef nonnull %19) #10
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.mtd_info, ptr %134, i32 0, i32 13
  %136 = load ptr, ptr %135, align 8
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %136) #8
  br label %425

138:                                              ; preds = %214, %125
  %139 = phi ptr [ %217, %214 ], [ %129, %125 ]
  %140 = phi ptr [ %216, %214 ], [ %128, %125 ]
  %141 = phi i32 [ %212, %214 ], [ 1, %125 ]
  %142 = load i32, ptr %30, align 4
  %143 = getelementptr inbounds %struct.mtd_info, ptr %139, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %159, label %146

146:                                              ; preds = %138
  %147 = xor i32 %144, %142
  %148 = and i32 %147, -1025
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  tail call void @kfree(ptr noundef nonnull %19) #10
  %151 = load ptr, ptr %140, align 4
  %152 = getelementptr inbounds %struct.mtd_info, ptr %151, i32 0, i32 13
  %153 = load ptr, ptr %152, align 8
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %153) #8
  br label %425

155:                                              ; preds = %146
  %156 = and i32 %144, 1024
  %157 = or i32 %156, %142
  store i32 %157, ptr %30, align 4
  %158 = load ptr, ptr %140, align 4
  br label %159

159:                                              ; preds = %155, %138
  %160 = phi ptr [ %158, %155 ], [ %139, %138 ]
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi ptr [ %160, %159 ], [ %164, %161 ]
  %163 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 62
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %161

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.mtd_info, ptr %160, i32 0, i32 2
  %168 = load i64, ptr %167, align 8
  %169 = load i64, ptr %34, align 8
  %170 = add i64 %169, %168
  store i64 %170, ptr %34, align 8
  %171 = getelementptr inbounds %struct.mtd_info, ptr %160, i32 0, i32 52, i32 2
  %172 = load i32, ptr %171, align 4
  %173 = load i32, ptr %123, align 4
  %174 = add i32 %173, %172
  store i32 %174, ptr %123, align 4
  %175 = load i32, ptr %41, align 4
  %176 = load ptr, ptr %140, align 4
  %177 = getelementptr inbounds %struct.mtd_info, ptr %176, i32 0, i32 4
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %204

180:                                              ; preds = %166
  %181 = load i32, ptr %58, align 4
  %182 = getelementptr inbounds %struct.mtd_info, ptr %176, i32 0, i32 53
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %204

185:                                              ; preds = %180
  %186 = load i32, ptr %61, align 4
  %187 = getelementptr inbounds %struct.mtd_info, ptr %176, i32 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %185
  %191 = load ptr, ptr %126, align 16
  %192 = icmp ne ptr %191, null
  %193 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 27
  %194 = load ptr, ptr %193, align 8
  %195 = icmp eq ptr %194, null
  %196 = xor i1 %192, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %190
  %198 = load ptr, ptr %127, align 4
  %199 = icmp ne ptr %198, null
  %200 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 28
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  %203 = xor i1 %199, %202
  br i1 %203, label %209, label %204

204:                                              ; preds = %197, %190, %185, %180, %166
  tail call void @kfree(ptr noundef nonnull %19) #10
  %205 = load ptr, ptr %140, align 4
  %206 = getelementptr inbounds %struct.mtd_info, ptr %205, i32 0, i32 13
  %207 = load ptr, ptr %206, align 8
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %207) #8
  br label %425

209:                                              ; preds = %197
  %210 = load ptr, ptr %25, align 4
  %211 = getelementptr ptr, ptr %210, i32 %141
  store ptr %176, ptr %211, align 4
  %212 = add nuw nsw i32 %141, 1
  %213 = icmp eq i32 %212, %1
  br i1 %213, label %220, label %214

214:                                              ; preds = %209
  %215 = load i8, ptr %19, align 64
  %216 = getelementptr ptr, ptr %0, i32 %212
  %217 = load ptr, ptr %216, align 4
  %218 = load i8, ptr %217, align 8
  %219 = icmp eq i8 %215, %218
  br i1 %219, label %138, label %132

220:                                              ; preds = %209, %119
  %221 = load ptr, ptr %0, align 4
  %222 = getelementptr inbounds %struct.mtd_info, ptr %221, i32 0, i32 15
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 15
  store ptr %223, ptr %224, align 64
  %225 = getelementptr inbounds %struct.mtd_concat, ptr %19, i32 0, i32 1
  store i32 %1, ptr %225, align 8
  %226 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 13
  store ptr %2, ptr %226, align 8
  %227 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 21
  store ptr @concat_erase, ptr %227, align 8
  %228 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 37
  store ptr @concat_sync, ptr %228, align 8
  %229 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 38
  store ptr @concat_lock, ptr %229, align 4
  %230 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 39
  store ptr @concat_unlock, ptr %230, align 32
  %231 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 40
  store ptr @concat_is_locked, ptr %231, align 4
  %232 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 45
  store ptr @concat_suspend, ptr %232, align 8
  %233 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 46
  store ptr @concat_resume, ptr %233, align 4
  %234 = load ptr, ptr %0, align 4
  %235 = getelementptr inbounds %struct.mtd_info, ptr %234, i32 0, i32 3
  %236 = load i32, ptr %235, align 8
  br i1 %5, label %237, label %284

237:                                              ; preds = %279, %220
  %238 = phi ptr [ %281, %279 ], [ %234, %220 ]
  %239 = phi i32 [ %277, %279 ], [ 0, %220 ]
  %240 = phi i32 [ %276, %279 ], [ %236, %220 ]
  %241 = phi i32 [ %275, %279 ], [ %236, %220 ]
  %242 = phi i32 [ %274, %279 ], [ 1, %220 ]
  %243 = getelementptr inbounds %struct.mtd_info, ptr %238, i32 0, i32 19
  %244 = load i32, ptr %243, align 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %237
  %247 = icmp sgt i32 %244, 0
  br i1 %247, label %248, label %273

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.mtd_info, ptr %238, i32 0, i32 20
  %250 = load ptr, ptr %249, align 4
  br label %258

251:                                              ; preds = %237
  %252 = getelementptr inbounds %struct.mtd_info, ptr %238, i32 0, i32 3
  %253 = load i32, ptr %252, align 8
  %254 = icmp eq i32 %253, %241
  br i1 %254, label %273, label %255

255:                                              ; preds = %251
  %256 = add i32 %242, 1
  %257 = tail call i32 @llvm.umax.i32(i32 %253, i32 %240)
  br label %273

258:                                              ; preds = %258, %248
  %259 = phi i32 [ %240, %248 ], [ %270, %258 ]
  %260 = phi i32 [ %241, %248 ], [ %264, %258 ]
  %261 = phi i32 [ 0, %248 ], [ %271, %258 ]
  %262 = phi i32 [ %242, %248 ], [ %269, %258 ]
  %263 = getelementptr %struct.mtd_erase_region_info, ptr %250, i32 %261, i32 1
  %264 = load i32, ptr %263, align 8
  %265 = icmp eq i32 %264, %260
  %266 = tail call i32 @llvm.umax.i32(i32 %264, i32 %259)
  %267 = xor i1 %265, true
  %268 = zext i1 %267 to i32
  %269 = add i32 %262, %268
  %270 = select i1 %265, i32 %259, i32 %266
  %271 = add nuw nsw i32 %261, 1
  %272 = icmp eq i32 %271, %244
  br i1 %272, label %273, label %258

273:                                              ; preds = %258, %255, %251, %246
  %274 = phi i32 [ %242, %251 ], [ %256, %255 ], [ %242, %246 ], [ %269, %258 ]
  %275 = phi i32 [ %241, %251 ], [ %253, %255 ], [ %241, %246 ], [ %264, %258 ]
  %276 = phi i32 [ %240, %251 ], [ %257, %255 ], [ %240, %246 ], [ %270, %258 ]
  %277 = add nuw nsw i32 %239, 1
  %278 = icmp eq i32 %277, %1
  br i1 %278, label %282, label %279

279:                                              ; preds = %273
  %280 = getelementptr ptr, ptr %0, i32 %277
  %281 = load ptr, ptr %280, align 4
  br label %237

282:                                              ; preds = %273
  %283 = icmp eq i32 %274, 1
  br i1 %283, label %284, label %287

284:                                              ; preds = %282, %220
  %285 = phi i32 [ %275, %282 ], [ %236, %220 ]
  store i32 %285, ptr %37, align 16
  %286 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 19
  store i32 0, ptr %286, align 16
  br label %425

287:                                              ; preds = %282
  store i32 %276, ptr %37, align 16
  %288 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 19
  store i32 %274, ptr %288, align 16
  %289 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %274, i32 24) #10
  %290 = extractvalue { i32, i1 } %289, 1
  br i1 %290, label %291, label %293, !prof !8

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 20
  store ptr null, ptr %292, align 4
  br label %298

293:                                              ; preds = %287
  %294 = extractvalue { i32, i1 } %289, 0
  %295 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %294, i32 noundef 3264) #9
  %296 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 20
  store ptr %295, ptr %296, align 4
  %297 = icmp eq ptr %295, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %293, %291
  tail call void @kfree(ptr noundef nonnull %19) #10
  %299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %2) #8
  br label %425

300:                                              ; preds = %293
  %301 = load ptr, ptr %0, align 4
  %302 = getelementptr inbounds %struct.mtd_info, ptr %301, i32 0, i32 3
  %303 = load i32, ptr %302, align 8
  br i1 %5, label %304, label %407

304:                                              ; preds = %404, %300
  %305 = phi ptr [ %406, %404 ], [ %301, %300 ]
  %306 = phi i32 [ %402, %404 ], [ 0, %300 ]
  %307 = phi i32 [ %401, %404 ], [ %303, %300 ]
  %308 = phi i64 [ %400, %404 ], [ 0, %300 ]
  %309 = phi i64 [ %399, %404 ], [ 0, %300 ]
  %310 = phi ptr [ %398, %404 ], [ %295, %300 ]
  %311 = getelementptr ptr, ptr %0, i32 %306
  %312 = getelementptr inbounds %struct.mtd_info, ptr %305, i32 0, i32 19
  %313 = load i32, ptr %312, align 8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %320, label %315

315:                                              ; preds = %304
  %316 = icmp sgt i32 %313, 0
  br i1 %316, label %317, label %397

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.mtd_info, ptr %305, i32 0, i32 20
  %319 = load ptr, ptr %318, align 4
  br label %350

320:                                              ; preds = %304
  %321 = getelementptr inbounds %struct.mtd_info, ptr %305, i32 0, i32 3
  %322 = load i32, ptr %321, align 8
  %323 = icmp eq i32 %322, %307
  br i1 %323, label %342, label %324

324:                                              ; preds = %320
  store i64 %309, ptr %310, align 8
  %325 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %310, i32 0, i32 1
  store i32 %307, ptr %325, align 8
  %326 = sub i64 %308, %309
  %327 = icmp ult i64 %326, 4294967296
  br i1 %327, label %328, label %331, !prof !9

328:                                              ; preds = %324
  %329 = trunc i64 %326 to i32
  %330 = udiv i32 %329, %307
  br label %335

331:                                              ; preds = %324
  %332 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %307, i64 %326) #11, !srcloc !10
  %333 = extractvalue { i64, i64 } %332, 1
  %334 = trunc i64 %333 to i32
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi i32 [ %330, %328 ], [ %334, %331 ]
  %337 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %310, i32 0, i32 2
  store i32 %336, ptr %337, align 4
  %338 = load ptr, ptr %311, align 4
  %339 = getelementptr inbounds %struct.mtd_info, ptr %338, i32 0, i32 3
  %340 = load i32, ptr %339, align 8
  %341 = getelementptr %struct.mtd_erase_region_info, ptr %310, i32 1
  br label %342

342:                                              ; preds = %335, %320
  %343 = phi ptr [ %338, %335 ], [ %305, %320 ]
  %344 = phi ptr [ %341, %335 ], [ %310, %320 ]
  %345 = phi i64 [ %308, %335 ], [ %309, %320 ]
  %346 = phi i32 [ %340, %335 ], [ %307, %320 ]
  %347 = getelementptr inbounds %struct.mtd_info, ptr %343, i32 0, i32 2
  %348 = load i64, ptr %347, align 8
  %349 = add i64 %348, %308
  br label %397

350:                                              ; preds = %381, %317
  %351 = phi ptr [ %382, %381 ], [ %319, %317 ]
  %352 = phi ptr [ %383, %381 ], [ %305, %317 ]
  %353 = phi i32 [ %393, %381 ], [ 0, %317 ]
  %354 = phi i32 [ %386, %381 ], [ %307, %317 ]
  %355 = phi i64 [ %392, %381 ], [ %308, %317 ]
  %356 = phi i64 [ %385, %381 ], [ %309, %317 ]
  %357 = phi ptr [ %384, %381 ], [ %310, %317 ]
  %358 = getelementptr %struct.mtd_erase_region_info, ptr %351, i32 %353, i32 1
  %359 = load i32, ptr %358, align 8
  %360 = icmp eq i32 %359, %354
  br i1 %360, label %381, label %361

361:                                              ; preds = %350
  store i64 %356, ptr %357, align 8
  %362 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %357, i32 0, i32 1
  store i32 %354, ptr %362, align 8
  %363 = sub i64 %355, %356
  %364 = icmp ult i64 %363, 4294967296
  br i1 %364, label %365, label %368, !prof !9

365:                                              ; preds = %361
  %366 = trunc i64 %363 to i32
  %367 = udiv i32 %366, %354
  br label %372

368:                                              ; preds = %361
  %369 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %354, i64 %363) #11, !srcloc !10
  %370 = extractvalue { i64, i64 } %369, 1
  %371 = trunc i64 %370 to i32
  br label %372

372:                                              ; preds = %368, %365
  %373 = phi i32 [ %367, %365 ], [ %371, %368 ]
  %374 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %357, i32 0, i32 2
  store i32 %373, ptr %374, align 4
  %375 = load ptr, ptr %311, align 4
  %376 = getelementptr inbounds %struct.mtd_info, ptr %375, i32 0, i32 20
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr %struct.mtd_erase_region_info, ptr %377, i32 %353, i32 1
  %379 = load i32, ptr %378, align 8
  %380 = getelementptr %struct.mtd_erase_region_info, ptr %357, i32 1
  br label %381

381:                                              ; preds = %372, %350
  %382 = phi ptr [ %377, %372 ], [ %351, %350 ]
  %383 = phi ptr [ %375, %372 ], [ %352, %350 ]
  %384 = phi ptr [ %380, %372 ], [ %357, %350 ]
  %385 = phi i64 [ %355, %372 ], [ %356, %350 ]
  %386 = phi i32 [ %379, %372 ], [ %354, %350 ]
  %387 = getelementptr %struct.mtd_erase_region_info, ptr %382, i32 %353, i32 2
  %388 = load i32, ptr %387, align 4
  %389 = zext i32 %388 to i64
  %390 = zext i32 %386 to i64
  %391 = mul nuw i64 %389, %390
  %392 = add i64 %391, %355
  %393 = add nuw nsw i32 %353, 1
  %394 = getelementptr inbounds %struct.mtd_info, ptr %383, i32 0, i32 19
  %395 = load i32, ptr %394, align 8
  %396 = icmp slt i32 %393, %395
  br i1 %396, label %350, label %397

397:                                              ; preds = %381, %342, %315
  %398 = phi ptr [ %344, %342 ], [ %310, %315 ], [ %384, %381 ]
  %399 = phi i64 [ %345, %342 ], [ %309, %315 ], [ %385, %381 ]
  %400 = phi i64 [ %349, %342 ], [ %308, %315 ], [ %392, %381 ]
  %401 = phi i32 [ %346, %342 ], [ %307, %315 ], [ %386, %381 ]
  %402 = add nuw nsw i32 %306, 1
  %403 = icmp eq i32 %402, %1
  br i1 %403, label %407, label %404

404:                                              ; preds = %397
  %405 = getelementptr ptr, ptr %0, i32 %402
  %406 = load ptr, ptr %405, align 4
  br label %304

407:                                              ; preds = %397, %300
  %408 = phi ptr [ %295, %300 ], [ %398, %397 ]
  %409 = phi i64 [ 0, %300 ], [ %399, %397 ]
  %410 = phi i64 [ 0, %300 ], [ %400, %397 ]
  %411 = phi i32 [ %303, %300 ], [ %401, %397 ]
  store i64 %409, ptr %408, align 8
  %412 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %408, i32 0, i32 1
  store i32 %411, ptr %412, align 8
  %413 = sub i64 %410, %409
  %414 = icmp ult i64 %413, 4294967296
  br i1 %414, label %415, label %418, !prof !9

415:                                              ; preds = %407
  %416 = trunc i64 %413 to i32
  %417 = udiv i32 %416, %411
  br label %422

418:                                              ; preds = %407
  %419 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %411, i64 %413) #11, !srcloc !10
  %420 = extractvalue { i64, i64 } %419, 1
  %421 = trunc i64 %420 to i32
  br label %422

422:                                              ; preds = %418, %415
  %423 = phi i32 [ %417, %415 ], [ %421, %418 ]
  %424 = getelementptr inbounds %struct.mtd_erase_region_info, ptr %408, i32 0, i32 2
  store i32 %423, ptr %424, align 4
  br label %425

425:                                              ; preds = %422, %298, %284, %204, %150, %132, %21
  %426 = phi ptr [ null, %132 ], [ null, %150 ], [ null, %204 ], [ null, %21 ], [ null, %298 ], [ %19, %422 ], [ %19, %284 ]
  ret ptr %426
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_writev(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi i32 [ %14, %8 ], [ 0, %5 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %5 ]
  %11 = getelementptr %struct.kvec, ptr %1, i32 %9, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = add nuw i32 %9, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  %17 = phi i32 [ 0, %5 ], [ %13, %8 ]
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = icmp ult i64 %3, 4294967296
  br i1 %22, label %23, label %26, !prof !9

23:                                               ; preds = %21
  %24 = trunc i64 %3 to i32
  %25 = urem i32 %24, %19
  br label %31

26:                                               ; preds = %21
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %3) #11, !srcloc !10
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i32 [ %25, %23 ], [ %30, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %109

34:                                               ; preds = %31
  %35 = urem i32 %17, %19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %34, %16
  %38 = shl i32 %2, 3
  %39 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %38, i32 noundef 3264) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %109, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %47

47:                                               ; preds = %100, %45
  %48 = phi i32 [ %43, %45 ], [ %101, %100 ]
  %49 = phi i64 [ %3, %45 ], [ %102, %100 ]
  %50 = phi i32 [ 0, %45 ], [ %103, %100 ]
  %51 = phi i32 [ 0, %45 ], [ %105, %100 ]
  %52 = phi i32 [ %17, %45 ], [ %104, %100 ]
  %53 = load ptr, ptr %46, align 4
  %54 = getelementptr ptr, ptr %53, i32 %51
  %55 = load ptr, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !11
  %56 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = icmp ult i64 %49, %57
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = sub i64 %49, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %100

61:                                               ; preds = %47
  %62 = zext i32 %52 to i64
  %63 = sub i64 %57, %49
  %64 = call i64 @llvm.umin.i64(i64 %63, i64 %62)
  %65 = trunc i64 %64 to i32
  %66 = icmp ult i32 %50, %2
  br i1 %66, label %67, label %77

67:                                               ; preds = %73, %61
  %68 = phi i32 [ %75, %73 ], [ %65, %61 ]
  %69 = phi i32 [ %74, %73 ], [ %50, %61 ]
  %70 = getelementptr %struct.kvec, ptr %39, i32 %69, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = add nuw i32 %69, 1
  %75 = sub i32 %68, %71
  %76 = icmp eq i32 %74, %2
  br i1 %76, label %77, label %67

77:                                               ; preds = %73, %67, %61
  %78 = phi i32 [ %50, %61 ], [ %69, %67 ], [ %2, %73 ]
  %79 = phi i32 [ %65, %61 ], [ %68, %67 ], [ %75, %73 ]
  %80 = getelementptr %struct.kvec, ptr %39, i32 %78
  %81 = getelementptr %struct.kvec, ptr %39, i32 %78, i32 1
  %82 = load i32, ptr %81, align 4
  store i32 %79, ptr %81, align 4
  %83 = getelementptr %struct.kvec, ptr %39, i32 %50
  %84 = sub i32 1, %50
  %85 = add i32 %84, %78
  %86 = call i32 @mtd_writev(ptr noundef %55, ptr noundef %83, i32 noundef %85, i64 noundef %49, ptr noundef nonnull %6) #10
  %87 = sub i32 %82, %79
  store i32 %87, ptr %81, align 4
  %88 = load ptr, ptr %80, align 4
  %89 = getelementptr i8, ptr %88, i32 %79
  store ptr %89, ptr %80, align 4
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %107

92:                                               ; preds = %77
  %93 = load i32, ptr %6, align 4
  %94 = load i32, ptr %4, align 4
  %95 = add i32 %94, %93
  store i32 %95, ptr %4, align 4
  %96 = sub i32 %52, %65
  %97 = icmp eq i32 %96, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br i1 %97, label %107, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %42, align 8
  br label %100

100:                                              ; preds = %98, %59
  %101 = phi i32 [ %48, %59 ], [ %99, %98 ]
  %102 = phi i64 [ %60, %59 ], [ 0, %98 ]
  %103 = phi i32 [ %50, %59 ], [ %78, %98 ]
  %104 = phi i32 [ %52, %59 ], [ %96, %98 ]
  %105 = add nuw nsw i32 %51, 1
  %106 = icmp slt i32 %105, %101
  br i1 %106, label %47, label %107

107:                                              ; preds = %100, %92, %91, %41
  %108 = phi i32 [ %86, %91 ], [ -22, %41 ], [ -22, %100 ], [ 0, %92 ]
  call void @kfree(ptr noundef nonnull %39) #10
  br label %109

109:                                              ; preds = %107, %37, %34, %31
  %110 = phi i32 [ %108, %107 ], [ -12, %37 ], [ -22, %31 ], [ -22, %34 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_read_oob(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.mtd_oob_ops, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef align 4 dereferenceable(32) %2, i32 32, i1 false)
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %19 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 6
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 7
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 3
  br label %22

22:                                               ; preds = %79, %12
  %23 = phi i32 [ 0, %12 ], [ %81, %79 ]
  %24 = phi i32 [ 0, %12 ], [ %82, %79 ]
  %25 = phi i64 [ %1, %12 ], [ %80, %79 ]
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr ptr, ptr %26, i32 %24
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = sub i64 %25, %30
  br label %79

34:                                               ; preds = %22
  %35 = load i32, ptr %14, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %25, %36
  %38 = icmp ugt i64 %37, %30
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = sub i64 %30, %25
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %14, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = call i32 @mtd_read_oob(ptr noundef %28, i64 noundef %25, ptr noundef nonnull %4) #10
  %44 = load i32, ptr %15, align 4
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %45, %44
  store i32 %46, ptr %6, align 4
  %47 = load i32, ptr %16, align 4
  %48 = load i32, ptr %5, align 4
  %49 = add i32 %48, %47
  store i32 %49, ptr %5, align 4
  switch i32 %43, label %85 [
    i32 0, label %58
    i32 -74, label %50
    i32 -117, label %53
  ], !prof !12

50:                                               ; preds = %42
  %51 = load i32, ptr %18, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %18, align 4
  br label %58

53:                                               ; preds = %42
  %54 = load i32, ptr %17, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %17, align 4
  %56 = icmp eq i32 %23, 0
  %57 = select i1 %56, i32 -117, i32 %23
  br label %58

58:                                               ; preds = %53, %50, %42
  %59 = phi i32 [ -74, %50 ], [ %23, %42 ], [ %57, %53 ]
  %60 = load ptr, ptr %19, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %7, align 4
  %64 = load i32, ptr %6, align 4
  %65 = sub i32 %63, %64
  store i32 %65, ptr %14, align 4
  %66 = icmp eq i32 %63, %64
  br i1 %66, label %85, label %67

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %60, i32 %44
  store ptr %68, ptr %19, align 4
  br label %69

69:                                               ; preds = %67, %58
  %70 = load ptr, ptr %20, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %8, align 4
  %74 = load i32, ptr %5, align 4
  %75 = sub i32 %73, %74
  store i32 %75, ptr %21, align 4
  %76 = icmp eq i32 %73, %74
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = getelementptr i8, ptr %70, i32 %74
  store ptr %78, ptr %20, align 4
  br label %79

79:                                               ; preds = %77, %69, %32
  %80 = phi i64 [ %33, %32 ], [ 0, %77 ], [ 0, %69 ]
  %81 = phi i32 [ %23, %32 ], [ %59, %77 ], [ %59, %69 ]
  %82 = add nuw nsw i32 %24, 1
  %83 = load i32, ptr %9, align 8
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %22, label %85

85:                                               ; preds = %79, %72, %62, %42, %3
  %86 = phi i32 [ -22, %3 ], [ %43, %42 ], [ %59, %72 ], [ %59, %62 ], [ -22, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_write_oob(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.mtd_oob_ops, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef align 4 dereferenceable(32) %2, i32 32, i1 false)
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %76, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 4
  %22 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 6
  %23 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 7
  %24 = getelementptr inbounds %struct.mtd_oob_ops, ptr %4, i32 0, i32 3
  br label %25

25:                                               ; preds = %71, %17
  %26 = phi i32 [ 0, %17 ], [ %73, %71 ]
  %27 = phi i64 [ %1, %17 ], [ %72, %71 ]
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr ptr, ptr %28, i32 %26
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mtd_info, ptr %30, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = sub i64 %27, %32
  br label %71

36:                                               ; preds = %25
  %37 = load i32, ptr %19, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %27, %38
  %40 = icmp ugt i64 %39, %32
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = sub i64 %32, %27
  %43 = trunc i64 %42 to i32
  store i32 %43, ptr %19, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = call i32 @mtd_write_oob(ptr noundef %30, i64 noundef %27, ptr noundef nonnull %4) #10
  %46 = load i32, ptr %20, align 4
  %47 = load i32, ptr %11, align 4
  %48 = add i32 %47, %46
  store i32 %48, ptr %11, align 4
  %49 = load i32, ptr %21, align 4
  %50 = load i32, ptr %10, align 4
  %51 = add i32 %50, %49
  store i32 %51, ptr %10, align 4
  %52 = icmp eq i32 %45, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = load ptr, ptr %22, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %12, align 4
  %58 = sub i32 %57, %48
  store i32 %58, ptr %19, align 4
  %59 = icmp eq i32 %57, %48
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %54, i32 %46
  store ptr %61, ptr %22, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load ptr, ptr %23, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %13, align 4
  %67 = sub i32 %66, %51
  store i32 %67, ptr %24, align 4
  %68 = icmp eq i32 %66, %51
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %63, i32 %49
  store ptr %70, ptr %23, align 4
  br label %71

71:                                               ; preds = %69, %62, %34
  %72 = phi i64 [ %35, %34 ], [ 0, %69 ], [ 0, %62 ]
  %73 = add nuw nsw i32 %26, 1
  %74 = load i32, ptr %14, align 8
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %25, label %76

76:                                               ; preds = %71, %65, %56, %44, %9, %3
  %77 = phi i32 [ -30, %3 ], [ -22, %9 ], [ -22, %71 ], [ %45, %44 ], [ 0, %56 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_block_isbad(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %5, %2 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 42
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = icmp ugt i64 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %33, %19
  %24 = phi ptr [ %5, %19 ], [ %36, %33 ]
  %25 = phi i64 [ %1, %19 ], [ %34, %33 ]
  %26 = tail call i32 @mtd_block_isbad(ptr noundef %24, i64 noundef %25) #10
  br label %40

27:                                               ; preds = %33, %19
  %28 = phi i64 [ %38, %33 ], [ %21, %19 ]
  %29 = phi i64 [ %34, %33 ], [ %1, %19 ]
  %30 = phi i32 [ %31, %33 ], [ 0, %19 ]
  %31 = add nuw nsw i32 %30, 1
  %32 = icmp eq i32 %31, %17
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = sub i64 %29, %28
  %35 = getelementptr ptr, ptr %4, i32 %31
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %23, label %27

40:                                               ; preds = %27, %23, %15, %11
  %41 = phi i32 [ 0, %11 ], [ %26, %23 ], [ 0, %15 ], [ 0, %27 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_block_markbad(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %24, %6
  %10 = phi i32 [ 0, %6 ], [ %26, %24 ]
  %11 = phi i64 [ %1, %6 ], [ %25, %24 ]
  %12 = getelementptr ptr, ptr %8, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = tail call i32 @mtd_block_markbad(ptr noundef %13, i64 noundef %11) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %28

24:                                               ; preds = %9
  %25 = sub i64 %11, %15
  %26 = add nuw nsw i32 %10, 1
  %27 = icmp eq i32 %26, %4
  br i1 %27, label %28, label %9

28:                                               ; preds = %24, %20, %17, %2
  %29 = phi i32 [ 0, %20 ], [ %18, %17 ], [ -22, %2 ], [ -22, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_panic_write(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %46, %10
  %13 = phi i32 [ %8, %10 ], [ %47, %46 ]
  %14 = phi i32 [ 0, %10 ], [ %51, %46 ]
  %15 = phi ptr [ %4, %10 ], [ %50, %46 ]
  %16 = phi i64 [ %1, %10 ], [ %49, %46 ]
  %17 = phi i32 [ %2, %10 ], [ %48, %46 ]
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr ptr, ptr %18, i32 %14
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !11
  %21 = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp ult i64 %16, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = sub i64 %16, %22
  br label %46

26:                                               ; preds = %12
  %27 = zext i32 %17 to i64
  %28 = add i64 %16, %27
  %29 = icmp ugt i64 %28, %22
  %30 = sub i64 %22, %16
  %31 = trunc i64 %30 to i32
  %32 = select i1 %29, i32 %31, i32 %17
  %33 = call i32 @mtd_panic_write(ptr noundef %20, i64 noundef %16, i32 noundef %32, ptr noundef nonnull %6, ptr noundef %15) #10
  switch i32 %33, label %43 [
    i32 -95, label %44
    i32 0, label %34
  ]

34:                                               ; preds = %26
  %35 = load i32, ptr %6, align 4
  %36 = load i32, ptr %3, align 4
  %37 = add i32 %36, %35
  store i32 %37, ptr %3, align 4
  %38 = sub i32 %17, %32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %15, i32 %32
  %42 = load i32, ptr %7, align 8
  br label %46

43:                                               ; preds = %34, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %53

44:                                               ; preds = %26
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %53

46:                                               ; preds = %40, %24
  %47 = phi i32 [ %42, %40 ], [ %13, %24 ]
  %48 = phi i32 [ %38, %40 ], [ %17, %24 ]
  %49 = phi i64 [ 0, %40 ], [ %25, %24 ]
  %50 = phi ptr [ %41, %40 ], [ %15, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %51 = add nuw nsw i32 %14, 1
  %52 = icmp slt i32 %51, %47
  br i1 %52, label %12, label %53

53:                                               ; preds = %46, %44, %43, %5
  %54 = phi i32 [ -95, %44 ], [ %33, %43 ], [ -22, %5 ], [ -22, %46 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_read(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %14

14:                                               ; preds = %57, %10
  %15 = phi i32 [ %8, %10 ], [ %58, %57 ]
  %16 = phi i32 [ 0, %10 ], [ %63, %57 ]
  %17 = phi i32 [ 0, %10 ], [ %62, %57 ]
  %18 = phi ptr [ %4, %10 ], [ %61, %57 ]
  %19 = phi i32 [ %2, %10 ], [ %60, %57 ]
  %20 = phi i64 [ %1, %10 ], [ %59, %57 ]
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr ptr, ptr %21, i32 %16
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !11
  %24 = getelementptr inbounds %struct.mtd_info, ptr %23, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = icmp ult i64 %20, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = sub i64 %20, %25
  br label %57

29:                                               ; preds = %14
  %30 = zext i32 %19 to i64
  %31 = add i64 %20, %30
  %32 = icmp ugt i64 %31, %25
  %33 = sub i64 %25, %20
  %34 = trunc i64 %33 to i32
  %35 = select i1 %32, i32 %34, i32 %19
  %36 = call i32 @mtd_read(ptr noundef %23, i64 noundef %20, i32 noundef %35, ptr noundef nonnull %6, ptr noundef %18) #10
  switch i32 %36, label %55 [
    i32 0, label %45
    i32 -74, label %37
    i32 -117, label %40
  ], !prof !12

37:                                               ; preds = %29
  %38 = load i32, ptr %13, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %13, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load i32, ptr %12, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %12, align 4
  %43 = icmp eq i32 %17, 0
  %44 = select i1 %43, i32 -117, i32 %17
  br label %45

45:                                               ; preds = %40, %37, %29
  %46 = phi i32 [ -74, %37 ], [ %17, %29 ], [ %44, %40 ]
  %47 = load i32, ptr %6, align 4
  %48 = load i32, ptr %3, align 4
  %49 = add i32 %48, %47
  store i32 %49, ptr %3, align 4
  %50 = sub i32 %19, %35
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %18, i32 %35
  %54 = load i32, ptr %7, align 8
  br label %57

55:                                               ; preds = %45, %29
  %56 = phi i32 [ %46, %45 ], [ %36, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %65

57:                                               ; preds = %52, %27
  %58 = phi i32 [ %15, %27 ], [ %54, %52 ]
  %59 = phi i64 [ %28, %27 ], [ 0, %52 ]
  %60 = phi i32 [ %19, %27 ], [ %50, %52 ]
  %61 = phi ptr [ %18, %27 ], [ %53, %52 ]
  %62 = phi i32 [ %17, %27 ], [ %46, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %63 = add nuw nsw i32 %16, 1
  %64 = icmp slt i32 %63, %58
  br i1 %64, label %14, label %65

65:                                               ; preds = %57, %55, %5
  %66 = phi i32 [ %56, %55 ], [ -22, %5 ], [ -22, %57 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_write(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %45, %10
  %13 = phi i32 [ %8, %10 ], [ %46, %45 ]
  %14 = phi i32 [ 0, %10 ], [ %50, %45 ]
  %15 = phi ptr [ %4, %10 ], [ %49, %45 ]
  %16 = phi i64 [ %1, %10 ], [ %48, %45 ]
  %17 = phi i32 [ %2, %10 ], [ %47, %45 ]
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr ptr, ptr %18, i32 %14
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !11
  %21 = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp ult i64 %16, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = sub i64 %16, %22
  br label %45

26:                                               ; preds = %12
  %27 = zext i32 %17 to i64
  %28 = add i64 %16, %27
  %29 = icmp ugt i64 %28, %22
  %30 = sub i64 %22, %16
  %31 = trunc i64 %30 to i32
  %32 = select i1 %29, i32 %31, i32 %17
  %33 = call i32 @mtd_write(ptr noundef %20, i64 noundef %16, i32 noundef %32, ptr noundef nonnull %6, ptr noundef %15) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %3, align 4
  %38 = add i32 %37, %36
  store i32 %38, ptr %3, align 4
  %39 = sub i32 %17, %32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %15, i32 %32
  %43 = load i32, ptr %7, align 8
  br label %45

44:                                               ; preds = %35, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %52

45:                                               ; preds = %41, %24
  %46 = phi i32 [ %13, %24 ], [ %43, %41 ]
  %47 = phi i32 [ %17, %24 ], [ %39, %41 ]
  %48 = phi i64 [ %25, %24 ], [ 0, %41 ]
  %49 = phi ptr [ %15, %24 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %50 = add nuw nsw i32 %14, 1
  %51 = icmp slt i32 %50, %46
  br i1 %51, label %12, label %52

52:                                               ; preds = %45, %44, %5
  %53 = phi i32 [ %33, %44 ], [ -22, %5 ], [ -22, %45 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_erase(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = and i64 %7, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %142

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, %11
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %73, label %142

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = icmp sgt i32 %4, 0
  br i1 %22, label %23, label %142

23:                                               ; preds = %19
  %24 = load i64, ptr %1, align 8
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi i32 [ 0, %23 ], [ %31, %30 ]
  %27 = getelementptr %struct.mtd_erase_region_info, ptr %21, i32 %26
  %28 = load i64, ptr %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, %4
  br i1 %32, label %33, label %25

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %26, %25 ], [ %4, %30 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %142, label %36

36:                                               ; preds = %33
  %37 = add nsw i32 %34, -1
  %38 = load i64, ptr %1, align 8
  %39 = getelementptr %struct.mtd_erase_region_info, ptr %21, i32 %37, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, -1
  %42 = zext i32 %41 to i64
  %43 = and i64 %38, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %142

45:                                               ; preds = %36
  %46 = icmp sgt i32 %34, %4
  br i1 %46, label %59, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, %38
  br label %51

51:                                               ; preds = %56, %47
  %52 = phi i32 [ %37, %47 ], [ %57, %56 ]
  %53 = getelementptr %struct.mtd_erase_region_info, ptr %21, i32 %52
  %54 = load i64, ptr %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = add nsw i32 %52, 1
  %58 = icmp eq i32 %57, %4
  br i1 %58, label %59, label %51

59:                                               ; preds = %56, %51, %45
  %60 = phi i32 [ %37, %45 ], [ %4, %56 ], [ %52, %51 ]
  %61 = add i32 %60, -1
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %142, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, %38
  %67 = getelementptr %struct.mtd_erase_region_info, ptr %21, i32 %61, i32 1
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, -1
  %70 = zext i32 %69 to i64
  %71 = and i64 %66, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %142

73:                                               ; preds = %63, %14
  %74 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3264, i32 noundef 24) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %142, label %77

77:                                               ; preds = %73
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %78 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %81 = load i32, ptr %80, align 8
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = load i64, ptr %75, align 8
  br label %87

87:                                               ; preds = %100, %83
  %88 = phi i64 [ %86, %83 ], [ %101, %100 ]
  %89 = phi i64 [ 0, %83 ], [ %103, %100 ]
  %90 = phi i32 [ 0, %83 ], [ %104, %100 ]
  %91 = getelementptr ptr, ptr %85, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.mtd_info, ptr %92, i32 0, i32 2
  %94 = load i64, ptr %93, align 8
  %95 = icmp ult i64 %88, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = icmp eq i64 %79, 0
  br i1 %97, label %140, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.erase_info, ptr %75, i32 0, i32 1
  br label %107

100:                                              ; preds = %87
  %101 = sub i64 %88, %94
  store i64 %101, ptr %75, align 8
  %102 = load i64, ptr %93, align 8
  %103 = add i64 %102, %89
  %104 = add nuw nsw i32 %90, 1
  %105 = icmp eq i32 %104, %81
  br i1 %105, label %106, label %87

106:                                              ; preds = %100, %77
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdconcat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

107:                                              ; preds = %131, %98
  %108 = phi i64 [ %94, %98 ], [ %139, %131 ]
  %109 = phi i64 [ %88, %98 ], [ 0, %131 ]
  %110 = phi ptr [ %92, %98 ], [ %137, %131 ]
  %111 = phi i64 [ %89, %98 ], [ %134, %131 ]
  %112 = phi i64 [ %79, %98 ], [ %129, %131 ]
  %113 = phi i32 [ %90, %98 ], [ %132, %131 ]
  %114 = add i64 %109, %112
  %115 = getelementptr inbounds %struct.mtd_info, ptr %110, i32 0, i32 2
  %116 = icmp ugt i64 %114, %108
  %117 = sub i64 %108, %109
  %118 = select i1 %116, i64 %117, i64 %112
  store i64 %118, ptr %99, align 8
  %119 = tail call i32 @mtd_erase(ptr noundef %110, ptr noundef nonnull %75) #10
  switch i32 %119, label %121 [
    i32 0, label %128
    i32 -22, label %120
  ], !prof !14

120:                                              ; preds = %107
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdconcat.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.erase_info, ptr %75, i32 0, i32 2
  %123 = load i64, ptr %122, align 8
  %124 = icmp eq i64 %123, -1
  br i1 %124, label %140, label %125

125:                                              ; preds = %121
  %126 = add i64 %123, %111
  %127 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 2
  store i64 %126, ptr %127, align 8
  br label %140

128:                                              ; preds = %107
  %129 = sub i64 %112, %118
  store i64 0, ptr %75, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  %132 = add i32 %113, 1
  %133 = load i64, ptr %115, align 8
  %134 = add i64 %133, %111
  %135 = load ptr, ptr %84, align 4
  %136 = getelementptr ptr, ptr %135, i32 %132
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.mtd_info, ptr %137, i32 0, i32 2
  %139 = load i64, ptr %138, align 8
  br label %107

140:                                              ; preds = %128, %125, %121, %96
  %141 = phi i32 [ %119, %125 ], [ %119, %121 ], [ 0, %96 ], [ 0, %128 ]
  tail call void @kfree(ptr noundef nonnull %75) #10
  br label %142

142:                                              ; preds = %140, %73, %63, %59, %36, %33, %19, %14, %6
  %143 = phi i32 [ %141, %140 ], [ -22, %6 ], [ -22, %14 ], [ -22, %59 ], [ -22, %63 ], [ -22, %33 ], [ -22, %36 ], [ -12, %73 ], [ -22, %19 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @concat_sync(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %24, %5
  %8 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %9 = phi i32 [ 0, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %12, %7 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 62
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 37
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  tail call void %20(ptr noundef %14) #10
  %23 = load i32, ptr %2, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %8, %18 ], [ %23, %22 ]
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp slt i32 %26, %25
  br i1 %27, label %7, label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_lock(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi i32 [ %5, %7 ], [ %35, %34 ]
  %11 = phi i32 [ 0, %7 ], [ %38, %34 ]
  %12 = phi i64 [ %1, %7 ], [ %36, %34 ]
  %13 = phi i64 [ %2, %7 ], [ %37, %34 ]
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr ptr, ptr %14, i32 %11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = icmp ult i64 %12, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = sub i64 %12, %18
  br label %34

22:                                               ; preds = %9
  %23 = add i64 %13, %12
  %24 = icmp ugt i64 %23, %18
  %25 = sub i64 %18, %12
  %26 = select i1 %24, i64 %25, i64 %13
  %27 = tail call i32 @mtd_lock(ptr noundef %16, i64 noundef %12, i64 noundef %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = sub i64 %13, %26
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %4, align 8
  br label %34

34:                                               ; preds = %32, %20
  %35 = phi i32 [ %10, %20 ], [ %33, %32 ]
  %36 = phi i64 [ %21, %20 ], [ 0, %32 ]
  %37 = phi i64 [ %13, %20 ], [ %30, %32 ]
  %38 = add nuw nsw i32 %11, 1
  %39 = icmp slt i32 %38, %35
  br i1 %39, label %9, label %40

40:                                               ; preds = %34, %29, %22, %3
  %41 = phi i32 [ -22, %3 ], [ -22, %34 ], [ 0, %29 ], [ %27, %22 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_unlock(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi i32 [ %5, %7 ], [ %35, %34 ]
  %11 = phi i32 [ 0, %7 ], [ %38, %34 ]
  %12 = phi i64 [ %1, %7 ], [ %36, %34 ]
  %13 = phi i64 [ %2, %7 ], [ %37, %34 ]
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr ptr, ptr %14, i32 %11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = icmp ult i64 %12, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = sub i64 %12, %18
  br label %34

22:                                               ; preds = %9
  %23 = add i64 %13, %12
  %24 = icmp ugt i64 %23, %18
  %25 = sub i64 %18, %12
  %26 = select i1 %24, i64 %25, i64 %13
  %27 = tail call i32 @mtd_unlock(ptr noundef %16, i64 noundef %12, i64 noundef %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = sub i64 %13, %26
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %4, align 8
  br label %34

34:                                               ; preds = %32, %20
  %35 = phi i32 [ %10, %20 ], [ %33, %32 ]
  %36 = phi i64 [ %21, %20 ], [ 0, %32 ]
  %37 = phi i64 [ %13, %20 ], [ %30, %32 ]
  %38 = add nuw nsw i32 %11, 1
  %39 = icmp slt i32 %38, %35
  br i1 %39, label %9, label %40

40:                                               ; preds = %34, %29, %22, %3
  %41 = phi i32 [ -22, %3 ], [ -22, %34 ], [ 0, %29 ], [ %27, %22 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_is_locked(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %23, %7
  %11 = phi i32 [ 0, %7 ], [ %25, %23 ]
  %12 = phi i64 [ %1, %7 ], [ %24, %23 ]
  %13 = getelementptr ptr, ptr %9, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = add i64 %12, %2
  %20 = icmp ugt i64 %19, %16
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @mtd_is_locked(ptr noundef %14, i64 noundef %12, i64 noundef %2) #10
  br label %27

23:                                               ; preds = %10
  %24 = sub i64 %12, %16
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %27, label %10

27:                                               ; preds = %23, %21, %18, %3
  %28 = phi i32 [ %22, %21 ], [ -22, %18 ], [ -22, %3 ], [ -22, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @concat_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %36, %5
  %8 = phi i32 [ 0, %5 ], [ %38, %36 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %11, %7 ], [ %15, %12 ]
  %14 = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 62
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 64, i32 1, i32 8
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 45
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef %13) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8, ptr %18, align 8
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i8 [ %30, %29 ], [ %19, %22 ]
  %33 = or i8 %32, 1
  store i8 %33, ptr %18, align 8
  br label %36

34:                                               ; preds = %26
  %35 = icmp slt i32 %27, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %34, %31, %17
  %37 = phi i32 [ %27, %34 ], [ 0, %31 ], [ 0, %17 ]
  %38 = add nuw nsw i32 %8, 1
  %39 = load i32, ptr %2, align 8
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %7, label %41

41:                                               ; preds = %36, %34, %1
  %42 = phi i32 [ 0, %1 ], [ %37, %36 ], [ %27, %34 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @concat_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mtd_concat, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %33, %5
  %8 = phi i32 [ %3, %5 ], [ %34, %33 ]
  %9 = phi i32 [ 0, %5 ], [ %35, %33 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %12, %7 ], [ %16, %13 ]
  %15 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 62
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 64, i32 1, i32 8
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 46
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  tail call void %25(ptr noundef %14) #10
  %28 = load i8, ptr %19, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i8 [ %28, %27 ], [ %20, %23 ]
  %31 = and i8 %30, -2
  store i8 %31, ptr %19, align 8
  %32 = load i32, ptr %2, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i32 [ %8, %18 ], [ %32, %29 ]
  %35 = add nuw nsw i32 %9, 1
  %36 = icmp slt i32 %35, %34
  br i1 %36, label %7, label %37

37:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtd_concat_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_panic_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_lock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unlock(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_is_locked(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148346265, i64 2148346545, i64 2148346879, i64 2148347213}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!13 = !{i64 2153048127, i64 2153048615, i64 2153048164, i64 2153048220, i64 2153048254, i64 2153048278, i64 2153048319, i64 2153048340, i64 2153048368, i64 2153048402}
!14 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!15 = !{i64 2153049156, i64 2153049644, i64 2153049193, i64 2153049249, i64 2153049283, i64 2153049307, i64 2153049348, i64 2153049369, i64 2153049397, i64 2153049431}
