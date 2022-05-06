; ModuleID = '/llk/IR/fs/proc/stat.c_pt.bc'
source_filename = "../fs/proc/stat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_proc__199_242_proc_stat_init5 = internal global ptr @proc_stat_init, section ".initcall5.init", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@stat_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @stat_open, ptr null, ptr @seq_read_iter, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cpu  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"intr \00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"\0Actxt %llu\0Abtime %llu\0Aprocesses %lu\0Aprocs_running %u\0Aprocs_blocked %u\0A\00", align 1
@total_forks = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"softirq \00", align 1
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@show_irq_gap.zeros = internal constant [33 x i8] c" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__199_242_proc_stat_init5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_idle_time(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr i32, ptr @__cpu_online_mask, i32 %3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call i64 @get_cpu_idle_time_us(i32 noundef %1, ptr noundef null) #7
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = getelementptr [10 x i64], ptr %0, i32 0, i32 5
  %15 = load i64, ptr %14, align 8
  br label %18

16:                                               ; preds = %10
  %17 = mul i64 %11, 1000
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i64 [ %15, %13 ], [ %17, %16 ]
  ret i64 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_stat_init() #3 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @stat_proc_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stat_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = shl i32 %3, 7
  %5 = add i32 %4, 1024
  %6 = load i32, ptr @nr_irqs, align 4
  %7 = shl i32 %6, 1
  %8 = add i32 %5, %7
  %9 = tail call i32 @single_open_size(ptr noundef %1, ptr noundef nonnull @show_stat, ptr noundef null, i32 noundef %8) #7
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_stat(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @getboottime64(ptr noundef nonnull %3) #7
  %4 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %147

7:                                                ; preds = %80, %2
  %8 = phi i32 [ %92, %80 ], [ 0, %2 ]
  %9 = phi i32 [ %97, %80 ], [ 0, %2 ]
  %10 = phi i32 [ %102, %80 ], [ 0, %2 ]
  %11 = phi i32 [ %107, %80 ], [ 0, %2 ]
  %12 = phi i32 [ %112, %80 ], [ 0, %2 ]
  %13 = phi i32 [ %117, %80 ], [ 0, %2 ]
  %14 = phi i32 [ %122, %80 ], [ 0, %2 ]
  %15 = phi i32 [ %127, %80 ], [ 0, %2 ]
  %16 = phi i32 [ %132, %80 ], [ 0, %2 ]
  %17 = phi i32 [ %137, %80 ], [ 0, %2 ]
  %18 = phi i32 [ %144, %80 ], [ %4, %2 ]
  %19 = phi i64 [ %54, %80 ], [ 0, %2 ]
  %20 = phi i64 [ %139, %80 ], [ 0, %2 ]
  %21 = phi i64 [ %143, %80 ], [ 0, %2 ]
  %22 = phi i64 [ %142, %80 ], [ 0, %2 ]
  %23 = phi i64 [ %84, %80 ], [ 0, %2 ]
  %24 = phi i64 [ %141, %80 ], [ 0, %2 ]
  %25 = phi i64 [ %83, %80 ], [ 0, %2 ]
  %26 = phi i64 [ %140, %80 ], [ 0, %2 ]
  %27 = phi i64 [ %82, %80 ], [ 0, %2 ]
  %28 = phi i64 [ %71, %80 ], [ 0, %2 ]
  %29 = phi i64 [ %56, %80 ], [ 0, %2 ]
  %30 = phi i64 [ %55, %80 ], [ 0, %2 ]
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, ptrtoint (ptr @kernel_cpustat to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds i8, ptr %34, i32 8
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %34, i32 16
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds i8, ptr %34, i32 24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %34, i32 32
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %34, i32 40
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds i8, ptr %34, i32 48
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds i8, ptr %34, i32 56
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds i8, ptr %34, i32 64
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds i8, ptr %34, i32 72
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %35, %19
  %55 = add i64 %37, %30
  %56 = add i64 %39, %29
  %57 = lshr i32 %18, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %18, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %7
  %65 = call i64 @get_cpu_idle_time_us(i32 noundef %18, ptr noundef null) #7
  %66 = icmp eq i64 %65, -1
  %67 = mul i64 %65, 1000
  %68 = select i1 %66, i64 %45, i64 %67
  br label %69

69:                                               ; preds = %64, %7
  %70 = phi i64 [ %45, %7 ], [ %68, %64 ]
  %71 = add i64 %70, %28
  %72 = load volatile i32, ptr %58, align 4
  %73 = and i32 %72, %61
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = call i64 @get_cpu_iowait_time_us(i32 noundef %18, ptr noundef null) #7
  %77 = icmp eq i64 %76, -1
  %78 = mul i64 %76, 1000
  %79 = select i1 %77, i64 %47, i64 %78
  br label %80

80:                                               ; preds = %75, %69
  %81 = phi i64 [ %47, %69 ], [ %79, %75 ]
  %82 = add i64 %81, %27
  %83 = add i64 %41, %25
  %84 = add i64 %51, %23
  %85 = load i32, ptr %31, align 4
  %86 = add i32 %85, ptrtoint (ptr @kstat to i32)
  %87 = inttoptr i32 %86 to ptr
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 0
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %8, %91
  %93 = zext i32 %91 to i64
  %94 = add i64 %20, %93
  %95 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %9, %96
  %98 = zext i32 %96 to i64
  %99 = add i64 %94, %98
  %100 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %10, %101
  %103 = zext i32 %101 to i64
  %104 = add i64 %99, %103
  %105 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %11, %106
  %108 = zext i32 %106 to i64
  %109 = add i64 %104, %108
  %110 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %12, %111
  %113 = zext i32 %111 to i64
  %114 = add i64 %109, %113
  %115 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %13, %116
  %118 = zext i32 %116 to i64
  %119 = add i64 %114, %118
  %120 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %14, %121
  %123 = zext i32 %121 to i64
  %124 = add i64 %119, %123
  %125 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %15, %126
  %128 = zext i32 %126 to i64
  %129 = add i64 %124, %128
  %130 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 8
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %16, %131
  %133 = zext i32 %131 to i64
  %134 = add i64 %129, %133
  %135 = getelementptr %struct.kernel_stat, ptr %87, i32 0, i32 1, i32 9
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %17, %136
  %138 = zext i32 %136 to i64
  %139 = add i64 %134, %138
  %140 = add i64 %43, %26
  %141 = add i64 %49, %24
  %142 = add i64 %53, %22
  %143 = add i64 %21, %89
  %144 = call i32 @cpumask_next(i32 noundef %18, ptr noundef nonnull @__cpu_possible_mask) #8
  %145 = load i32, ptr @nr_cpu_ids, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %7, label %147

147:                                              ; preds = %80, %2
  %148 = phi i32 [ 0, %2 ], [ %92, %80 ]
  %149 = phi i32 [ 0, %2 ], [ %97, %80 ]
  %150 = phi i32 [ 0, %2 ], [ %102, %80 ]
  %151 = phi i32 [ 0, %2 ], [ %107, %80 ]
  %152 = phi i32 [ 0, %2 ], [ %112, %80 ]
  %153 = phi i32 [ 0, %2 ], [ %117, %80 ]
  %154 = phi i32 [ 0, %2 ], [ %122, %80 ]
  %155 = phi i32 [ 0, %2 ], [ %127, %80 ]
  %156 = phi i32 [ 0, %2 ], [ %132, %80 ]
  %157 = phi i32 [ 0, %2 ], [ %137, %80 ]
  %158 = phi i64 [ 0, %2 ], [ %55, %80 ]
  %159 = phi i64 [ 0, %2 ], [ %56, %80 ]
  %160 = phi i64 [ 0, %2 ], [ %71, %80 ]
  %161 = phi i64 [ 0, %2 ], [ %82, %80 ]
  %162 = phi i64 [ 0, %2 ], [ %140, %80 ]
  %163 = phi i64 [ 0, %2 ], [ %83, %80 ]
  %164 = phi i64 [ 0, %2 ], [ %141, %80 ]
  %165 = phi i64 [ 0, %2 ], [ %84, %80 ]
  %166 = phi i64 [ 0, %2 ], [ %142, %80 ]
  %167 = phi i64 [ 0, %2 ], [ %143, %80 ]
  %168 = phi i64 [ 0, %2 ], [ %139, %80 ]
  %169 = phi i64 [ 0, %2 ], [ %54, %80 ]
  %170 = call i64 @nsec_to_clock_t(i64 noundef %169) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %170) #7
  %171 = call i64 @nsec_to_clock_t(i64 noundef %158) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %171) #7
  %172 = call i64 @nsec_to_clock_t(i64 noundef %159) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %172) #7
  %173 = call i64 @nsec_to_clock_t(i64 noundef %160) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %173) #7
  %174 = call i64 @nsec_to_clock_t(i64 noundef %161) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %174) #7
  %175 = call i64 @nsec_to_clock_t(i64 noundef %162) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %175) #7
  %176 = call i64 @nsec_to_clock_t(i64 noundef %163) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %176) #7
  %177 = call i64 @nsec_to_clock_t(i64 noundef %164) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %177) #7
  %178 = call i64 @nsec_to_clock_t(i64 noundef %165) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %178) #7
  %179 = call i64 @nsec_to_clock_t(i64 noundef %166) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %179) #7
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %180 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #8
  %181 = load i32, ptr @nr_cpu_ids, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %183, label %245

183:                                              ; preds = %230, %147
  %184 = phi i32 [ %242, %230 ], [ %180, %147 ]
  %185 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, ptrtoint (ptr @kernel_cpustat to i32)
  %188 = inttoptr i32 %187 to ptr
  %189 = load i64, ptr %188, align 8
  %190 = getelementptr inbounds i8, ptr %188, i32 8
  %191 = load i64, ptr %190, align 8
  %192 = getelementptr inbounds i8, ptr %188, i32 16
  %193 = load i64, ptr %192, align 8
  %194 = getelementptr inbounds i8, ptr %188, i32 24
  %195 = load i64, ptr %194, align 8
  %196 = getelementptr inbounds i8, ptr %188, i32 32
  %197 = load i64, ptr %196, align 8
  %198 = getelementptr inbounds i8, ptr %188, i32 40
  %199 = load i64, ptr %198, align 8
  %200 = getelementptr inbounds i8, ptr %188, i32 48
  %201 = load i64, ptr %200, align 8
  %202 = getelementptr inbounds i8, ptr %188, i32 56
  %203 = load i64, ptr %202, align 8
  %204 = getelementptr inbounds i8, ptr %188, i32 64
  %205 = load i64, ptr %204, align 8
  %206 = getelementptr inbounds i8, ptr %188, i32 72
  %207 = load i64, ptr %206, align 8
  %208 = lshr i32 %184, 5
  %209 = getelementptr i32, ptr @__cpu_online_mask, i32 %208
  %210 = load volatile i32, ptr %209, align 4
  %211 = and i32 %184, 31
  %212 = shl nuw i32 1, %211
  %213 = and i32 %210, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %183
  %216 = call i64 @get_cpu_idle_time_us(i32 noundef %184, ptr noundef null) #7
  %217 = icmp eq i64 %216, -1
  %218 = mul i64 %216, 1000
  %219 = select i1 %217, i64 %199, i64 %218
  br label %220

220:                                              ; preds = %215, %183
  %221 = phi i64 [ %199, %183 ], [ %219, %215 ]
  %222 = load volatile i32, ptr %209, align 4
  %223 = and i32 %222, %212
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = call i64 @get_cpu_iowait_time_us(i32 noundef %184, ptr noundef null) #7
  %227 = icmp eq i64 %226, -1
  %228 = mul i64 %226, 1000
  %229 = select i1 %227, i64 %201, i64 %228
  br label %230

230:                                              ; preds = %225, %220
  %231 = phi i64 [ %201, %220 ], [ %229, %225 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %184) #7
  %232 = call i64 @nsec_to_clock_t(i64 noundef %189) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %232) #7
  %233 = call i64 @nsec_to_clock_t(i64 noundef %191) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %233) #7
  %234 = call i64 @nsec_to_clock_t(i64 noundef %193) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %234) #7
  %235 = call i64 @nsec_to_clock_t(i64 noundef %221) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %235) #7
  %236 = call i64 @nsec_to_clock_t(i64 noundef %231) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %236) #7
  %237 = call i64 @nsec_to_clock_t(i64 noundef %197) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %237) #7
  %238 = call i64 @nsec_to_clock_t(i64 noundef %195) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %238) #7
  %239 = call i64 @nsec_to_clock_t(i64 noundef %203) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %239) #7
  %240 = call i64 @nsec_to_clock_t(i64 noundef %205) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %240) #7
  %241 = call i64 @nsec_to_clock_t(i64 noundef %207) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %241) #7
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  %242 = call i32 @cpumask_next(i32 noundef %184, ptr noundef nonnull @__cpu_online_mask) #8
  %243 = load i32, ptr @nr_cpu_ids, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %183, label %245

245:                                              ; preds = %230, %147
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %167) #7
  %246 = call i32 @irq_get_next_irq(i32 noundef 0) #7
  %247 = load i32, ptr @nr_irqs, align 4
  %248 = icmp ult i32 %246, %247
  br i1 %248, label %249, label %268

249:                                              ; preds = %261, %245
  %250 = phi i32 [ %264, %261 ], [ 0, %245 ]
  %251 = phi i32 [ %265, %261 ], [ %246, %245 ]
  %252 = sub i32 %251, %250
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %254, %249
  %255 = phi i32 [ %259, %254 ], [ %252, %249 ]
  %256 = call i32 @llvm.umin.i32(i32 %255, i32 16) #7
  %257 = shl nuw nsw i32 %256, 1
  %258 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @show_irq_gap.zeros, i32 noundef %257) #7
  %259 = sub i32 %255, %256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %254

261:                                              ; preds = %254, %249
  %262 = call i32 @kstat_irqs_usr(i32 noundef %251) #7
  %263 = zext i32 %262 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %263) #7
  %264 = add i32 %251, 1
  %265 = call i32 @irq_get_next_irq(i32 noundef %264) #7
  %266 = load i32, ptr @nr_irqs, align 4
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %249, label %268

268:                                              ; preds = %261, %245
  %269 = phi i32 [ 0, %245 ], [ %264, %261 ]
  %270 = phi i32 [ %247, %245 ], [ %266, %261 ]
  %271 = sub i32 %270, %269
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %280, label %273

273:                                              ; preds = %273, %268
  %274 = phi i32 [ %278, %273 ], [ %271, %268 ]
  %275 = call i32 @llvm.umin.i32(i32 %274, i32 16) #7
  %276 = shl nuw nsw i32 %275, 1
  %277 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @show_irq_gap.zeros, i32 noundef %276) #7
  %278 = sub i32 %274, %275
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %273

280:                                              ; preds = %273, %268
  %281 = call i64 @nr_context_switches() #7
  %282 = load i64, ptr %3, align 8
  %283 = load i32, ptr @total_forks, align 4
  %284 = call i32 @nr_running() #7
  %285 = call i32 @nr_iowait() #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef %281, i64 noundef %282, i32 noundef %283, i32 noundef %284, i32 noundef %285) #7
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %168) #7
  %286 = zext i32 %148 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %286) #7
  %287 = zext i32 %149 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %287) #7
  %288 = zext i32 %150 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %288) #7
  %289 = zext i32 %151 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %289) #7
  %290 = zext i32 %152 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %290) #7
  %291 = zext i32 %153 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %291) #7
  %292 = zext i32 %154 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %292) #7
  %293 = zext i32 %155 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %293) #7
  %294 = zext i32 %156 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %294) #7
  %295 = zext i32 %157 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %295) #7
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_context_switches() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_running() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_iowait_time_us(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstat_irqs_usr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
