; ModuleID = '/llk/IR/fs/proc/meminfo.c_pt.bc'
source_filename = "../fs/proc/meminfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }

@__initcall__kmod_proc__247_161_proc_meminfo_init5 = internal global ptr @proc_meminfo_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MemTotal:       \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MemFree:        \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"MemAvailable:   \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Buffers:        \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Cached:         \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SwapCached:     \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Active:         \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Inactive:       \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Active(anon):   \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Inactive(anon): \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Active(file):   \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Inactive(file): \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Unevictable:    \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Mlocked:        \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"HighTotal:      \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"HighFree:       \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"LowTotal:       \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"LowFree:        \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"SwapTotal:      \00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"SwapFree:       \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Dirty:          \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Writeback:      \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"AnonPages:      \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Mapped:         \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Shmem:          \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"KReclaimable:   \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Slab:           \00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"SReclaimable:   \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"SUnreclaim:     \00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"KernelStack:    %8lu kB\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"PageTables:     \00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"NFS_Unstable:   \00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Bounce:         \00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"WritebackTmp:   \00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"CommitLimit:    \00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Committed_AS:   \00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"VmallocTotal:   %8lu kB\0A\00", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = private unnamed_addr constant [17 x i8] c"VmallocUsed:    \00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"VmallocChunk:   \00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Percpu:         \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"CmaTotal:       \00", align 1
@totalcma_pages = external dso_local local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"CmaFree:        \00", align 1
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@.str.43 = private unnamed_addr constant [5 x i8] c" kB\0A\00", align 1
@vm_zone_stat = external dso_local global [10 x %struct.atomic_t], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__247_161_proc_meminfo_init5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_report_meminfo(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_meminfo_init() #1 section ".init.text" {
  %1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @meminfo_proc_show, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meminfo_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.sysinfo, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  call void @si_meminfo(ptr noundef nonnull %3) #6
  call void @si_swapinfo(ptr noundef nonnull %3) #6
  %4 = call i32 @vm_memory_committed() #6
  %5 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19), align 4
  %6 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), align 4
  %7 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = load volatile i32, ptr @vm_node_stat, align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 0) #6
  %11 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0) #6
  %13 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 0) #6
  %15 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 0) #6
  %17 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %18 = call i32 @llvm.smax.i32(i32 %17, i32 0) #6
  %19 = call i32 @llvm.smax.i32(i32 %6, i32 0) #6
  %20 = call i32 @llvm.smax.i32(i32 %5, i32 0) #6
  %21 = add i32 %8, %19
  %22 = sub i32 %20, %21
  %23 = call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = call i32 @si_mem_available() #6
  %25 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), align 4
  %26 = call i32 @llvm.smax.i32(i32 %25, i32 0) #6
  %27 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), align 4
  %28 = call i32 @llvm.smax.i32(i32 %27, i32 0) #6
  %29 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 2
  %32 = zext i32 %31 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %32, i32 noundef 8) #6
  %33 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %34 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 2
  %37 = zext i32 %36 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %37, i32 noundef 8) #6
  %38 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %39 = shl i32 %24, 2
  %40 = zext i32 %39 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %40, i32 noundef 8) #6
  %41 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %42 = load i32, ptr %7, align 4
  %43 = shl i32 %42, 2
  %44 = zext i32 %43 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %44, i32 noundef 8) #6
  %45 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %46 = shl i32 %23, 2
  %47 = zext i32 %46 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef %47, i32 noundef 8) #6
  %48 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %49 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), align 4
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 0) #6
  %51 = shl i32 %50, 2
  %52 = zext i32 %51 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %52, i32 noundef 8) #6
  %53 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %54 = add nuw i32 %16, %12
  %55 = shl i32 %54, 2
  %56 = zext i32 %55 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %56, i32 noundef 8) #6
  %57 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %58 = add nuw i32 %14, %10
  %59 = shl i32 %58, 2
  %60 = zext i32 %59 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %60, i32 noundef 8) #6
  %61 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %62 = shl i32 %12, 2
  %63 = zext i32 %62 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %63, i32 noundef 8) #6
  %64 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %65 = shl i32 %10, 2
  %66 = zext i32 %65 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %66, i32 noundef 8) #6
  %67 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %68 = shl i32 %16, 2
  %69 = zext i32 %68 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef %69, i32 noundef 8) #6
  %70 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %71 = shl i32 %14, 2
  %72 = zext i32 %71 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %72, i32 noundef 8) #6
  %73 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %74 = shl i32 %18, 2
  %75 = zext i32 %74 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %75, i32 noundef 8) #6
  %76 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %77 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), align 4
  %78 = call i32 @llvm.smax.i32(i32 %77, i32 0) #6
  %79 = shl i32 %78, 2
  %80 = zext i32 %79 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %80, i32 noundef 8) #6
  %81 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %82 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 10
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 %83, 2
  %85 = zext i32 %84 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.15, i64 noundef %85, i32 noundef 8) #6
  %86 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %87 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 2
  %90 = zext i32 %89 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %90, i32 noundef 8) #6
  %91 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %92 = load i32, ptr %29, align 4
  %93 = load i32, ptr %82, align 4
  %94 = sub i32 %92, %93
  %95 = shl i32 %94, 2
  %96 = zext i32 %95 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef %96, i32 noundef 8) #6
  %97 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %98 = load i32, ptr %34, align 4
  %99 = load i32, ptr %87, align 4
  %100 = sub i32 %98, %99
  %101 = shl i32 %100, 2
  %102 = zext i32 %101 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef %102, i32 noundef 8) #6
  %103 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %104 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 2
  %107 = zext i32 %106 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef %107, i32 noundef 8) #6
  %108 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %109 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = shl i32 %110, 2
  %112 = zext i32 %111 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef %112, i32 noundef 8) #6
  %113 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %114 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %115 = call i32 @llvm.smax.i32(i32 %114, i32 0) #6
  %116 = shl i32 %115, 2
  %117 = zext i32 %116 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef %117, i32 noundef 8) #6
  %118 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %119 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %120 = call i32 @llvm.smax.i32(i32 %119, i32 0) #6
  %121 = shl i32 %120, 2
  %122 = zext i32 %121 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %122, i32 noundef 8) #6
  %123 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %124 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 17), align 4
  %125 = call i32 @llvm.smax.i32(i32 %124, i32 0) #6
  %126 = shl i32 %125, 2
  %127 = zext i32 %126 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef %127, i32 noundef 8) #6
  %128 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %129 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 18), align 4
  %130 = call i32 @llvm.smax.i32(i32 %129, i32 0) #6
  %131 = shl i32 %130, 2
  %132 = zext i32 %131 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef %132, i32 noundef 8) #6
  %133 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %134 = getelementptr inbounds %struct.sysinfo, ptr %3, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = shl i32 %135, 2
  %137 = zext i32 %136 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef %137, i32 noundef 8) #6
  %138 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %139 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 34), align 4
  %140 = call i32 @llvm.smax.i32(i32 %139, i32 0) #6
  %141 = add nuw i32 %140, %26
  %142 = shl i32 %141, 2
  %143 = zext i32 %142 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %143, i32 noundef 8) #6
  %144 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %145 = add nuw i32 %28, %26
  %146 = shl i32 %145, 2
  %147 = zext i32 %146 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef %147, i32 noundef 8) #6
  %148 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %149 = shl i32 %26, 2
  %150 = zext i32 %149 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef %150, i32 noundef 8) #6
  %151 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %152 = shl i32 %28, 2
  %153 = zext i32 %152 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %153, i32 noundef 8) #6
  %154 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %155 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 37), align 4
  %156 = call i32 @llvm.smax.i32(i32 %155, i32 0) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %156) #6
  %157 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 38), align 4
  %158 = call i32 @llvm.smax.i32(i32 %157, i32 0) #6
  %159 = shl i32 %158, 2
  %160 = zext i32 %159 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %160, i32 noundef 8) #6
  %161 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 0, i32 noundef 8) #6
  %162 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %163 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), align 4
  %164 = call i32 @llvm.smax.i32(i32 %163, i32 0) #6
  %165 = shl i32 %164, 2
  %166 = zext i32 %165 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef %166, i32 noundef 8) #6
  %167 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %168 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 22), align 4
  %169 = call i32 @llvm.smax.i32(i32 %168, i32 0) #6
  %170 = shl i32 %169, 2
  %171 = zext i32 %170 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %171, i32 noundef 8) #6
  %172 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %173 = call i32 @vm_commit_limit() #6
  %174 = shl i32 %173, 2
  %175 = zext i32 %174 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %175, i32 noundef 8) #6
  %176 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %177 = shl i32 %4, 2
  %178 = zext i32 %177 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %178, i32 noundef 8) #6
  %179 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %180 = load ptr, ptr @high_memory, align 4
  %181 = ptrtoint ptr %180 to i32
  %182 = sub i32 -8388609, %181
  %183 = lshr i32 %182, 10
  %184 = and i32 %183, 4186112
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %184) #6
  %185 = call i32 @vmalloc_nr_pages() #6
  %186 = shl i32 %185, 2
  %187 = zext i32 %186 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %187, i32 noundef 8) #6
  %188 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef 0, i32 noundef 8) #6
  %189 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %190 = call i32 @pcpu_nr_pages() #6
  %191 = shl i32 %190, 2
  %192 = zext i32 %191 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.40, i64 noundef %192, i32 noundef 8) #6
  %193 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %194 = load i32, ptr @totalcma_pages, align 4
  %195 = shl i32 %194, 2
  %196 = zext i32 %195 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %196, i32 noundef 8) #6
  %197 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  %198 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), align 4
  %199 = call i32 @llvm.smax.i32(i32 %198, i32 0) #6
  %200 = shl i32 %199, 2
  %201 = zext i32 %200 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %201, i32 noundef 8) #6
  %202 = call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef 4) #6
  call void @arch_report_meminfo(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_swapinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_memory_committed() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_mem_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_commit_limit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmalloc_nr_pages() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcpu_nr_pages() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull_width(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
