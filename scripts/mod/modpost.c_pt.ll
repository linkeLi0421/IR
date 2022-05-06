; ModuleID = '/llk/IR/scripts/mod/modpost.c_pt.bc'
source_filename = "../scripts/mod/modpost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.buffer = type { ptr, i32, i32 }
%struct.dump_list = type { ptr, ptr }
%struct.module = type { ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.buffer, [25 x i8], ptr, ptr, [0 x i8] }
%struct.symbol = type { ptr, ptr, i32, i32, ptr, i8, i32, [0 x i8] }
%struct.namespace_list = type { ptr, [0 x i8] }
%struct.Elf32_Rela = type { i32, i32, i32 }
%struct.elf_info = type { i64, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.Elf32_Rel = type { i32, i32 }
%struct.sectioncheck = type { [20 x ptr], [20 x ptr], [20 x ptr], i32, [20 x ptr], ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FATAL: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"modpost: \00", align 1
@error_occurred = internal unnamed_addr global i1 false, align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Memory allocation failure: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"malloc(st.st_size + 1)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"realloc(buf->p, buf->size)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ei:mnT:o:awENd:\00", align 1
@external_module = internal unnamed_addr global i1 false, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"calloc(1, sizeof(**dump_read_iter))\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@modversions = internal unnamed_addr global i1 false, align 4
@ignore_missing_files = internal unnamed_addr global i1 false, align 4
@all_versions = internal unnamed_addr global i1 false, align 4
@warn_unresolved = internal unnamed_addr global i1 false, align 4
@sec_mismatch_warn_only = internal unnamed_addr global i1 false, align 4
@allow_missing_ns_imports = internal unnamed_addr global i1 false, align 4
@optind = external local_unnamed_addr global i32, align 4
@modules = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"%s.mod.c\00", align 1
@sec_mismatch_count = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [85 x i8] c"Section mismatches detected.\0ASet CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.\0A\00", align 1
@symbolhash = internal unnamed_addr global [1024 x ptr] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s] is a static %s\0A\00", align 1
@nr_unresolved = internal unnamed_addr global i32 0, align 4
@.str.12 = private unnamed_addr constant [71 x i8] c"suppressed %u unresolved symbol warnings because there were too many)\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"parse error in symbol dump file\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"malloc(sizeof(*mod) + strlen(modname) + 1)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s: '%s' exported twice. Previous export was in %s%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"malloc(sizeof(*s) + strlen(name) + 1)\00", align 1
@export_list = internal unnamed_addr constant [3 x %struct.anon] [%struct.anon { ptr @.str.20, i32 0 }, %struct.anon { ptr @.str.21, i32 1 }, %struct.anon { ptr @.str.22, i32 2 }], align 16
@.str.20 = private unnamed_addr constant [14 x i8] c"EXPORT_SYMBOL\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"EXPORT_SYMBOL_GPL\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Could not update namespace(%s) for symbol %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"strdup(namespace)\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"strdup(modname)\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c".lto\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"missing MODULE_LICENSE() in %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"import_ns\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"__kstrtabns_\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"__crc_\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"module_layout\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"%s: %s (ignored)\0A\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"section header offset=%lu in file '%s' is bigger than filesize=%zu\0A\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"%s is truncated. sechdrs[i].sh_offset=%lu > sizeof(*hrd)=%zu\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c".modinfo\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s has NOBITS .modinfo\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"__ksymtab_gpl\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"%s has no symtab?\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"%s: SYMTAB_SHNDX has bad sh_link: %u!=%u\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"GPL v2\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"GPL and additional rights\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Dual BSD/GPL\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Dual MIT/GPL\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Dual MPL/GPL\00", align 1
@.str.49 = private unnamed_addr constant [62 x i8] c"malloc(sizeof(struct namespace_list) + strlen(namespace) + 1)\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"__gnu_lto_\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"\22%s\22 [%s] is COMMON symbol\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"strdup(symname)\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"__ksymtab_\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"init_module\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"cleanup_module\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"___ksymtab+\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"___ksymtab_gpl+\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"__this_module\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"_restgpr_\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"_savegpr_\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"_rest32gpr_\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"_save32gpr_\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"_restvr_\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"_savevr_\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"_restgpr0_\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"_savegpr0_\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c".TOC.\00", align 1
@.str.71 = private unnamed_addr constant [85 x i8] c"EXPORT symbol \22%s\22 [%s%s] version ...\0AIs \22%s\22 prototyped in <asm/asm-prototypes.h>?\0A\00", align 1
@section_white_list = internal constant [20 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr null], align 16
@.str.72 = private unnamed_addr constant [180 x i8] c"%s (%s): unexpected non-allocatable section.\0ADid you forget to use \22ax\22/\22aw\22 in a .S file?\0ANote that for example <linux/init.h> contains\0Asection definitions for use in .S files.\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"strndup(p + 1, strlen(p) - 2)\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c".comment*\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c".debug*\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c".cranges\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c".zdebug*\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c".GCC.command.line\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c".mdebug*\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c".pdr\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c".stab*\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c".note*\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c".got*\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c".toc*\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c".xt.prop\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c".xt.lit\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c".arcextmap*\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c".gnu.linkonce.arcext*\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c".cmem*\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c".fmt_slot*\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c".gnu.lto*\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c".discard.*\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"__ex_table\00", align 1
@extable_entry_size = internal unnamed_addr global i32 0, align 4
@.str.94 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c".text.unlikely\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c".sched.text\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c".kprobes.text\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c".cpuidle.text\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c".noinstr.text\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c".init.*\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c".meminit.*\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"*driver\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"*_template\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"*_timer\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"*_sht\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"*_ops\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"*_probe\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"*_probe_one\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"*_console\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c".data.rel\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c".exit.*\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c".memexit.*\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c".pci_fixup_early\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c".pci_fixup_header\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c".pci_fixup_final\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c".pci_fixup_enable\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c".pci_fixup_resume\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c".pci_fixup_resume_early\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c".pci_fixup_suspend\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"__ksymtab*\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c".altinstr_replacement\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c".init.text\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c".meminit.text\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c".exit.text\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c".memexit.text\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c".ref.text\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c".head.text\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c".spinlock.text\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c".fixup\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c".entry.text\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c".exception.text\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c".text.*\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c".coldtext\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c".softirqentry.text\00", align 1
@sectioncheck = internal constant <{ { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, ptr }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr } }> <{ { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }> <{ ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, [14 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.101, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 0, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.110, ptr @.str.111, [18 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.101, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 1, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.110, ptr @.str.111, [18 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.100, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, [13 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, ptr, ptr, ptr, ptr, [14 x ptr] }> <{ ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, [14 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 2, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.110, ptr @.str.111, [18 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 3, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.101, [19 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.100, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 4, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.113, [19 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.112, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 5, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.101, [18 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 6, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, [18 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.112, ptr @.str.113, [18 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.101, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 7, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [13 x ptr] }> <{ ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, [13 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.100, [19 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 6, [20 x ptr] zeroinitializer, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, ptr, [18 x ptr] }>, [20 x ptr], i32, [4 x i8], <{ [8 x ptr], [12 x ptr] }>, ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.121, [19 x ptr] zeroinitializer }>, <{ ptr, ptr, [18 x ptr] }> <{ ptr @.str.100, ptr @.str.112, [18 x ptr] zeroinitializer }>, [20 x ptr] zeroinitializer, i32 8, [4 x i8] undef, <{ [8 x ptr], [12 x ptr] }> <{ [8 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [12 x ptr] zeroinitializer }>, ptr null }, { <{ ptr, [19 x ptr] }>, <{ ptr, [19 x ptr] }>, [20 x ptr], i32, [20 x ptr], ptr } { <{ ptr, [19 x ptr] }> <{ ptr @.str.93, [19 x ptr] zeroinitializer }>, <{ ptr, [19 x ptr] }> <{ ptr @.str.122, [19 x ptr] zeroinitializer }>, [20 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr null], i32 9, [20 x ptr] zeroinitializer, ptr @extable_mismatch_handler } }>, align 16
@.str.137 = private unnamed_addr constant [225 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is black-listed.\0ASomething is seriously wrong and should be fixed.\0AYou might get more information about where this is\0Acoming from by using scripts/check_extable.sh %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [192 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not executable, IOW\0Ait is not possible for the kernel to fault\0Aat that address.  Something is seriously wrong\0Aand should be fixed.\0A\00", align 1
@.str.139 = private unnamed_addr constant [186 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not executable, IOW\0Athe kernel will fault if it ever tries to\0Ajump to it.  Something is seriously wrong\0Aand should be fixed.\0A\00", align 1
@.str.140 = private unnamed_addr constant [80 x i8] c"%s(%s+0x%lx): Section mismatch in reference from the %s %s%s to the %s %s:%s%s\0A\00", align 1
@.str.141 = private unnamed_addr constant [319 x i8] c"The relocation at %s+0x%lx references\0Asection \22%s\22 which is not in the list of\0Aauthorized sections.  If you're adding a new section\0Aand/or if this reference is valid, add \22%s\22 to the\0Alist of authorized sections to jump to on fault.\0AThis can be achieved by adding \22%s\22 to \0AOTHER_TEXT_SECTIONS in scripts/mod/modpost.c.\0A\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"axtd\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"(unknown reference)\00", align 1
@.str.147 = private unnamed_addr constant [45 x i8] c"section_index is outside elf->num_sections!\0A\00", align 1
@.str.148 = private unnamed_addr constant [44 x i8] c"extable_entry size hasn't been discovered!\0A\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"reference___initcall\00", align 1
@init_data_sections = internal constant [6 x ptr] [ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr null], align 16
@data_sections = internal constant [3 x ptr] [ptr @.str.110, ptr @.str.111, ptr null], align 16
@.str.150 = private unnamed_addr constant [8 x i8] c"__param\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"__param_ops_\00", align 1
@init_exit_sections = internal constant [5 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.112, ptr @.str.113, ptr null], align 16
@head_sections = internal constant [2 x ptr] [ptr @.str.158, ptr null], align 16
@init_sections = internal constant [3 x ptr] [ptr @.str.100, ptr @.str.101, ptr null], align 16
@linker_symbols = internal constant [4 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr null], align 16
@text_sections = internal constant [20 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr null], align 16
@optim_symbols = internal constant [2 x ptr] [ptr @.str.162, ptr null], align 16
@.str.152 = private unnamed_addr constant [3 x i8] c".L\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c".init.setup\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c".init.rodata\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c".meminit.rodata\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c".init.data\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c".meminit.data\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c".head.text*\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"__init_begin\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"_sinittext\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"_einittext\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"*.constprop.*\00", align 1
@.str.163 = private unnamed_addr constant [81 x i8] c"%s(%s+0x%llx): Section mismatch in reference from the %s %s%s to the %s %s:%s%s\0A\00", align 1
@.str.164 = private unnamed_addr constant [128 x i8] c"The function %s%s() references\0Athe %s %s%s%s.\0AThis is often because %s lacks a %s\0Aannotation or the annotation of %s is wrong.\0A\00", align 1
@.str.165 = private unnamed_addr constant [162 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __init* or __refdata (see linux/init.h) or name the variable:\0A\00", align 1
@.str.166 = private unnamed_addr constant [163 x i8] c"The function %s() references a %s in an exit section.\0AOften the %s %s%s has valid usage outside the exit section\0Aand the fix is to remove the %sannotation of %s.\0A\00", align 1
@.str.167 = private unnamed_addr constant [149 x i8] c"The variable %s references\0Athe %s %s%s%s\0AIf the reference is valid then annotate the\0Avariable with __exit* (see linux/init.h) or name the variable:\0A\00", align 1
@.str.168 = private unnamed_addr constant [109 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AIf %s is only used by %s then\0Aannotate %s with a matching annotation.\0A\00", align 1
@.str.169 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the init function\0Auses functionality in the exit path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an exit section.\0A\00", align 1
@.str.170 = private unnamed_addr constant [231 x i8] c"The %s %s%s%s references\0Aa %s %s%s%s.\0AThis is often seen when error handling in the exit function\0Auses functionality in the init path.\0AThe fix is often to remove the %sannotation of\0A%s%s so it may be used outside an init section.\0A\00", align 1
@.str.171 = private unnamed_addr constant [108 x i8] c"The symbol %s is exported and annotated %s\0AFix this by removing the %sannotation of %s or drop the export.\0A\00", align 1
@.str.172 = private unnamed_addr constant [76 x i8] c"There's a special handler for this mismatch type, we should never get here.\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"malloc(20)\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"rodata\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"data \00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"strdup(\22\22)\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c", \00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.183 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.185 = private unnamed_addr constant [33 x i8] c"Can't open filenames file %s: %m\00", align 1
@.str.186 = private unnamed_addr constant [33 x i8] c"module name is too long [%s.ko]\0A\00", align 1
@.str.187 = private unnamed_addr constant [25 x i8] c"\22%s\22 [%s.ko] undefined!\0A\00", align 1
@.str.188 = private unnamed_addr constant [69 x i8] c"module %s uses symbol %s from namespace %s, but does not import it.\0A\00", align 1
@.str.189 = private unnamed_addr constant [57 x i8] c"GPL-incompatible module %s.ko uses GPL-only symbol '%s'\0A\00", align 1
@.str.190 = private unnamed_addr constant [27 x i8] c"#include <linux/module.h>\0A\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"#define INCLUDE_VERMAGIC\0A\00", align 1
@.str.192 = private unnamed_addr constant [31 x i8] c"#include <linux/build-salt.h>\0A\00", align 1
@.str.193 = private unnamed_addr constant [32 x i8] c"#include <linux/elfnote-lto.h>\0A\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"#include <linux/vermagic.h>\0A\00", align 1
@.str.195 = private unnamed_addr constant [29 x i8] c"#include <linux/compiler.h>\0A\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"BUILD_SALT;\0A\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"BUILD_LTO_INFO;\0A\00", align 1
@.str.198 = private unnamed_addr constant [41 x i8] c"MODULE_INFO(vermagic, VERMAGIC_STRING);\0A\00", align 1
@.str.199 = private unnamed_addr constant [36 x i8] c"MODULE_INFO(name, KBUILD_MODNAME);\0A\00", align 1
@.str.200 = private unnamed_addr constant [39 x i8] c"__visible struct module __this_module\0A\00", align 1
@.str.201 = private unnamed_addr constant [44 x i8] c"__section(\22.gnu.linkonce.this_module\22) = {\0A\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"\09.name = KBUILD_MODNAME,\0A\00", align 1
@.str.203 = private unnamed_addr constant [23 x i8] c"\09.init = init_module,\0A\00", align 1
@.str.204 = private unnamed_addr constant [61 x i8] c"#ifdef CONFIG_MODULE_UNLOAD\0A\09.exit = cleanup_module,\0A#endif\0A\00", align 1
@.str.205 = private unnamed_addr constant [28 x i8] c"\09.arch = MODULE_ARCH_INIT,\0A\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.207 = private unnamed_addr constant [28 x i8] c"\0AMODULE_INFO(intree, \22Y\22);\0A\00", align 1
@.str.208 = private unnamed_addr constant [26 x i8] c"\0A#ifdef CONFIG_RETPOLINE\0A\00", align 1
@.str.209 = private unnamed_addr constant [30 x i8] c"MODULE_INFO(retpoline, \22Y\22);\0A\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"drivers/staging\00", align 1
@.str.212 = private unnamed_addr constant [29 x i8] c"\0AMODULE_INFO(staging, \22Y\22);\0A\00", align 1
@.str.213 = private unnamed_addr constant [52 x i8] c"static const struct modversion_info ____versions[]\0A\00", align 1
@.str.214 = private unnamed_addr constant [36 x i8] c"__used __section(\22__versions\22) = {\0A\00", align 1
@.str.215 = private unnamed_addr constant [26 x i8] c"\22%s\22 [%s.ko] has no CRC!\0A\00", align 1
@.str.216 = private unnamed_addr constant [30 x i8] c"too long symbol \22%s\22 [%s.ko]\0A\00", align 1
@.str.217 = private unnamed_addr constant [18 x i8] c"\09{ %#8x, \22%s\22 },\0A\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"MODULE_INFO(depends, \22\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.220 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"\22);\0A\00", align 1
@.str.222 = private unnamed_addr constant [32 x i8] c"MODULE_INFO(srcversion, \22%s\22);\0A\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"malloc(b->pos)\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"%s.ko:\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"0x%08x\09%s\09%s\09%s\09%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @modpost_log(i32 noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  switch i32 %0, label %13 [
    i32 0, label %4
    i32 1, label %7
    i32 2, label %10
  ]

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 9, i64 1, ptr %5) #26
  br label %13

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %9 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 7, i64 1, ptr %8) #26
  br label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %12 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %11) #26
  br label %13

13:                                               ; preds = %10, %7, %4, %2
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 9, i64 1, ptr %14) #26
  call void @llvm.va_start(ptr nonnull %3)
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %17 = call i32 @vfprintf(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %3) #26
  call void @llvm.va_end(ptr nonnull %3)
  switch i32 %0, label %20 [
    i32 2, label %18
    i32 1, label %19
  ]

18:                                               ; preds = %13
  call void @exit(i32 noundef 1) #27
  unreachable

19:                                               ; preds = %13
  store i1 true, ptr @error_occurred, align 1
  br label %20

20:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @do_nofail(ptr noundef readnone returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %1)
  br label %5

5:                                                ; preds = %4, %2
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @read_text_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #25
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #25
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @perror(ptr noundef %0) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

6:                                                ; preds = %1
  %7 = call i32 @__fxstat(i32 noundef 1, i32 noundef %3, ptr noundef nonnull %2) #25
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @perror(ptr noundef %0) #26
  call void @exit(i32 noundef 1) #27
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !9
  %13 = add nsw i64 %12, 1
  %14 = call noalias ptr @malloc(i64 noundef %13) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #25
  %17 = load i64, ptr %11, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i64 [ %12, %10 ], [ %17, %16 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %24

21:                                               ; preds = %24
  %22 = sub i64 %25, %26
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %18
  %25 = phi i64 [ %22, %21 ], [ %19, %18 ]
  %26 = call i64 @read(i32 noundef %3, ptr noundef %14, i64 noundef %25) #25
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %21

28:                                               ; preds = %24
  call void @perror(ptr noundef %0) #26
  call void @exit(i32 noundef 1) #27
  unreachable

29:                                               ; preds = %21
  %30 = load i64, ptr %11, align 8, !tbaa !9
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i64 [ %30, %29 ], [ 0, %18 ]
  %33 = getelementptr inbounds i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1, !tbaa !14
  %34 = call i32 @close(i32 noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #25
  ret ptr %14
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local ptr @get_line(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %2, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @strchr(ptr noundef nonnull %2, i32 noundef 10) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 0, ptr %8, align 1, !tbaa !14
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ null, %7 ]
  store ptr %13, ptr %0, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %12, %4, %1
  %15 = phi ptr [ %2, %12 ], [ null, %4 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @buf_printf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [500 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 500, ptr noundef %1, ptr noundef nonnull %4) #25
  %6 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = sub nsw i32 %7, %9
  %11 = icmp slt i32 %10, %5
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !18
  br label %24

14:                                               ; preds = %2
  %15 = add nsw i32 %5, 500
  %16 = add nsw i32 %15, %7
  store i32 %16, ptr %6, align 4, !tbaa !15
  %17 = load ptr, ptr %0, align 8, !tbaa !18
  %18 = sext i32 %16 to i64
  %19 = call ptr @realloc(ptr noundef %17, i64 noundef %18) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #25
  br label %22

22:                                               ; preds = %21, %14
  store ptr %19, ptr %0, align 8, !tbaa !18
  %23 = load i32, ptr %8, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ %9, %12 ], [ %23, %22 ]
  %26 = phi ptr [ %13, %12 ], [ %19, %22 ]
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = sext i32 %5 to i64
  %30 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull %3, i64 noundef %29) #25
  %31 = load i32, ptr %8, align 8, !tbaa !17
  %32 = add nsw i32 %31, %5
  store i32 %32, ptr %8, align 8, !tbaa !17
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @buf_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = sub nsw i32 %5, %7
  %9 = icmp slt i32 %8, %2
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !18
  br label %22

12:                                               ; preds = %3
  %13 = add nsw i32 %2, 500
  %14 = add nsw i32 %13, %5
  store i32 %14, ptr %4, align 4, !tbaa !15
  %15 = load ptr, ptr %0, align 8, !tbaa !18
  %16 = sext i32 %14 to i64
  %17 = tail call ptr @realloc(ptr noundef %15, i64 noundef %16) #30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #25
  br label %20

20:                                               ; preds = %19, %12
  store ptr %17, ptr %0, align 8, !tbaa !18
  %21 = load i32, ptr %6, align 8, !tbaa !17
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %7, %10 ], [ %21, %20 ]
  %24 = phi ptr [ %11, %10 ], [ %17, %20 ]
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = sext i32 %2 to i64
  %28 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef %1, i64 noundef %27) #25
  %29 = load i32, ptr %6, align 8, !tbaa !17
  %30 = add nsw i32 %29, %2
  store i32 %30, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.buffer, align 8
  %4 = alloca %struct.buffer, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca %struct.buffer, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr null, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %37, %2
  %11 = phi ptr [ null, %2 ], [ %38, %37 ]
  %12 = phi ptr [ null, %2 ], [ %39, %37 ]
  %13 = phi ptr [ null, %2 ], [ %40, %37 ]
  %14 = phi ptr [ %8, %2 ], [ %41, %37 ]
  %15 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.7) #25
  switch i32 %15, label %42 [
    i32 -1, label %43
    i32 101, label %16
    i32 105, label %17
    i32 109, label %25
    i32 110, label %26
    i32 111, label %27
    i32 97, label %29
    i32 84, label %30
    i32 119, label %32
    i32 69, label %33
    i32 78, label %34
    i32 100, label %35
  ]

16:                                               ; preds = %10
  store i1 true, ptr @external_module, align 4
  br label %37

17:                                               ; preds = %10
  %18 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #31
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #25
  br label %21

21:                                               ; preds = %20, %17
  store ptr %18, ptr %14, align 8, !tbaa !5
  %22 = load ptr, ptr @optarg, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.dump_list, ptr %18, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !19
  %24 = load ptr, ptr %14, align 8, !tbaa !5
  br label %37

25:                                               ; preds = %10
  store i1 true, ptr @modversions, align 4
  br label %37

26:                                               ; preds = %10
  store i1 true, ptr @ignore_missing_files, align 4
  br label %37

27:                                               ; preds = %10
  %28 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %37

29:                                               ; preds = %10
  store i1 true, ptr @all_versions, align 4
  br label %37

30:                                               ; preds = %10
  %31 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %37

32:                                               ; preds = %10
  store i1 true, ptr @warn_unresolved, align 4
  br label %37

33:                                               ; preds = %10
  store i1 true, ptr @sec_mismatch_warn_only, align 4
  br label %37

34:                                               ; preds = %10
  store i1 true, ptr @allow_missing_ns_imports, align 4
  br label %37

35:                                               ; preds = %10
  %36 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %35, %34, %33, %32, %30, %29, %27, %26, %25, %21, %16
  %38 = phi ptr [ %36, %35 ], [ %11, %34 ], [ %11, %33 ], [ %11, %32 ], [ %11, %30 ], [ %11, %29 ], [ %11, %27 ], [ %11, %26 ], [ %11, %25 ], [ %11, %21 ], [ %11, %16 ]
  %39 = phi ptr [ %12, %35 ], [ %12, %34 ], [ %12, %33 ], [ %12, %32 ], [ %12, %30 ], [ %12, %29 ], [ %28, %27 ], [ %12, %26 ], [ %12, %25 ], [ %12, %21 ], [ %12, %16 ]
  %40 = phi ptr [ %13, %35 ], [ %13, %34 ], [ %13, %33 ], [ %13, %32 ], [ %31, %30 ], [ %13, %29 ], [ %13, %27 ], [ %13, %26 ], [ %13, %25 ], [ %13, %21 ], [ %13, %16 ]
  %41 = phi ptr [ %14, %35 ], [ %14, %34 ], [ %14, %33 ], [ %14, %32 ], [ %14, %30 ], [ %14, %29 ], [ %14, %27 ], [ %14, %26 ], [ %14, %25 ], [ %24, %21 ], [ %14, %16 ]
  br label %10

42:                                               ; preds = %10
  tail call void @exit(i32 noundef 1) #27
  unreachable

43:                                               ; preds = %10
  %44 = load ptr, ptr %8, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %179, %43
  %47 = load i32, ptr @optind, align 4, !tbaa !21
  %48 = icmp slt i32 %47, %0
  br i1 %48, label %182, label %190

49:                                               ; preds = %179, %43
  %50 = phi ptr [ %180, %179 ], [ %44, %43 ]
  %51 = getelementptr inbounds %struct.dump_list, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = tail call ptr @read_text_file(ptr noundef %52) #25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %179, label %55

55:                                               ; preds = %175, %49
  %56 = phi ptr [ %65, %175 ], [ %53, %49 ]
  %57 = load i8, ptr %56, align 1, !tbaa !14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %177, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @strchr(ptr noundef nonnull %56, i32 noundef 10) #29
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %60, i64 1
  store i8 0, ptr %60, align 1, !tbaa !14
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi ptr [ %63, %62 ], [ null, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %66 = tail call ptr @strchr(ptr noundef nonnull %56, i32 noundef 9) #29
  %67 = icmp eq ptr %66, null
  br i1 %67, label %178, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  store i8 0, ptr %66, align 1, !tbaa !14
  %70 = tail call ptr @strchr(ptr noundef nonnull %69, i32 noundef 9) #29
  %71 = icmp eq ptr %70, null
  br i1 %71, label %178, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 0, ptr %70, align 1, !tbaa !14
  %74 = tail call ptr @strchr(ptr noundef nonnull %73, i32 noundef 9) #29
  %75 = icmp eq ptr %74, null
  br i1 %75, label %178, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 0, ptr %74, align 1, !tbaa !14
  %78 = tail call ptr @strchr(ptr noundef nonnull %77, i32 noundef 9) #29
  %79 = icmp eq ptr %78, null
  br i1 %79, label %178, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 0, ptr %78, align 1, !tbaa !14
  %82 = call i64 @strtoul(ptr noundef nonnull %56, ptr noundef nonnull %6, i32 noundef 16) #25
  %83 = trunc i64 %82 to i32
  %84 = load i8, ptr %69, align 1, !tbaa !14
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %178, label %86

86:                                               ; preds = %80
  %87 = load i8, ptr %73, align 1, !tbaa !14
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %178, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %6, align 8, !tbaa !5
  %91 = load i8, ptr %90, align 1, !tbaa !14
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %178

93:                                               ; preds = %97, %89
  %94 = phi ptr [ %95, %97 ], [ @modules, %89 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.module, ptr %95, i64 0, i32 12
  %99 = tail call i32 @strcmp(ptr noundef nonnull %98, ptr noundef nonnull dereferenceable(1) %73) #29
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %117, label %93

101:                                              ; preds = %93
  %102 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #29
  %103 = add i64 %102, 113
  %104 = tail call noalias ptr @malloc(i64 noundef %103) #28
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #25
  br label %107

107:                                              ; preds = %106, %101
  %108 = getelementptr inbounds i8, ptr %104, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %108, i8 0, i64 104, i1 false) #25
  %109 = getelementptr inbounds %struct.module, ptr %104, i64 0, i32 12
  %110 = tail call ptr @strcpy(ptr noundef nonnull %109, ptr noundef nonnull dereferenceable(1) %73) #25
  %111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(8) @.str.15) #29
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds %struct.module, ptr %104, i64 0, i32 4
  store i32 %113, ptr %114, align 4, !tbaa !21
  store i32 -1, ptr %108, align 8, !tbaa !21
  %115 = load ptr, ptr @modules, align 8, !tbaa !5
  store ptr %115, ptr %104, align 8, !tbaa !5
  store ptr %104, ptr @modules, align 8, !tbaa !5
  %116 = getelementptr inbounds %struct.module, ptr %104, i64 0, i32 3
  store i32 1, ptr %116, align 8, !tbaa !21
  br label %117

117:                                              ; preds = %107, %97
  %118 = phi ptr [ %104, %107 ], [ %95, %97 ]
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.20, ptr noundef nonnull %77) #29
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.21, ptr noundef nonnull %77) #29
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121, %117
  %125 = phi i64 [ 0, %117 ], [ 1, %121 ]
  %126 = getelementptr inbounds [3 x %struct.anon], ptr @export_list, i64 0, i64 %125, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !22
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i32 [ %127, %124 ], [ 2, %121 ]
  %130 = tail call fastcc ptr @sym_add_exported(ptr noundef nonnull %69, ptr noundef nonnull %118, i32 noundef %129) #25
  %131 = getelementptr inbounds %struct.symbol, ptr %130, i64 0, i32 5
  %132 = load i8, ptr %131, align 8
  %133 = and i8 %132, -3
  store i8 %133, ptr %131, align 8
  %134 = load i8, ptr %69, align 1, !tbaa !14
  %135 = icmp eq i8 %134, 46
  %136 = zext i1 %135 to i64
  %137 = getelementptr i8, ptr %69, i64 %136
  %138 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #29
  %139 = trunc i64 %138 to i32
  %140 = mul i32 %139, 596579247
  %141 = load i8, ptr %137, align 1, !tbaa !14
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %143, %128
  %144 = phi i8 [ %155, %143 ], [ %141, %128 ]
  %145 = phi i32 [ %152, %143 ], [ 0, %128 ]
  %146 = phi i32 [ %151, %143 ], [ %140, %128 ]
  %147 = zext i8 %144 to i32
  %148 = mul i32 %145, 5
  %149 = urem i32 %148, 24
  %150 = shl nuw nsw i32 %147, %149
  %151 = add i32 %150, %146
  %152 = add i32 %145, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %137, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !14
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %143

157:                                              ; preds = %143, %128
  %158 = phi i32 [ %140, %128 ], [ %151, %143 ]
  %159 = mul i32 %158, 619
  %160 = add i32 %159, 57
  %161 = and i32 %160, 1023
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %162
  br label %164

164:                                              ; preds = %168, %157
  %165 = phi ptr [ %163, %157 ], [ %166, %168 ]
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.symbol, ptr %166, i64 0, i32 7
  %170 = tail call i32 @strcmp(ptr noundef nonnull %169, ptr noundef nonnull %137) #29
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %164

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.symbol, ptr %166, i64 0, i32 2
  store i32 %83, ptr %173, align 8, !tbaa !21
  %174 = getelementptr inbounds %struct.symbol, ptr %166, i64 0, i32 3
  store i32 1, ptr %174, align 4, !tbaa !21
  br label %175

175:                                              ; preds = %172, %164
  tail call fastcc void @sym_update_namespace(ptr noundef nonnull %69, ptr noundef nonnull %81) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  %176 = icmp eq ptr %65, null
  br i1 %176, label %177, label %55

177:                                              ; preds = %175, %55
  tail call void @free(ptr noundef %53) #25
  br label %179

178:                                              ; preds = %89, %86, %80, %76, %72, %68, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  tail call void @free(ptr noundef %53) #25
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.13) #25
  br label %179

179:                                              ; preds = %178, %177, %49
  %180 = load ptr, ptr %50, align 8, !tbaa !24
  tail call void @free(ptr noundef %50) #25
  store ptr %180, ptr %8, align 8, !tbaa !5
  %181 = icmp eq ptr %180, null
  br i1 %181, label %46, label %49

182:                                              ; preds = %182, %46
  %183 = phi i32 [ %188, %182 ], [ %47, %46 ]
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr @optind, align 4, !tbaa !21
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds ptr, ptr %1, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  tail call fastcc void @read_symbols(ptr noundef %187)
  %188 = load i32, ptr @optind, align 4, !tbaa !21
  %189 = icmp slt i32 %188, %0
  br i1 %189, label %182, label %190

190:                                              ; preds = %182, %46
  %191 = icmp eq ptr %13, null
  br i1 %191, label %226, label %192

192:                                              ; preds = %190
  %193 = load ptr, ptr @stdin, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #25
  %194 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(2) @.str.183) #29
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = tail call ptr @fopen(ptr noundef nonnull %13, ptr noundef nonnull @.str.184) #25
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.185, ptr noundef nonnull %13) #25
  br label %200

200:                                              ; preds = %199, %196, %192
  %201 = phi ptr [ %197, %196 ], [ null, %199 ], [ %193, %192 ]
  %202 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 4096, ptr noundef %201) #25
  %203 = icmp eq ptr %202, null
  br i1 %203, label %220, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds i8, ptr %5, i64 -1
  br label %206

206:                                              ; preds = %217, %204
  %207 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %205, i64 %207
  %211 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %210, ptr noundef nonnull dereferenceable(2) @.str.173) #29
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = call i64 @strlen(ptr noundef nonnull %5) #29
  %215 = add i64 %214, -1
  %216 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %215
  store i8 0, ptr %216, align 1, !tbaa !14
  br label %217

217:                                              ; preds = %213, %209, %206
  call fastcc void @read_symbols(ptr noundef nonnull %5) #25
  %218 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 4096, ptr noundef %201) #25
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %206

220:                                              ; preds = %217, %200
  %221 = load ptr, ptr @stdin, align 8, !tbaa !5
  %222 = icmp eq ptr %201, %221
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = call i32 @fclose(ptr noundef %201) #25
  br label %225

225:                                              ; preds = %223, %220
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #25
  br label %226

226:                                              ; preds = %225, %190
  %227 = load ptr, ptr @modules, align 8, !tbaa !5
  %228 = icmp eq ptr %227, null
  br i1 %228, label %503, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.buffer, ptr %7, i64 0, i32 1
  br label %231

231:                                              ; preds = %500, %229
  %232 = phi ptr [ %227, %229 ], [ %501, %500 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #25
  %233 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 4
  %234 = load i32, ptr %233, align 4, !tbaa !21
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %500

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 3
  %238 = load i32, ptr %237, align 8, !tbaa !21
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %500

240:                                              ; preds = %236
  store i32 0, ptr %230, align 8, !tbaa !17
  %241 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 12
  %242 = call ptr @strrchr(ptr noundef nonnull %241, i32 noundef 47) #29
  %243 = icmp eq ptr %242, null
  %244 = getelementptr inbounds i8, ptr %242, i64 1
  %245 = select i1 %243, ptr %241, ptr %244
  %246 = call i64 @strlen(ptr noundef nonnull %245) #29
  %247 = icmp ugt i64 %246, 59
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.186, ptr noundef nonnull %241) #25
  br label %249

249:                                              ; preds = %248, %240
  %250 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !5
  %252 = icmp eq ptr %251, null
  br i1 %252, label %350, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 11
  %255 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 10
  %256 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 1
  br label %257

257:                                              ; preds = %347, %253
  %258 = phi ptr [ %251, %253 ], [ %348, %347 ]
  %259 = getelementptr inbounds %struct.symbol, ptr %258, i64 0, i32 7
  %260 = load i8, ptr %259, align 1, !tbaa !14
  %261 = icmp eq i8 %260, 46
  %262 = zext i1 %261 to i64
  %263 = getelementptr i8, ptr %259, i64 %262
  %264 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %263) #29
  %265 = trunc i64 %264 to i32
  %266 = mul i32 %265, 596579247
  %267 = load i8, ptr %263, align 1, !tbaa !14
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %283, label %269

269:                                              ; preds = %269, %257
  %270 = phi i8 [ %281, %269 ], [ %267, %257 ]
  %271 = phi i32 [ %278, %269 ], [ 0, %257 ]
  %272 = phi i32 [ %277, %269 ], [ %266, %257 ]
  %273 = zext i8 %270 to i32
  %274 = mul i32 %271, 5
  %275 = urem i32 %274, 24
  %276 = shl nuw nsw i32 %273, %275
  %277 = add i32 %276, %272
  %278 = add i32 %271, 1
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %263, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !14
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %269

283:                                              ; preds = %269, %257
  %284 = phi i32 [ %266, %257 ], [ %277, %269 ]
  %285 = mul i32 %284, 619
  %286 = add i32 %285, 57
  %287 = and i32 %286, 1023
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %288
  br label %290

290:                                              ; preds = %294, %283
  %291 = phi ptr [ %289, %283 ], [ %292, %294 ]
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  %293 = icmp eq ptr %292, null
  br i1 %293, label %302, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.symbol, ptr %292, i64 0, i32 7
  %296 = call i32 @strcmp(ptr noundef nonnull %295, ptr noundef nonnull %263) #29
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %290

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.symbol, ptr %292, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  %301 = icmp eq ptr %300, %232
  br i1 %301, label %302, label %315

302:                                              ; preds = %298, %290
  %303 = getelementptr inbounds %struct.symbol, ptr %258, i64 0, i32 5
  %304 = load i8, ptr %303, align 8
  %305 = and i8 %304, 1
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %347

307:                                              ; preds = %302
  %308 = load i32, ptr @nr_unresolved, align 4, !tbaa !21
  %309 = add i32 %308, 1
  store i32 %309, ptr @nr_unresolved, align 4, !tbaa !21
  %310 = icmp ult i32 %308, 10
  br i1 %310, label %311, label %347

311:                                              ; preds = %307
  %312 = load i1, ptr @warn_unresolved, align 4
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  call void (i32, ptr, ...) @modpost_log(i32 noundef %314, ptr noundef nonnull @.str.187, ptr noundef nonnull %259, ptr noundef nonnull %241) #25
  br label %347

315:                                              ; preds = %298
  %316 = call ptr @strrchr(ptr noundef nonnull %241, i32 noundef 47) #29
  %317 = icmp eq ptr %316, null
  %318 = getelementptr inbounds i8, ptr %316, i64 1
  %319 = select i1 %317, ptr %241, ptr %318
  %320 = getelementptr inbounds %struct.symbol, ptr %292, i64 0, i32 4
  %321 = load ptr, ptr %320, align 8, !tbaa !5
  %322 = icmp eq ptr %321, null
  br i1 %322, label %339, label %323

323:                                              ; preds = %315
  %324 = load ptr, ptr %254, align 8, !tbaa !5
  %325 = icmp eq ptr %324, null
  br i1 %325, label %334, label %326

326:                                              ; preds = %331, %323
  %327 = phi ptr [ %332, %331 ], [ %324, %323 ]
  %328 = getelementptr inbounds %struct.namespace_list, ptr %327, i64 0, i32 1
  %329 = call i32 @strcmp(ptr noundef nonnull %328, ptr noundef nonnull dereferenceable(1) %321) #29
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %339, label %331

331:                                              ; preds = %326
  %332 = load ptr, ptr %327, align 8, !tbaa !5
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %326

334:                                              ; preds = %331, %323
  %335 = load i1, ptr @allow_missing_ns_imports, align 4
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i32
  call void (i32, ptr, ...) @modpost_log(i32 noundef %337, ptr noundef nonnull @.str.188, ptr noundef nonnull %319, ptr noundef nonnull %295, ptr noundef nonnull %321) #25
  %338 = load ptr, ptr %320, align 8, !tbaa !5
  call fastcc void @add_namespace(ptr noundef nonnull %255, ptr noundef %338) #25
  br label %339

339:                                              ; preds = %334, %326, %315
  %340 = load i32, ptr %256, align 8, !tbaa !21
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.symbol, ptr %292, i64 0, i32 6
  %344 = load i32, ptr %343, align 4, !tbaa !14
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %347

346:                                              ; preds = %342
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.189, ptr noundef nonnull %319, ptr noundef nonnull %295) #25
  br label %347

347:                                              ; preds = %346, %342, %339, %311, %307, %302
  %348 = load ptr, ptr %258, align 8, !tbaa !5
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %257

350:                                              ; preds = %347, %249
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.190) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.191) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.192) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.193) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.194) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.195) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.196) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.197) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.198) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.199) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.200) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.201) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.202) #25
  %351 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 6
  %352 = load i32, ptr %351, align 4, !tbaa !21
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %350
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.203) #25
  br label %355

355:                                              ; preds = %354, %350
  %356 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 7
  %357 = load i32, ptr %356, align 8, !tbaa !21
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %355
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.204) #25
  br label %360

360:                                              ; preds = %359, %355
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.205) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.206) #25
  %361 = load i1, ptr @external_module, align 4
  br i1 %361, label %363, label %362

362:                                              ; preds = %360
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.207) #25
  br label %363

363:                                              ; preds = %362, %360
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.208) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.209) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.210) #25
  %364 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %241, ptr noundef nonnull dereferenceable(16) @.str.211, i64 noundef 15) #29
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.212) #25
  br label %367

367:                                              ; preds = %366, %363
  %368 = load ptr, ptr %250, align 8, !tbaa !5
  %369 = icmp eq ptr %368, null
  br i1 %369, label %426, label %370

370:                                              ; preds = %423, %367
  %371 = phi ptr [ %424, %423 ], [ %368, %367 ]
  %372 = getelementptr inbounds %struct.symbol, ptr %371, i64 0, i32 7
  %373 = load i8, ptr %372, align 1, !tbaa !14
  %374 = icmp eq i8 %373, 46
  %375 = zext i1 %374 to i64
  %376 = getelementptr i8, ptr %372, i64 %375
  %377 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %376) #29
  %378 = trunc i64 %377 to i32
  %379 = mul i32 %378, 596579247
  %380 = load i8, ptr %376, align 1, !tbaa !14
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %396, label %382

382:                                              ; preds = %382, %370
  %383 = phi i8 [ %394, %382 ], [ %380, %370 ]
  %384 = phi i32 [ %391, %382 ], [ 0, %370 ]
  %385 = phi i32 [ %390, %382 ], [ %379, %370 ]
  %386 = zext i8 %383 to i32
  %387 = mul i32 %384, 5
  %388 = urem i32 %387, 24
  %389 = shl nuw nsw i32 %386, %388
  %390 = add i32 %389, %385
  %391 = add i32 %384, 1
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %376, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !14
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %382

396:                                              ; preds = %382, %370
  %397 = phi i32 [ %379, %370 ], [ %390, %382 ]
  %398 = mul i32 %397, 619
  %399 = add i32 %398, 57
  %400 = and i32 %399, 1023
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %401
  br label %403

403:                                              ; preds = %407, %396
  %404 = phi ptr [ %402, %396 ], [ %405, %407 ]
  %405 = load ptr, ptr %404, align 8, !tbaa !5
  %406 = icmp eq ptr %405, null
  br i1 %406, label %423, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.symbol, ptr %405, i64 0, i32 7
  %409 = call i32 @strcmp(ptr noundef nonnull %408, ptr noundef nonnull %376) #29
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %403

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.symbol, ptr %405, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !5
  %414 = icmp eq ptr %413, %232
  br i1 %414, label %423, label %415

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.symbol, ptr %371, i64 0, i32 1
  store ptr %413, ptr %416, align 8, !tbaa !5
  %417 = getelementptr inbounds %struct.symbol, ptr %405, i64 0, i32 3
  %418 = load i32, ptr %417, align 4, !tbaa !21
  %419 = getelementptr inbounds %struct.symbol, ptr %371, i64 0, i32 3
  store i32 %418, ptr %419, align 4, !tbaa !21
  %420 = getelementptr inbounds %struct.symbol, ptr %405, i64 0, i32 2
  %421 = load i32, ptr %420, align 8, !tbaa !21
  %422 = getelementptr inbounds %struct.symbol, ptr %371, i64 0, i32 2
  store i32 %421, ptr %422, align 8, !tbaa !21
  br label %423

423:                                              ; preds = %415, %411, %403
  %424 = load ptr, ptr %371, align 8, !tbaa !5
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %370

426:                                              ; preds = %423, %367
  %427 = load i1, ptr @modversions, align 4
  br i1 %427, label %428, label %453

428:                                              ; preds = %426
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.213) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.214) #25
  %429 = load ptr, ptr %250, align 8, !tbaa !5
  %430 = icmp eq ptr %429, null
  br i1 %430, label %452, label %431

431:                                              ; preds = %449, %428
  %432 = phi ptr [ %450, %449 ], [ %429, %428 ]
  %433 = getelementptr inbounds %struct.symbol, ptr %432, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !5
  %435 = icmp eq ptr %434, null
  br i1 %435, label %449, label %436

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.symbol, ptr %432, i64 0, i32 3
  %438 = load i32, ptr %437, align 4, !tbaa !21
  %439 = icmp eq i32 %438, 0
  %440 = getelementptr inbounds %struct.symbol, ptr %432, i64 0, i32 7
  br i1 %439, label %441, label %442

441:                                              ; preds = %436
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.215, ptr noundef nonnull %440, ptr noundef nonnull %241) #25
  br label %449

442:                                              ; preds = %436
  %443 = call i64 @strlen(ptr noundef nonnull %440) #29
  %444 = icmp ugt i64 %443, 59
  br i1 %444, label %445, label %446

445:                                              ; preds = %442
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.216, ptr noundef nonnull %440, ptr noundef nonnull %241) #25
  br label %452

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.symbol, ptr %432, i64 0, i32 2
  %448 = load i32, ptr %447, align 8, !tbaa !21
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.217, i32 noundef %448, ptr noundef nonnull %440) #25
  br label %449

449:                                              ; preds = %446, %441, %431
  %450 = load ptr, ptr %432, align 8, !tbaa !5
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %431

452:                                              ; preds = %449, %445, %428
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.206) #25
  br label %453

453:                                              ; preds = %452, %426
  %454 = load ptr, ptr %250, align 8, !tbaa !5
  %455 = icmp eq ptr %454, null
  br i1 %455, label %468, label %456

456:                                              ; preds = %465, %453
  %457 = phi ptr [ %466, %465 ], [ %454, %453 ]
  %458 = getelementptr inbounds %struct.symbol, ptr %457, i64 0, i32 1
  %459 = load ptr, ptr %458, align 8, !tbaa !5
  %460 = icmp eq ptr %459, null
  br i1 %460, label %465, label %461

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.module, ptr %459, i64 0, i32 4
  %463 = load i32, ptr %462, align 4, !tbaa !21
  %464 = getelementptr inbounds %struct.module, ptr %459, i64 0, i32 5
  store i32 %463, ptr %464, align 8, !tbaa !21
  br label %465

465:                                              ; preds = %461, %456
  %466 = load ptr, ptr %457, align 8, !tbaa !5
  %467 = icmp eq ptr %466, null
  br i1 %467, label %468, label %456

468:                                              ; preds = %465, %453
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.218) #25
  %469 = load ptr, ptr %250, align 8, !tbaa !5
  %470 = icmp eq ptr %469, null
  br i1 %470, label %493, label %471

471:                                              ; preds = %489, %468
  %472 = phi ptr [ %491, %489 ], [ %469, %468 ]
  %473 = phi i32 [ %490, %489 ], [ 1, %468 ]
  %474 = getelementptr inbounds %struct.symbol, ptr %472, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !5
  %476 = icmp eq ptr %475, null
  br i1 %476, label %489, label %477

477:                                              ; preds = %471
  %478 = getelementptr inbounds %struct.module, ptr %475, i64 0, i32 5
  %479 = load i32, ptr %478, align 8, !tbaa !21
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %489

481:                                              ; preds = %477
  store i32 1, ptr %478, align 8, !tbaa !21
  %482 = getelementptr inbounds %struct.module, ptr %475, i64 0, i32 12
  %483 = call ptr @strrchr(ptr noundef nonnull %482, i32 noundef 47) #29
  %484 = icmp eq ptr %483, null
  %485 = getelementptr inbounds i8, ptr %483, i64 1
  %486 = select i1 %484, ptr %482, ptr %485
  %487 = icmp eq i32 %473, 0
  %488 = select i1 %487, ptr @.str.220, ptr @.str.17
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.219, ptr noundef nonnull %488, ptr noundef nonnull %486) #25
  br label %489

489:                                              ; preds = %481, %477, %471
  %490 = phi i32 [ 0, %481 ], [ %473, %471 ], [ %473, %477 ]
  %491 = load ptr, ptr %472, align 8, !tbaa !5
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %471

493:                                              ; preds = %489, %468
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.221) #25
  call void @add_moddevtable(ptr noundef nonnull %7, ptr noundef nonnull %232) #25
  %494 = getelementptr inbounds %struct.module, ptr %232, i64 0, i32 9
  %495 = load i8, ptr %494, align 8, !tbaa !14
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %498, label %497

497:                                              ; preds = %493
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.173) #25
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %7, ptr noundef nonnull @.str.222, ptr noundef nonnull %494) #25
  br label %498

498:                                              ; preds = %497, %493
  %499 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, ptr noundef nonnull %241) #25
  call fastcc void @write_if_changed(ptr noundef nonnull %7, ptr noundef nonnull %9)
  br label %500

500:                                              ; preds = %498, %236, %231
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #25
  %501 = load ptr, ptr %232, align 8, !tbaa !5
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %231

503:                                              ; preds = %500, %226
  %504 = icmp eq ptr %11, null
  br i1 %504, label %534, label %505

505:                                              ; preds = %503
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false) #25
  %506 = load ptr, ptr @modules, align 8, !tbaa !5
  %507 = icmp eq ptr %506, null
  br i1 %507, label %532, label %508

508:                                              ; preds = %527, %505
  %509 = phi ptr [ %528, %527 ], [ %506, %505 ]
  %510 = getelementptr inbounds %struct.module, ptr %509, i64 0, i32 3
  %511 = load i32, ptr %510, align 8, !tbaa !21
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %527

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.module, ptr %509, i64 0, i32 10
  %515 = load ptr, ptr %514, align 8, !tbaa !5
  %516 = icmp eq ptr %515, null
  br i1 %516, label %527, label %517

517:                                              ; preds = %513
  %518 = getelementptr inbounds %struct.module, ptr %509, i64 0, i32 12
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.225, ptr noundef nonnull %518) #25
  %519 = load ptr, ptr %514, align 8, !tbaa !5
  %520 = icmp eq ptr %519, null
  br i1 %520, label %526, label %521

521:                                              ; preds = %521, %517
  %522 = phi ptr [ %524, %521 ], [ %519, %517 ]
  %523 = getelementptr inbounds %struct.namespace_list, ptr %522, i64 0, i32 1
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.226, ptr noundef nonnull %523) #25
  %524 = load ptr, ptr %522, align 8, !tbaa !5
  %525 = icmp eq ptr %524, null
  br i1 %525, label %526, label %521

526:                                              ; preds = %521, %517
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.173) #25
  br label %527

527:                                              ; preds = %526, %513, %508
  %528 = load ptr, ptr %509, align 8, !tbaa !5
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %508

530:                                              ; preds = %527
  %531 = load ptr, ptr %4, align 8, !tbaa !18
  br label %532

532:                                              ; preds = %530, %505
  %533 = phi ptr [ %531, %530 ], [ null, %505 ]
  call fastcc void @write_if_changed(ptr noundef nonnull %4, ptr noundef nonnull %11) #25
  call void @free(ptr noundef %533) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  br label %534

534:                                              ; preds = %532, %503
  %535 = icmp eq ptr %12, null
  br i1 %535, label %571, label %536

536:                                              ; preds = %534
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false) #25
  br label %537

537:                                              ; preds = %566, %536
  %538 = phi i64 [ 0, %536 ], [ %567, %566 ]
  %539 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %538
  %540 = load ptr, ptr %539, align 8, !tbaa !5
  %541 = icmp eq ptr %540, null
  br i1 %541, label %566, label %542

542:                                              ; preds = %563, %537
  %543 = phi ptr [ %564, %563 ], [ %540, %537 ]
  %544 = getelementptr inbounds %struct.symbol, ptr %543, i64 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !5
  %546 = getelementptr inbounds %struct.module, ptr %545, i64 0, i32 3
  %547 = load i32, ptr %546, align 8, !tbaa !21
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %563

549:                                              ; preds = %542
  %550 = getelementptr inbounds %struct.symbol, ptr %543, i64 0, i32 4
  %551 = load ptr, ptr %550, align 8, !tbaa !5
  %552 = getelementptr inbounds %struct.symbol, ptr %543, i64 0, i32 2
  %553 = load i32, ptr %552, align 8, !tbaa !21
  %554 = getelementptr inbounds %struct.symbol, ptr %543, i64 0, i32 7
  %555 = getelementptr inbounds %struct.module, ptr %545, i64 0, i32 12
  %556 = getelementptr inbounds %struct.symbol, ptr %543, i64 0, i32 6
  %557 = load i32, ptr %556, align 4, !tbaa !14
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds [3 x %struct.anon], ptr @export_list, i64 0, i64 %558
  %560 = load ptr, ptr %559, align 16, !tbaa !25
  %561 = icmp eq ptr %551, null
  %562 = select i1 %561, ptr @.str.17, ptr %551
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.227, i32 noundef %553, ptr noundef nonnull %554, ptr noundef nonnull %555, ptr noundef %560, ptr noundef %562) #25
  br label %563

563:                                              ; preds = %549, %542
  %564 = load ptr, ptr %543, align 8, !tbaa !5
  %565 = icmp eq ptr %564, null
  br i1 %565, label %566, label %542

566:                                              ; preds = %563, %537
  %567 = add nuw nsw i64 %538, 1
  %568 = icmp eq i64 %567, 1024
  br i1 %568, label %569, label %537

569:                                              ; preds = %566
  call fastcc void @write_buf(ptr noundef nonnull %3, ptr noundef nonnull %12) #25
  %570 = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %570) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br label %571

571:                                              ; preds = %569, %534
  %572 = load i32, ptr @sec_mismatch_count, align 4, !tbaa !21
  %573 = icmp eq i32 %572, 0
  %574 = load i1, ptr @sec_mismatch_warn_only, align 4
  %575 = xor i1 %574, true
  %576 = select i1 %573, i1 true, i1 %575
  br i1 %576, label %578, label %577

577:                                              ; preds = %571
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.10)
  br label %578

578:                                              ; preds = %577, %571
  br label %579

579:                                              ; preds = %603, %578
  %580 = phi i64 [ %604, %603 ], [ 0, %578 ]
  %581 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %580
  %582 = load ptr, ptr %581, align 8, !tbaa !5
  %583 = icmp eq ptr %582, null
  br i1 %583, label %603, label %584

584:                                              ; preds = %600, %579
  %585 = phi ptr [ %601, %600 ], [ %582, %579 ]
  %586 = getelementptr inbounds %struct.symbol, ptr %585, i64 0, i32 5
  %587 = load i8, ptr %586, align 8
  %588 = and i8 %587, 2
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %600, label %590

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.symbol, ptr %585, i64 0, i32 7
  %592 = getelementptr inbounds %struct.symbol, ptr %585, i64 0, i32 1
  %593 = load ptr, ptr %592, align 8, !tbaa !5
  %594 = getelementptr inbounds %struct.module, ptr %593, i64 0, i32 12
  %595 = getelementptr inbounds %struct.symbol, ptr %585, i64 0, i32 6
  %596 = load i32, ptr %595, align 4, !tbaa !14
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds [3 x %struct.anon], ptr @export_list, i64 0, i64 %597
  %599 = load ptr, ptr %598, align 16, !tbaa !25
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull %591, ptr noundef nonnull %594, ptr noundef %599)
  br label %600

600:                                              ; preds = %590, %584
  %601 = load ptr, ptr %585, align 8, !tbaa !5
  %602 = icmp eq ptr %601, null
  br i1 %602, label %603, label %584

603:                                              ; preds = %600, %579
  %604 = add nuw nsw i64 %580, 1
  %605 = icmp eq i64 %604, 1024
  br i1 %605, label %606, label %579

606:                                              ; preds = %603
  %607 = load i32, ptr @nr_unresolved, align 4, !tbaa !21
  %608 = icmp ugt i32 %607, 10
  br i1 %608, label %609, label %611

609:                                              ; preds = %606
  %610 = add i32 %607, -10
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %610)
  br label %611

611:                                              ; preds = %609, %606
  %612 = load ptr, ptr %7, align 8, !tbaa !18
  call void @free(ptr noundef %612) #25
  %613 = load i1, ptr @error_occurred, align 1
  %614 = zext i1 %613 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  ret i32 %614
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc void @read_symbols(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.Elf32_Rela, align 4
  %3 = alloca %struct.Elf32_Rela, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.elf_info, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #25
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #25
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = call i32 @__fxstat(i32 noundef 1, i32 noundef %6, ptr noundef nonnull %4) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 @close(i32 noundef %6) #25
  br label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !9
  store i64 %15, ptr %5, align 8, !tbaa !26
  %16 = call ptr @mmap(ptr noundef null, i64 noundef %15, i32 noundef 3, i32 noundef 2, i32 noundef %6, i64 noundef 0) #25
  %17 = call i32 @close(i32 noundef %6) #25
  %18 = icmp eq ptr %16, inttoptr (i64 -1 to ptr)
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %11, %1
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #25
  br label %22

20:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #25
  %21 = icmp eq ptr %16, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %20, %19
  %23 = load i1, ptr @ignore_missing_files, align 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %26 = tail call ptr @__errno_location() #32
  %27 = load i32, ptr %26, align 4, !tbaa !21
  %28 = call ptr @strerror(i32 noundef %27) #25
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.34, ptr noundef %0, ptr noundef %28) #33
  br label %1284

30:                                               ; preds = %22
  call void @perror(ptr noundef %0) #33
  call void @exit(i32 noundef 1) #27
  unreachable

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 1
  store ptr %16, ptr %32, align 8, !tbaa !27
  %33 = load i64, ptr %5, align 8, !tbaa !30
  %34 = icmp ult i64 %33, 52
  br i1 %34, label %1284, label %35

35:                                               ; preds = %31
  %36 = load i8, ptr %16, align 4, !tbaa !14
  %37 = icmp eq i8 %36, 127
  br i1 %37, label %38, label %1284

38:                                               ; preds = %35
  %39 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %41 = icmp eq i8 %40, 69
  br i1 %41, label %42, label %1284

42:                                               ; preds = %38
  %43 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 2
  %44 = load i8, ptr %43, align 2, !tbaa !14
  %45 = icmp eq i8 %44, 76
  br i1 %45, label %46, label %1284

46:                                               ; preds = %42
  %47 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !14
  %49 = icmp eq i8 %48, 70
  br i1 %49, label %50, label %1284

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %16, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !31
  %53 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %16, i64 0, i32 13
  %54 = zext i32 %52 to i64
  %55 = getelementptr i8, ptr %16, i64 %54
  %56 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !33
  %57 = icmp ult i64 %33, %54
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.35, i64 noundef %54, ptr noundef %0, i64 noundef %33) #25
  br label %1284

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %16, i64 0, i32 12
  %61 = load i16, ptr %60, align 4, !tbaa !34
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Elf32_Shdr, ptr %55, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !35
  br label %68

66:                                               ; preds = %59
  %67 = zext i16 %61 to i32
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 10
  store i32 %69, ptr %70, align 4
  %71 = load i16, ptr %53, align 2, !tbaa !37
  %72 = icmp eq i16 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.Elf32_Shdr, ptr %55, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !38
  br label %78

76:                                               ; preds = %68
  %77 = zext i16 %71 to i32
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  %80 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 11
  store i32 %79, ptr %80, align 8
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds %struct.Elf32_Shdr, ptr %55, i64 %81
  %83 = getelementptr inbounds %struct.Elf32_Shdr, ptr %82, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !39
  %85 = zext i32 %84 to i64
  %86 = getelementptr i8, ptr %16, i64 %85
  %87 = icmp ugt i32 %69, 1
  br i1 %87, label %88, label %185

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 6
  %90 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 5
  %91 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 8
  %92 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 9
  %93 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 12
  %94 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 13
  %95 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 3
  %96 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 4
  %97 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 7
  br label %98

98:                                               ; preds = %178, %88
  %99 = phi i64 [ 1, %88 ], [ %181, %178 ]
  %100 = phi i32 [ -1, %88 ], [ %180, %178 ]
  %101 = phi i32 [ -1, %88 ], [ %179, %178 ]
  %102 = getelementptr inbounds %struct.Elf32_Shdr, ptr %55, i64 %99
  %103 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !40
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %112, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !39
  %109 = zext i32 %108 to i64
  %110 = load i64, ptr %5, align 8, !tbaa !30
  %111 = icmp ult i64 %110, %109
  br i1 %111, label %176, label %118

112:                                              ; preds = %98
  %113 = load i32, ptr %102, align 4, !tbaa !41
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %86, i64 %114
  %116 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(9) @.str.37) #29
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %135

118:                                              ; preds = %106
  %119 = load i32, ptr %102, align 4, !tbaa !41
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %86, i64 %120
  %122 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %121, ptr noundef nonnull dereferenceable(9) @.str.37) #29
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %135

124:                                              ; preds = %112
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef %0) #25
  %125 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 4
  %126 = load i32, ptr %125, align 4, !tbaa !39
  %127 = load i32, ptr %103, align 4, !tbaa !40
  %128 = zext i32 %126 to i64
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i64 [ %109, %118 ], [ %128, %124 ]
  %131 = phi i32 [ %104, %118 ], [ %127, %124 ]
  %132 = getelementptr i8, ptr %16, i64 %130
  store ptr %132, ptr %91, align 8, !tbaa !42
  %133 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 5
  %134 = load i32, ptr %133, align 4, !tbaa !35
  store i32 %134, ptr %92, align 8, !tbaa !43
  br label %146

135:                                              ; preds = %118, %112
  %136 = phi ptr [ %121, %118 ], [ %115, %112 ]
  %137 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(10) @.str.39) #29
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = trunc i64 %99 to i16
  store i16 %140, ptr %90, align 8, !tbaa !44
  br label %146

141:                                              ; preds = %135
  %142 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %136, ptr noundef nonnull dereferenceable(14) @.str.40) #29
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = trunc i64 %99 to i16
  store i16 %145, ptr %89, align 2, !tbaa !45
  br label %146

146:                                              ; preds = %144, %141, %139, %129
  %147 = phi i32 [ %104, %139 ], [ %104, %144 ], [ %104, %141 ], [ %131, %129 ]
  switch i32 %147, label %178 [
    i32 2, label %148
    i32 18, label %166
  ]

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 4
  %150 = load i32, ptr %149, align 4, !tbaa !39
  %151 = zext i32 %150 to i64
  %152 = getelementptr i8, ptr %16, i64 %151
  store ptr %152, ptr %95, align 8, !tbaa !46
  %153 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !35
  %155 = zext i32 %154 to i64
  %156 = getelementptr i8, ptr %152, i64 %155
  store ptr %156, ptr %96, align 8, !tbaa !47
  %157 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 6
  %158 = load i32, ptr %157, align 4, !tbaa !38
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.Elf32_Shdr, ptr %55, i64 %159
  %161 = getelementptr inbounds %struct.Elf32_Shdr, ptr %160, i64 0, i32 4
  %162 = load i32, ptr %161, align 4, !tbaa !39
  %163 = zext i32 %162 to i64
  %164 = getelementptr i8, ptr %16, i64 %163
  store ptr %164, ptr %97, align 8, !tbaa !48
  %165 = trunc i64 %99 to i32
  br label %178

166:                                              ; preds = %146
  %167 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 4
  %168 = load i32, ptr %167, align 4, !tbaa !39
  %169 = zext i32 %168 to i64
  %170 = getelementptr i8, ptr %16, i64 %169
  store ptr %170, ptr %93, align 8, !tbaa !49
  %171 = getelementptr inbounds %struct.Elf32_Shdr, ptr %102, i64 0, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !35
  %173 = zext i32 %172 to i64
  %174 = getelementptr i8, ptr %170, i64 %173
  store ptr %174, ptr %94, align 8, !tbaa !50
  %175 = trunc i64 %99 to i32
  br label %178

176:                                              ; preds = %106
  %177 = zext i32 %108 to i64
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.36, ptr noundef %0, i64 noundef %177, i64 noundef 52) #25
  br label %1284

178:                                              ; preds = %166, %148, %146
  %179 = phi i32 [ %165, %148 ], [ %101, %166 ], [ %101, %146 ]
  %180 = phi i32 [ %100, %148 ], [ %175, %166 ], [ %100, %146 ]
  %181 = add nuw nsw i64 %99, 1
  %182 = load i32, ptr %70, align 4, !tbaa !51
  %183 = zext i32 %182 to i64
  %184 = icmp ult i64 %181, %183
  br i1 %184, label %98, label %185

185:                                              ; preds = %178, %78
  %186 = phi i32 [ -1, %78 ], [ %179, %178 ]
  %187 = phi i32 [ -1, %78 ], [ %180, %178 ]
  %188 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !46
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef %0) #25
  br label %192

192:                                              ; preds = %191, %185
  %193 = icmp eq i32 %187, -1
  br i1 %193, label %201, label %194

194:                                              ; preds = %192
  %195 = zext i32 %187 to i64
  %196 = getelementptr inbounds %struct.Elf32_Shdr, ptr %55, i64 %195
  %197 = getelementptr inbounds %struct.Elf32_Shdr, ptr %196, i64 0, i32 6
  %198 = load i32, ptr %197, align 4, !tbaa !38
  %199 = icmp eq i32 %186, %198
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.42, ptr noundef %0, i32 noundef %198, i32 noundef %186) #25
  br label %201

201:                                              ; preds = %200, %194, %192
  %202 = call noalias ptr @strdup(ptr noundef %0) #25
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #25
  br label %205

205:                                              ; preds = %204, %201
  %206 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %202) #29
  %207 = add i64 %206, -2
  %208 = getelementptr inbounds i8, ptr %202, i64 %207
  store i8 0, ptr %208, align 1, !tbaa !14
  %209 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %202) #29
  %210 = icmp ult i64 %209, 4
  br i1 %210, label %219, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds i8, ptr %202, i64 %209
  %213 = getelementptr inbounds i8, ptr %212, i64 -4
  %214 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %213, ptr noundef nonnull dereferenceable(5) @.str.26) #29
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %211
  %217 = add i64 %209, -4
  %218 = getelementptr inbounds i8, ptr %202, i64 %217
  store i8 0, ptr %218, align 1, !tbaa !14
  br label %219

219:                                              ; preds = %216, %211, %205
  %220 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %202) #29
  %221 = add i64 %220, 113
  %222 = call noalias ptr @malloc(i64 noundef %221) #28
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14) #25
  br label %225

225:                                              ; preds = %224, %219
  %226 = getelementptr inbounds i8, ptr %222, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %226, i8 0, i64 104, i1 false) #25
  %227 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 12
  %228 = call ptr @strcpy(ptr noundef nonnull %227, ptr noundef nonnull dereferenceable(1) %202) #25
  %229 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %202, ptr noundef nonnull dereferenceable(8) @.str.15) #29
  %230 = icmp eq i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 4
  store i32 %231, ptr %232, align 4, !tbaa !21
  store i32 -1, ptr %226, align 8, !tbaa !21
  %233 = load ptr, ptr @modules, align 8, !tbaa !5
  store ptr %233, ptr %222, align 8, !tbaa !5
  store ptr %222, ptr @modules, align 8, !tbaa !5
  call void @free(ptr noundef nonnull %202) #25
  br i1 %230, label %443, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 8
  %236 = load ptr, ptr %235, align 8, !tbaa !42
  %237 = icmp eq ptr %236, null
  br i1 %237, label %270, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 9
  %240 = load i32, ptr %239, align 8, !tbaa !43
  %241 = zext i32 %240 to i64
  br label %242

242:                                              ; preds = %261, %238
  %243 = phi ptr [ %236, %238 ], [ %263, %261 ]
  %244 = phi i64 [ %241, %238 ], [ %262, %261 ]
  %245 = call i32 @strncmp(ptr noundef nonnull %243, ptr noundef nonnull dereferenceable(8) @.str.27, i64 noundef 7) #29
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = getelementptr inbounds i8, ptr %243, i64 7
  %249 = load i8, ptr %248, align 1, !tbaa !14
  %250 = icmp eq i8 %249, 61
  br i1 %250, label %272, label %251

251:                                              ; preds = %247, %242
  br label %252

252:                                              ; preds = %257, %251
  %253 = phi i64 [ %259, %257 ], [ %244, %251 ]
  %254 = phi ptr [ %258, %257 ], [ %243, %251 ]
  %255 = load i8, ptr %254, align 1, !tbaa !14
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds i8, ptr %254, i64 1
  %259 = add i64 %253, -1
  %260 = icmp ult i64 %253, 2
  br i1 %260, label %270, label %252

261:                                              ; preds = %266
  %262 = add i64 %267, -1
  %263 = getelementptr inbounds i8, ptr %268, i64 1
  %264 = load i8, ptr %263, align 1, !tbaa !14
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %242

266:                                              ; preds = %261, %252
  %267 = phi i64 [ %262, %261 ], [ %253, %252 ]
  %268 = phi ptr [ %263, %261 ], [ %254, %252 ]
  %269 = icmp ult i64 %267, 2
  br i1 %269, label %270, label %261

270:                                              ; preds = %266, %257, %234
  call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %0)
  %271 = load ptr, ptr %235, align 8, !tbaa !42
  br label %349

272:                                              ; preds = %247
  %273 = load ptr, ptr %235, align 8
  %274 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 9
  %275 = load i32, ptr %274, align 8
  %276 = zext i32 %275 to i64
  %277 = ptrtoint ptr %273 to i64
  br label %278

278:                                              ; preds = %325, %272
  %279 = phi ptr [ %243, %272 ], [ %321, %325 ]
  %280 = getelementptr inbounds i8, ptr %279, i64 8
  %281 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(4) @.str.43) #29
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %298, label %283

283:                                              ; preds = %278
  %284 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(7) @.str.44) #29
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %283
  %287 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(26) @.str.45) #29
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %286
  %290 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(13) @.str.46) #29
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(13) @.str.47) #29
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %292
  %296 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(13) @.str.48) #29
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %348

298:                                              ; preds = %295, %292, %289, %286, %283, %278
  store i32 1, ptr %226, align 8, !tbaa !21
  %299 = ptrtoint ptr %280 to i64
  %300 = sub i64 %277, %299
  %301 = add i64 %300, %276
  br label %302

302:                                              ; preds = %307, %298
  %303 = phi i64 [ %301, %298 ], [ %309, %307 ]
  %304 = phi ptr [ %280, %298 ], [ %308, %307 ]
  %305 = load i8, ptr %304, align 1, !tbaa !14
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %316, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds i8, ptr %304, i64 1
  %309 = add i64 %303, -1
  %310 = icmp ult i64 %303, 2
  br i1 %310, label %349, label %302

311:                                              ; preds = %316
  %312 = add i64 %317, -1
  %313 = getelementptr inbounds i8, ptr %318, i64 1
  %314 = load i8, ptr %313, align 1, !tbaa !14
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %311, %302
  %317 = phi i64 [ %312, %311 ], [ %303, %302 ]
  %318 = phi ptr [ %313, %311 ], [ %304, %302 ]
  %319 = icmp ult i64 %317, 2
  br i1 %319, label %349, label %311

320:                                              ; preds = %339, %311
  %321 = phi ptr [ %313, %311 ], [ %341, %339 ]
  %322 = phi i64 [ %312, %311 ], [ %340, %339 ]
  %323 = call i32 @strncmp(ptr noundef nonnull %321, ptr noundef nonnull dereferenceable(8) @.str.27, i64 noundef 7) #29
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %320
  %326 = getelementptr inbounds i8, ptr %321, i64 7
  %327 = load i8, ptr %326, align 1, !tbaa !14
  %328 = icmp eq i8 %327, 61
  br i1 %328, label %278, label %329

329:                                              ; preds = %325, %320
  br label %330

330:                                              ; preds = %334, %329
  %331 = phi ptr [ %336, %334 ], [ %321, %329 ]
  %332 = phi i64 [ %335, %334 ], [ %322, %329 ]
  %333 = icmp ult i64 %332, 2
  br i1 %333, label %349, label %334

334:                                              ; preds = %330
  %335 = add i64 %332, -1
  %336 = getelementptr inbounds i8, ptr %331, i64 1
  %337 = load i8, ptr %336, align 1, !tbaa !14
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %344, label %330

339:                                              ; preds = %344
  %340 = add i64 %345, -1
  %341 = getelementptr inbounds i8, ptr %346, i64 1
  %342 = load i8, ptr %341, align 1, !tbaa !14
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %344, label %320

344:                                              ; preds = %339, %334
  %345 = phi i64 [ %340, %339 ], [ %335, %334 ]
  %346 = phi ptr [ %341, %339 ], [ %336, %334 ]
  %347 = icmp ult i64 %345, 2
  br i1 %347, label %349, label %339

348:                                              ; preds = %295
  store i32 0, ptr %226, align 8, !tbaa !21
  br label %349

349:                                              ; preds = %348, %344, %330, %316, %307, %270
  %350 = phi ptr [ %271, %270 ], [ %273, %348 ], [ %273, %344 ], [ %273, %330 ], [ %273, %316 ], [ %273, %307 ]
  %351 = icmp eq ptr %350, null
  br i1 %351, label %443, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 9
  %354 = load i32, ptr %353, align 8, !tbaa !43
  %355 = zext i32 %354 to i64
  br label %356

356:                                              ; preds = %375, %352
  %357 = phi ptr [ %350, %352 ], [ %377, %375 ]
  %358 = phi i64 [ %355, %352 ], [ %376, %375 ]
  %359 = call i32 @strncmp(ptr noundef nonnull %357, ptr noundef nonnull dereferenceable(10) @.str.29, i64 noundef 9) #29
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %356
  %362 = getelementptr inbounds i8, ptr %357, i64 9
  %363 = load i8, ptr %362, align 1, !tbaa !14
  %364 = icmp eq i8 %363, 61
  br i1 %364, label %384, label %365

365:                                              ; preds = %361, %356
  br label %366

366:                                              ; preds = %371, %365
  %367 = phi i64 [ %373, %371 ], [ %358, %365 ]
  %368 = phi ptr [ %372, %371 ], [ %357, %365 ]
  %369 = load i8, ptr %368, align 1, !tbaa !14
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %380, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds i8, ptr %368, i64 1
  %373 = add i64 %367, -1
  %374 = icmp ult i64 %367, 2
  br i1 %374, label %443, label %366

375:                                              ; preds = %380
  %376 = add i64 %381, -1
  %377 = getelementptr inbounds i8, ptr %382, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !14
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %356

380:                                              ; preds = %375, %366
  %381 = phi i64 [ %376, %375 ], [ %367, %366 ]
  %382 = phi ptr [ %377, %375 ], [ %368, %366 ]
  %383 = icmp ult i64 %381, 2
  br i1 %383, label %443, label %375

384:                                              ; preds = %361
  %385 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 11
  %386 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 9
  br label %387

387:                                              ; preds = %420, %384
  %388 = phi ptr [ %357, %384 ], [ %416, %420 ]
  %389 = getelementptr inbounds i8, ptr %388, i64 10
  call fastcc void @add_namespace(ptr noundef nonnull %385, ptr noundef nonnull %389)
  %390 = load ptr, ptr %235, align 8, !tbaa !42
  %391 = load i32, ptr %386, align 8, !tbaa !43
  %392 = zext i32 %391 to i64
  %393 = ptrtoint ptr %389 to i64
  %394 = ptrtoint ptr %390 to i64
  %395 = sub i64 %394, %393
  %396 = add i64 %395, %392
  br label %397

397:                                              ; preds = %402, %387
  %398 = phi i64 [ %396, %387 ], [ %404, %402 ]
  %399 = phi ptr [ %389, %387 ], [ %403, %402 ]
  %400 = load i8, ptr %399, align 1, !tbaa !14
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %411, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds i8, ptr %399, i64 1
  %404 = add i64 %398, -1
  %405 = icmp ult i64 %398, 2
  br i1 %405, label %443, label %397

406:                                              ; preds = %411
  %407 = add i64 %412, -1
  %408 = getelementptr inbounds i8, ptr %413, i64 1
  %409 = load i8, ptr %408, align 1, !tbaa !14
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %406, %397
  %412 = phi i64 [ %407, %406 ], [ %398, %397 ]
  %413 = phi ptr [ %408, %406 ], [ %399, %397 ]
  %414 = icmp ult i64 %412, 2
  br i1 %414, label %443, label %406

415:                                              ; preds = %434, %406
  %416 = phi ptr [ %408, %406 ], [ %436, %434 ]
  %417 = phi i64 [ %407, %406 ], [ %435, %434 ]
  %418 = call i32 @strncmp(ptr noundef nonnull %416, ptr noundef nonnull dereferenceable(10) @.str.29, i64 noundef 9) #29
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %415
  %421 = getelementptr inbounds i8, ptr %416, i64 9
  %422 = load i8, ptr %421, align 1, !tbaa !14
  %423 = icmp eq i8 %422, 61
  br i1 %423, label %387, label %424

424:                                              ; preds = %420, %415
  br label %425

425:                                              ; preds = %429, %424
  %426 = phi ptr [ %431, %429 ], [ %416, %424 ]
  %427 = phi i64 [ %430, %429 ], [ %417, %424 ]
  %428 = icmp ult i64 %427, 2
  br i1 %428, label %443, label %429

429:                                              ; preds = %425
  %430 = add i64 %427, -1
  %431 = getelementptr inbounds i8, ptr %426, i64 1
  %432 = load i8, ptr %431, align 1, !tbaa !14
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %439, label %425

434:                                              ; preds = %439
  %435 = add i64 %440, -1
  %436 = getelementptr inbounds i8, ptr %441, i64 1
  %437 = load i8, ptr %436, align 1, !tbaa !14
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %439, label %415

439:                                              ; preds = %434, %429
  %440 = phi i64 [ %435, %434 ], [ %430, %429 ]
  %441 = phi ptr [ %436, %434 ], [ %431, %429 ]
  %442 = icmp ult i64 %440, 2
  br i1 %442, label %443, label %434

443:                                              ; preds = %439, %425, %411, %402, %380, %371, %349, %225
  %444 = load ptr, ptr %188, align 8, !tbaa !46
  %445 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 4
  %446 = load ptr, ptr %445, align 8, !tbaa !47
  %447 = icmp ult ptr %444, %446
  br i1 %447, label %448, label %654

448:                                              ; preds = %443
  %449 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 7
  %450 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 12
  %451 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 5
  %452 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 6
  %453 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 2
  %454 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 6
  %455 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 7
  br label %456

456:                                              ; preds = %648, %448
  %457 = phi ptr [ %444, %448 ], [ %649, %648 ]
  %458 = load ptr, ptr %449, align 8, !tbaa !48
  %459 = load i32, ptr %457, align 4, !tbaa !52
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds i8, ptr %458, i64 %460
  %462 = call fastcc ptr @remove_dot(ptr noundef %461)
  %463 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(10) @.str.39, i64 noundef 9) #29
  %464 = icmp eq i32 %463, 0
  %465 = getelementptr inbounds %struct.Elf32_Sym, ptr %457, i64 0, i32 5
  %466 = load i16, ptr %465, align 2, !tbaa !54
  %467 = zext i16 %466 to i32
  %468 = add i16 %466, 1
  %469 = icmp ult i16 %468, -255
  br i1 %464, label %470, label %515

470:                                              ; preds = %456
  br i1 %469, label %473, label %471

471:                                              ; preds = %470
  %472 = or i32 %467, -65536
  br label %484

473:                                              ; preds = %470
  %474 = icmp eq i16 %466, -1
  br i1 %474, label %475, label %484

475:                                              ; preds = %473
  %476 = load ptr, ptr %450, align 8, !tbaa !49
  %477 = load ptr, ptr %188, align 8, !tbaa !46
  %478 = ptrtoint ptr %457 to i64
  %479 = ptrtoint ptr %477 to i64
  %480 = sub i64 %478, %479
  %481 = ashr exact i64 %480, 4
  %482 = getelementptr inbounds i32, ptr %476, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !21
  br label %484

484:                                              ; preds = %475, %473, %471
  %485 = phi i32 [ %472, %471 ], [ %483, %475 ], [ %467, %473 ]
  %486 = load ptr, ptr %56, align 8, !tbaa !33
  %487 = sext i32 %485 to i64
  %488 = getelementptr inbounds %struct.Elf32_Shdr, ptr %486, i64 %487
  %489 = load i32, ptr %80, align 8, !tbaa !55
  %490 = load i32, ptr %488, align 4, !tbaa !41
  %491 = zext i32 %490 to i64
  %492 = zext i32 %489 to i64
  %493 = load ptr, ptr %32, align 8, !tbaa !27
  %494 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %493, i64 0, i32 1
  %495 = load i16, ptr %494, align 4, !tbaa !56
  %496 = icmp eq i16 %495, 1
  br i1 %496, label %502, label %497

497:                                              ; preds = %484
  %498 = getelementptr inbounds %struct.Elf32_Shdr, ptr %486, i64 %492, i32 3
  %499 = load i32, ptr %498, align 4, !tbaa !57
  %500 = zext i32 %499 to i64
  %501 = sub nsw i64 %491, %500
  br label %502

502:                                              ; preds = %497, %484
  %503 = phi i64 [ %501, %497 ], [ %491, %484 ]
  %504 = getelementptr inbounds %struct.Elf32_Shdr, ptr %486, i64 %492, i32 4
  %505 = load i32, ptr %504, align 4, !tbaa !39
  %506 = zext i32 %505 to i64
  %507 = getelementptr i8, ptr %493, i64 %506
  %508 = getelementptr i8, ptr %507, i64 %503
  %509 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %508, ptr noundef nonnull dereferenceable(12) @.str.58, i64 noundef 11) #29
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %540, label %511

511:                                              ; preds = %502
  %512 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %508, ptr noundef nonnull dereferenceable(16) @.str.59, i64 noundef 15) #29
  %513 = icmp eq i32 %512, 0
  %514 = select i1 %513, i32 1, i32 2
  br label %540

515:                                              ; preds = %456
  br i1 %469, label %518, label %516

516:                                              ; preds = %515
  %517 = or i32 %467, -65536
  br label %534

518:                                              ; preds = %515
  %519 = icmp eq i16 %466, -1
  br i1 %519, label %520, label %529

520:                                              ; preds = %518
  %521 = load ptr, ptr %450, align 8, !tbaa !49
  %522 = load ptr, ptr %188, align 8, !tbaa !46
  %523 = ptrtoint ptr %457 to i64
  %524 = ptrtoint ptr %522 to i64
  %525 = sub i64 %523, %524
  %526 = ashr exact i64 %525, 4
  %527 = getelementptr inbounds i32, ptr %521, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !21
  br label %529

529:                                              ; preds = %520, %518
  %530 = phi i32 [ %528, %520 ], [ %467, %518 ]
  %531 = load i16, ptr %451, align 8, !tbaa !44
  %532 = zext i16 %531 to i32
  %533 = icmp eq i32 %530, %532
  br i1 %533, label %540, label %534

534:                                              ; preds = %529, %516
  %535 = phi i32 [ %517, %516 ], [ %530, %529 ]
  %536 = load i16, ptr %452, align 2, !tbaa !45
  %537 = zext i16 %536 to i32
  %538 = icmp eq i32 %535, %537
  %539 = select i1 %538, i32 1, i32 2
  br label %540

540:                                              ; preds = %534, %529, %511, %502
  %541 = phi i32 [ 0, %502 ], [ %514, %511 ], [ 0, %529 ], [ %539, %534 ]
  switch i16 %466, label %634 [
    i16 -14, label %542
    i16 0, label %546
  ]

542:                                              ; preds = %540
  %543 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(11) @.str.52, i64 noundef 10) #29
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %648, label %545

545:                                              ; preds = %542
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.53, ptr noundef %461, ptr noundef nonnull %227) #25
  br label %648

546:                                              ; preds = %540
  %547 = getelementptr inbounds %struct.Elf32_Sym, ptr %457, i64 0, i32 3
  %548 = load i8, ptr %547, align 4, !tbaa !58
  %549 = lshr i8 %548, 4
  %550 = add nsw i8 %549, -1
  %551 = icmp ult i8 %550, 2
  br i1 %551, label %552, label %648

552:                                              ; preds = %546
  %553 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(14) @.str.60) #29
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %648, label %555

555:                                              ; preds = %552
  %556 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(22) @.str.61) #29
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %648, label %558

558:                                              ; preds = %555
  %559 = load ptr, ptr %32, align 8, !tbaa !27
  %560 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %559, i64 0, i32 2
  %561 = load i16, ptr %560, align 2, !tbaa !59
  switch i16 %561, label %616 [
    i16 20, label %562
    i16 21, label %580
    i16 2, label %595
    i16 43, label %595
  ]

562:                                              ; preds = %558
  %563 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(10) @.str.62, i64 noundef 9) #29
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %648, label %565

565:                                              ; preds = %562
  %566 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(10) @.str.63, i64 noundef 9) #29
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %648, label %568

568:                                              ; preds = %565
  %569 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(12) @.str.64, i64 noundef 11) #29
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %648, label %571

571:                                              ; preds = %568
  %572 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(12) @.str.65, i64 noundef 11) #29
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %648, label %574

574:                                              ; preds = %571
  %575 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(9) @.str.66, i64 noundef 8) #29
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %648, label %577

577:                                              ; preds = %574
  %578 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(9) @.str.67, i64 noundef 8) #29
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %648, label %616

580:                                              ; preds = %558
  %581 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(11) @.str.68, i64 noundef 10) #29
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %648, label %583

583:                                              ; preds = %580
  %584 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(11) @.str.69, i64 noundef 10) #29
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %648, label %586

586:                                              ; preds = %583
  %587 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(9) @.str.66, i64 noundef 8) #29
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %648, label %589

589:                                              ; preds = %586
  %590 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(9) @.str.67, i64 noundef 8) #29
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %648, label %592

592:                                              ; preds = %589
  %593 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(6) @.str.70) #29
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %648, label %616

595:                                              ; preds = %558, %558
  %596 = and i8 %548, 15
  %597 = icmp eq i8 %596, 13
  br i1 %597, label %648, label %598

598:                                              ; preds = %595
  %599 = load i8, ptr %461, align 1, !tbaa !14
  %600 = icmp eq i8 %599, 46
  br i1 %600, label %601, label %616

601:                                              ; preds = %598
  %602 = call noalias ptr @strdup(ptr noundef nonnull %461) #25
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %606

604:                                              ; preds = %601
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54) #25
  %605 = load i8, ptr %547, align 4, !tbaa !58
  br label %606

606:                                              ; preds = %604, %601
  %607 = phi i8 [ %548, %601 ], [ %605, %604 ]
  store i8 95, ptr %602, align 1, !tbaa !14
  %608 = tail call ptr @__ctype_toupper_loc() #32
  %609 = load ptr, ptr %608, align 8, !tbaa !5
  %610 = getelementptr inbounds i8, ptr %602, i64 1
  %611 = load i8, ptr %610, align 1, !tbaa !14
  %612 = sext i8 %611 to i64
  %613 = getelementptr inbounds i32, ptr %609, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !21
  %615 = trunc i32 %614 to i8
  store i8 %615, ptr %610, align 1, !tbaa !14
  br label %616

616:                                              ; preds = %606, %598, %592, %577, %558
  %617 = phi i8 [ %607, %606 ], [ %548, %598 ], [ %548, %592 ], [ %548, %577 ], [ %548, %558 ]
  %618 = phi ptr [ %602, %606 ], [ %461, %598 ], [ %461, %592 ], [ %461, %577 ], [ %461, %558 ]
  %619 = and i8 %617, -16
  %620 = icmp eq i8 %619, 32
  %621 = load ptr, ptr %453, align 8, !tbaa !5
  %622 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %618) #29
  %623 = add i64 %622, 41
  %624 = call noalias ptr @malloc(i64 noundef %623) #28
  %625 = icmp eq ptr %624, null
  br i1 %625, label %626, label %627

626:                                              ; preds = %616
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #25
  br label %627

627:                                              ; preds = %626, %616
  %628 = getelementptr inbounds i8, ptr %624, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %628, i8 0, i64 32, i1 false) #25
  %629 = getelementptr inbounds %struct.symbol, ptr %624, i64 0, i32 7
  %630 = call ptr @strcpy(ptr noundef nonnull %629, ptr noundef nonnull dereferenceable(1) %618) #25
  %631 = getelementptr inbounds %struct.symbol, ptr %624, i64 0, i32 5
  %632 = zext i1 %620 to i8
  store ptr %621, ptr %624, align 8, !tbaa !5
  %633 = or i8 %632, 2
  store i8 %633, ptr %631, align 8
  store ptr %624, ptr %453, align 8, !tbaa !5
  br label %648

634:                                              ; preds = %540
  %635 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(11) @.str.55, i64 noundef 10) #29
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %640

637:                                              ; preds = %634
  %638 = getelementptr inbounds i8, ptr %461, i64 10
  %639 = call fastcc ptr @sym_add_exported(ptr noundef nonnull %638, ptr noundef nonnull %222, i32 noundef %541) #25
  br label %640

640:                                              ; preds = %637, %634
  %641 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(12) @.str.56) #29
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %644

643:                                              ; preds = %640
  store i32 1, ptr %454, align 4, !tbaa !21
  br label %644

644:                                              ; preds = %643, %640
  %645 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %461, ptr noundef nonnull dereferenceable(15) @.str.57) #29
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %648

647:                                              ; preds = %644
  store i32 1, ptr %455, align 8, !tbaa !21
  br label %648

648:                                              ; preds = %647, %644, %627, %595, %592, %589, %586, %583, %580, %577, %574, %571, %568, %565, %562, %555, %552, %546, %545, %542
  call void @handle_moddevtable(ptr noundef nonnull %222, ptr noundef nonnull %5, ptr noundef nonnull %457, ptr noundef %461) #25
  %649 = getelementptr inbounds %struct.Elf32_Sym, ptr %457, i64 1
  %650 = load ptr, ptr %445, align 8, !tbaa !47
  %651 = icmp ult ptr %649, %650
  br i1 %651, label %456, label %652

652:                                              ; preds = %648
  %653 = load ptr, ptr %188, align 8, !tbaa !46
  br label %654

654:                                              ; preds = %652, %443
  %655 = phi ptr [ %650, %652 ], [ %446, %443 ]
  %656 = phi ptr [ %653, %652 ], [ %444, %443 ]
  %657 = icmp ult ptr %656, %655
  br i1 %657, label %658, label %819

658:                                              ; preds = %654
  %659 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 7
  %660 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 12
  br label %661

661:                                              ; preds = %813, %658
  %662 = phi ptr [ %656, %658 ], [ %814, %813 ]
  %663 = load ptr, ptr %659, align 8, !tbaa !48
  %664 = load i32, ptr %662, align 4, !tbaa !52
  %665 = zext i32 %664 to i64
  %666 = getelementptr inbounds i8, ptr %663, i64 %665
  %667 = call fastcc ptr @remove_dot(ptr noundef %666)
  %668 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %666, ptr noundef nonnull dereferenceable(13) @.str.30, i64 noundef 12) #29
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %716

670:                                              ; preds = %661
  %671 = getelementptr inbounds i8, ptr %666, i64 12
  %672 = getelementptr inbounds %struct.Elf32_Sym, ptr %662, i64 0, i32 5
  %673 = load i16, ptr %672, align 2, !tbaa !54
  %674 = zext i16 %673 to i32
  %675 = add i16 %673, 1
  %676 = icmp ult i16 %675, -255
  br i1 %676, label %679, label %677

677:                                              ; preds = %670
  %678 = or i32 %674, -65536
  br label %690

679:                                              ; preds = %670
  %680 = icmp eq i16 %673, -1
  br i1 %680, label %681, label %690

681:                                              ; preds = %679
  %682 = load ptr, ptr %660, align 8, !tbaa !49
  %683 = load ptr, ptr %188, align 8, !tbaa !46
  %684 = ptrtoint ptr %662 to i64
  %685 = ptrtoint ptr %683 to i64
  %686 = sub i64 %684, %685
  %687 = ashr exact i64 %686, 4
  %688 = getelementptr inbounds i32, ptr %682, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !21
  br label %690

690:                                              ; preds = %681, %679, %677
  %691 = phi i32 [ %678, %677 ], [ %689, %681 ], [ %674, %679 ]
  %692 = getelementptr inbounds %struct.Elf32_Sym, ptr %662, i64 0, i32 1
  %693 = load i32, ptr %692, align 4, !tbaa !60
  %694 = zext i32 %693 to i64
  %695 = load ptr, ptr %56, align 8, !tbaa !33
  %696 = zext i32 %691 to i64
  %697 = load ptr, ptr %32, align 8, !tbaa !27
  %698 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %697, i64 0, i32 1
  %699 = load i16, ptr %698, align 4, !tbaa !56
  %700 = icmp eq i16 %699, 1
  br i1 %700, label %706, label %701

701:                                              ; preds = %690
  %702 = getelementptr inbounds %struct.Elf32_Shdr, ptr %695, i64 %696, i32 3
  %703 = load i32, ptr %702, align 4, !tbaa !57
  %704 = zext i32 %703 to i64
  %705 = sub nsw i64 %694, %704
  br label %706

706:                                              ; preds = %701, %690
  %707 = phi i64 [ %705, %701 ], [ %694, %690 ]
  %708 = getelementptr inbounds %struct.Elf32_Shdr, ptr %695, i64 %696, i32 4
  %709 = load i32, ptr %708, align 4, !tbaa !39
  %710 = zext i32 %709 to i64
  %711 = getelementptr i8, ptr %697, i64 %710
  %712 = getelementptr i8, ptr %711, i64 %707
  %713 = load i8, ptr %712, align 1, !tbaa !14
  %714 = icmp eq i8 %713, 0
  %715 = select i1 %714, ptr null, ptr %712
  call fastcc void @sym_update_namespace(ptr noundef nonnull %671, ptr noundef %715)
  br label %716

716:                                              ; preds = %706, %661
  %717 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %666, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #29
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %813

719:                                              ; preds = %716
  %720 = getelementptr inbounds i8, ptr %666, i64 6
  %721 = getelementptr inbounds %struct.Elf32_Sym, ptr %662, i64 0, i32 5
  %722 = load i16, ptr %721, align 2, !tbaa !54
  switch i16 %722, label %729 [
    i16 0, label %723
    i16 -15, label %727
  ]

723:                                              ; preds = %719
  %724 = load i32, ptr %232, align 4, !tbaa !21
  %725 = icmp eq i32 %724, 0
  %726 = select i1 %725, ptr @.str.18, ptr @.str.17
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull %720, ptr noundef nonnull %227, ptr noundef nonnull %726, ptr noundef nonnull %720) #25
  br label %813

727:                                              ; preds = %719
  %728 = getelementptr inbounds %struct.Elf32_Sym, ptr %662, i64 0, i32 1
  br label %769

729:                                              ; preds = %719
  %730 = zext i16 %722 to i32
  %731 = add i16 %722, 1
  %732 = icmp ult i16 %731, -255
  br i1 %732, label %735, label %733

733:                                              ; preds = %729
  %734 = or i32 %730, -65536
  br label %746

735:                                              ; preds = %729
  %736 = icmp eq i16 %722, -1
  br i1 %736, label %737, label %746

737:                                              ; preds = %735
  %738 = load ptr, ptr %660, align 8, !tbaa !49
  %739 = load ptr, ptr %188, align 8, !tbaa !46
  %740 = ptrtoint ptr %662 to i64
  %741 = ptrtoint ptr %739 to i64
  %742 = sub i64 %740, %741
  %743 = ashr exact i64 %742, 4
  %744 = getelementptr inbounds i32, ptr %738, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !21
  br label %746

746:                                              ; preds = %737, %735, %733
  %747 = phi i32 [ %734, %733 ], [ %745, %737 ], [ %730, %735 ]
  %748 = getelementptr inbounds %struct.Elf32_Sym, ptr %662, i64 0, i32 1
  %749 = load i32, ptr %748, align 4, !tbaa !60
  %750 = zext i32 %749 to i64
  %751 = load ptr, ptr %56, align 8, !tbaa !33
  %752 = zext i32 %747 to i64
  %753 = load ptr, ptr %32, align 8, !tbaa !27
  %754 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %753, i64 0, i32 1
  %755 = load i16, ptr %754, align 4, !tbaa !56
  %756 = icmp eq i16 %755, 1
  br i1 %756, label %762, label %757

757:                                              ; preds = %746
  %758 = getelementptr inbounds %struct.Elf32_Shdr, ptr %751, i64 %752, i32 3
  %759 = load i32, ptr %758, align 4, !tbaa !57
  %760 = zext i32 %759 to i64
  %761 = sub nsw i64 %750, %760
  br label %762

762:                                              ; preds = %757, %746
  %763 = phi i64 [ %761, %757 ], [ %750, %746 ]
  %764 = getelementptr inbounds %struct.Elf32_Shdr, ptr %751, i64 %752, i32 4
  %765 = load i32, ptr %764, align 4, !tbaa !39
  %766 = zext i32 %765 to i64
  %767 = getelementptr i8, ptr %753, i64 %766
  %768 = getelementptr i8, ptr %767, i64 %763
  br label %769

769:                                              ; preds = %762, %727
  %770 = phi ptr [ %728, %727 ], [ %768, %762 ]
  %771 = load i32, ptr %770, align 4, !tbaa !21
  %772 = load i8, ptr %720, align 1, !tbaa !14
  %773 = icmp eq i8 %772, 46
  %774 = zext i1 %773 to i64
  %775 = getelementptr i8, ptr %720, i64 %774
  %776 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %775) #29
  %777 = trunc i64 %776 to i32
  %778 = mul i32 %777, 596579247
  %779 = load i8, ptr %775, align 1, !tbaa !14
  %780 = icmp eq i8 %779, 0
  br i1 %780, label %795, label %781

781:                                              ; preds = %781, %769
  %782 = phi i8 [ %793, %781 ], [ %779, %769 ]
  %783 = phi i32 [ %790, %781 ], [ 0, %769 ]
  %784 = phi i32 [ %789, %781 ], [ %778, %769 ]
  %785 = zext i8 %782 to i32
  %786 = mul i32 %783, 5
  %787 = urem i32 %786, 24
  %788 = shl nuw nsw i32 %785, %787
  %789 = add i32 %788, %784
  %790 = add i32 %783, 1
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds i8, ptr %775, i64 %791
  %793 = load i8, ptr %792, align 1, !tbaa !14
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %795, label %781

795:                                              ; preds = %781, %769
  %796 = phi i32 [ %778, %769 ], [ %789, %781 ]
  %797 = mul i32 %796, 619
  %798 = add i32 %797, 57
  %799 = and i32 %798, 1023
  %800 = zext i32 %799 to i64
  %801 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %800
  br label %802

802:                                              ; preds = %806, %795
  %803 = phi ptr [ %801, %795 ], [ %804, %806 ]
  %804 = load ptr, ptr %803, align 8, !tbaa !5
  %805 = icmp eq ptr %804, null
  br i1 %805, label %813, label %806

806:                                              ; preds = %802
  %807 = getelementptr inbounds %struct.symbol, ptr %804, i64 0, i32 7
  %808 = call i32 @strcmp(ptr noundef nonnull %807, ptr noundef nonnull %775) #29
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %802

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.symbol, ptr %804, i64 0, i32 2
  store i32 %771, ptr %811, align 8, !tbaa !21
  %812 = getelementptr inbounds %struct.symbol, ptr %804, i64 0, i32 3
  store i32 1, ptr %812, align 4, !tbaa !21
  br label %813

813:                                              ; preds = %810, %802, %723, %716
  %814 = getelementptr inbounds %struct.Elf32_Sym, ptr %662, i64 1
  %815 = load ptr, ptr %445, align 8, !tbaa !47
  %816 = icmp ult ptr %814, %815
  br i1 %816, label %661, label %817

817:                                              ; preds = %813
  %818 = load ptr, ptr %188, align 8, !tbaa !46
  br label %819

819:                                              ; preds = %817, %654
  %820 = phi ptr [ %815, %817 ], [ %655, %654 ]
  %821 = phi ptr [ %818, %817 ], [ %656, %654 ]
  %822 = icmp ult ptr %821, %820
  br i1 %822, label %823, label %884

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 7
  br label %825

825:                                              ; preds = %880, %823
  %826 = phi ptr [ %821, %823 ], [ %881, %880 ]
  %827 = getelementptr inbounds %struct.Elf32_Sym, ptr %826, i64 0, i32 3
  %828 = load i8, ptr %827, align 4, !tbaa !58
  %829 = lshr i8 %828, 4
  %830 = add nsw i8 %829, -1
  %831 = icmp ult i8 %830, 2
  br i1 %831, label %832, label %880

832:                                              ; preds = %825
  %833 = load ptr, ptr %824, align 8, !tbaa !48
  %834 = load i32, ptr %826, align 4, !tbaa !52
  %835 = zext i32 %834 to i64
  %836 = getelementptr inbounds i8, ptr %833, i64 %835
  %837 = call fastcc ptr @remove_dot(ptr noundef %836)
  %838 = load i8, ptr %836, align 1, !tbaa !14
  %839 = icmp eq i8 %838, 46
  %840 = zext i1 %839 to i64
  %841 = getelementptr i8, ptr %836, i64 %840
  %842 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %841) #29
  %843 = trunc i64 %842 to i32
  %844 = mul i32 %843, 596579247
  %845 = load i8, ptr %841, align 1, !tbaa !14
  %846 = icmp eq i8 %845, 0
  br i1 %846, label %861, label %847

847:                                              ; preds = %847, %832
  %848 = phi i8 [ %859, %847 ], [ %845, %832 ]
  %849 = phi i32 [ %856, %847 ], [ 0, %832 ]
  %850 = phi i32 [ %855, %847 ], [ %844, %832 ]
  %851 = zext i8 %848 to i32
  %852 = mul i32 %849, 5
  %853 = urem i32 %852, 24
  %854 = shl nuw nsw i32 %851, %853
  %855 = add i32 %854, %850
  %856 = add i32 %849, 1
  %857 = zext i32 %856 to i64
  %858 = getelementptr inbounds i8, ptr %841, i64 %857
  %859 = load i8, ptr %858, align 1, !tbaa !14
  %860 = icmp eq i8 %859, 0
  br i1 %860, label %861, label %847

861:                                              ; preds = %847, %832
  %862 = phi i32 [ %844, %832 ], [ %855, %847 ]
  %863 = mul i32 %862, 619
  %864 = add i32 %863, 57
  %865 = and i32 %864, 1023
  %866 = zext i32 %865 to i64
  %867 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %866
  br label %868

868:                                              ; preds = %872, %861
  %869 = phi ptr [ %867, %861 ], [ %870, %872 ]
  %870 = load ptr, ptr %869, align 8, !tbaa !5
  %871 = icmp eq ptr %870, null
  br i1 %871, label %880, label %872

872:                                              ; preds = %868
  %873 = getelementptr inbounds %struct.symbol, ptr %870, i64 0, i32 7
  %874 = call i32 @strcmp(ptr noundef nonnull %873, ptr noundef nonnull %841) #29
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %876, label %868

876:                                              ; preds = %872
  %877 = getelementptr inbounds %struct.symbol, ptr %870, i64 0, i32 5
  %878 = load i8, ptr %877, align 8
  %879 = and i8 %878, -3
  store i8 %879, ptr %877, align 8
  br label %880

880:                                              ; preds = %876, %868, %825
  %881 = getelementptr inbounds %struct.Elf32_Sym, ptr %826, i64 1
  %882 = load ptr, ptr %445, align 8, !tbaa !47
  %883 = icmp ult ptr %881, %882
  br i1 %883, label %825, label %884

884:                                              ; preds = %880, %819
  %885 = load ptr, ptr %56, align 8, !tbaa !33
  %886 = load i32, ptr %70, align 4, !tbaa !51
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %1226, label %888

888:                                              ; preds = %884
  %889 = getelementptr inbounds %struct.Elf32_Rela, ptr %2, i64 0, i32 1
  %890 = getelementptr inbounds %struct.Elf32_Rela, ptr %2, i64 0, i32 2
  %891 = getelementptr inbounds %struct.Elf32_Rela, ptr %3, i64 0, i32 1
  %892 = getelementptr inbounds %struct.Elf32_Rela, ptr %3, i64 0, i32 2
  br label %893

893:                                              ; preds = %1224, %888
  %894 = phi ptr [ %885, %888 ], [ %1225, %1224 ]
  %895 = phi i64 [ 0, %888 ], [ %1220, %1224 ]
  %896 = getelementptr inbounds %struct.Elf32_Shdr, ptr %894, i64 %895
  %897 = load i32, ptr %80, align 8, !tbaa !55
  %898 = load i32, ptr %896, align 4, !tbaa !41
  %899 = zext i32 %898 to i64
  %900 = zext i32 %897 to i64
  %901 = load ptr, ptr %32, align 8, !tbaa !27
  %902 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %901, i64 0, i32 1
  %903 = load i16, ptr %902, align 4, !tbaa !56
  %904 = icmp eq i16 %903, 1
  br i1 %904, label %910, label %905

905:                                              ; preds = %893
  %906 = getelementptr inbounds %struct.Elf32_Shdr, ptr %894, i64 %900, i32 3
  %907 = load i32, ptr %906, align 4, !tbaa !57
  %908 = zext i32 %907 to i64
  %909 = sub nsw i64 %899, %908
  br label %910

910:                                              ; preds = %905, %893
  %911 = phi i64 [ %909, %905 ], [ %899, %893 ]
  %912 = getelementptr inbounds %struct.Elf32_Shdr, ptr %894, i64 %900, i32 4
  %913 = load i32, ptr %912, align 4, !tbaa !39
  %914 = zext i32 %913 to i64
  %915 = getelementptr i8, ptr %901, i64 %914
  %916 = getelementptr i8, ptr %915, i64 %911
  %917 = getelementptr inbounds %struct.Elf32_Shdr, ptr %894, i64 %895, i32 1
  %918 = load i32, ptr %917, align 4, !tbaa !40
  %919 = icmp eq i32 %918, 1
  br i1 %919, label %920, label %929

920:                                              ; preds = %910
  %921 = getelementptr inbounds %struct.Elf32_Shdr, ptr %894, i64 %895, i32 2
  %922 = load i32, ptr %921, align 4, !tbaa !61
  %923 = and i32 %922, 2
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %929

925:                                              ; preds = %920
  %926 = call fastcc i32 @match(ptr noundef %916, ptr noundef nonnull @section_white_list) #25
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %929

928:                                              ; preds = %925
  call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef %0, ptr noundef %916) #25
  br label %929

929:                                              ; preds = %928, %925, %920, %910
  %930 = getelementptr inbounds %struct.Elf32_Shdr, ptr %885, i64 %895, i32 1
  %931 = load i32, ptr %930, align 4, !tbaa !40
  switch i32 %931, label %1219 [
    i32 4, label %932
    i32 9, label %1067
  ]

932:                                              ; preds = %929
  %933 = load ptr, ptr %56, align 8, !tbaa !33
  %934 = getelementptr inbounds %struct.Elf32_Shdr, ptr %933, i64 %895
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %935 = load ptr, ptr %32, align 8, !tbaa !27
  %936 = getelementptr inbounds %struct.Elf32_Shdr, ptr %933, i64 %895, i32 4
  %937 = load i32, ptr %936, align 4, !tbaa !39
  %938 = zext i32 %937 to i64
  %939 = getelementptr i8, ptr %935, i64 %938
  %940 = getelementptr inbounds %struct.Elf32_Shdr, ptr %933, i64 %895, i32 5
  %941 = load i32, ptr %940, align 4, !tbaa !35
  %942 = zext i32 %941 to i64
  %943 = getelementptr i8, ptr %939, i64 %942
  %944 = load i32, ptr %80, align 8, !tbaa !55
  %945 = load i32, ptr %934, align 4, !tbaa !41
  %946 = zext i32 %945 to i64
  %947 = zext i32 %944 to i64
  %948 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %935, i64 0, i32 1
  %949 = load i16, ptr %948, align 4, !tbaa !56
  %950 = icmp eq i16 %949, 1
  br i1 %950, label %956, label %951

951:                                              ; preds = %932
  %952 = getelementptr inbounds %struct.Elf32_Shdr, ptr %933, i64 %947, i32 3
  %953 = load i32, ptr %952, align 4, !tbaa !57
  %954 = zext i32 %953 to i64
  %955 = sub nsw i64 %946, %954
  br label %956

956:                                              ; preds = %951, %932
  %957 = phi i64 [ %955, %951 ], [ %946, %932 ]
  %958 = getelementptr inbounds %struct.Elf32_Shdr, ptr %933, i64 %947, i32 4
  %959 = load i32, ptr %958, align 4, !tbaa !39
  %960 = zext i32 %959 to i64
  %961 = getelementptr i8, ptr %935, i64 5
  %962 = getelementptr i8, ptr %961, i64 %960
  %963 = getelementptr inbounds i8, ptr %962, i64 %957
  %964 = call fastcc i32 @match(ptr noundef nonnull %963, ptr noundef nonnull @section_white_list) #25
  %965 = icmp eq i32 %964, 0
  %966 = icmp ult ptr %939, %943
  %967 = select i1 %965, i1 %966, i1 false
  br i1 %967, label %968, label %1066

968:                                              ; preds = %956
  %969 = load i32, ptr %939, align 4, !tbaa !62
  store i32 %969, ptr %3, align 4, !tbaa !62
  %970 = getelementptr inbounds %struct.Elf32_Rela, ptr %939, i64 0, i32 1
  %971 = load i32, ptr %970, align 4, !tbaa !64
  store i32 %971, ptr %891, align 4, !tbaa !64
  %972 = lshr i32 %971, 8
  %973 = getelementptr inbounds %struct.Elf32_Rela, ptr %939, i64 0, i32 2
  %974 = load i32, ptr %973, align 4, !tbaa !65
  store i32 %974, ptr %892, align 4, !tbaa !65
  %975 = load ptr, ptr %32, align 8, !tbaa !27
  %976 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %975, i64 0, i32 2
  %977 = load i16, ptr %976, align 2, !tbaa !59
  %978 = icmp eq i16 %977, 243
  br i1 %978, label %979, label %985

979:                                              ; preds = %968
  %980 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %963) #29
  %981 = icmp eq i32 %980, 0
  %982 = and i32 %971, 255
  %983 = icmp eq i32 %982, 39
  %984 = select i1 %981, i1 %983, i1 false
  br i1 %984, label %994, label %985

985:                                              ; preds = %979, %968
  %986 = load ptr, ptr %188, align 8, !tbaa !46
  %987 = zext i32 %972 to i64
  %988 = getelementptr inbounds %struct.Elf32_Sym, ptr %986, i64 %987, i32 5
  %989 = load i16, ptr %988, align 2, !tbaa !54
  %990 = add i16 %989, 1
  %991 = icmp ult i16 %990, -255
  br i1 %991, label %992, label %994

992:                                              ; preds = %985
  %993 = getelementptr inbounds %struct.Elf32_Sym, ptr %986, i64 %987
  call fastcc void @check_section_mismatch(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %993, ptr noundef nonnull %963) #25
  br label %994

994:                                              ; preds = %992, %985, %979
  %995 = getelementptr inbounds %struct.Elf32_Rela, ptr %939, i64 1
  %996 = icmp ult ptr %995, %943
  br i1 %996, label %997, label %1066

997:                                              ; preds = %994
  %998 = load i32, ptr %995, align 4, !tbaa !62
  store i32 %998, ptr %3, align 4, !tbaa !62
  %999 = getelementptr inbounds %struct.Elf32_Rela, ptr %995, i64 0, i32 1
  %1000 = load i32, ptr %999, align 4, !tbaa !64
  store i32 %1000, ptr %891, align 4, !tbaa !64
  %1001 = lshr i32 %1000, 8
  %1002 = getelementptr inbounds %struct.Elf32_Rela, ptr %995, i64 0, i32 2
  %1003 = load i32, ptr %1002, align 4, !tbaa !65
  store i32 %1003, ptr %892, align 4, !tbaa !65
  %1004 = load ptr, ptr %32, align 8, !tbaa !27
  %1005 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1004, i64 0, i32 2
  %1006 = load i16, ptr %1005, align 2, !tbaa !59
  %1007 = icmp eq i16 %1006, 243
  br i1 %1007, label %1008, label %1014

1008:                                             ; preds = %997
  %1009 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %963) #29
  %1010 = icmp eq i32 %1009, 0
  %1011 = and i32 %1000, 255
  %1012 = icmp eq i32 %1011, 39
  %1013 = select i1 %1010, i1 %1012, i1 false
  br i1 %1013, label %1031, label %1014

1014:                                             ; preds = %1008, %997
  %1015 = load ptr, ptr %188, align 8, !tbaa !46
  %1016 = zext i32 %1001 to i64
  %1017 = getelementptr inbounds %struct.Elf32_Sym, ptr %1015, i64 %1016
  %1018 = getelementptr inbounds %struct.Elf32_Sym, ptr %1015, i64 %1016, i32 5
  %1019 = load i16, ptr %1018, align 2, !tbaa !54
  %1020 = add i16 %1019, 1
  %1021 = icmp ult i16 %1020, -255
  br i1 %1021, label %1022, label %1031

1022:                                             ; preds = %1014
  %1023 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %963) #29
  %1024 = icmp eq i32 %1023, 0
  %1025 = load i32, ptr @extable_entry_size, align 4
  %1026 = icmp eq i32 %1025, 0
  %1027 = select i1 %1024, i1 %1026, i1 false
  br i1 %1027, label %1028, label %1030

1028:                                             ; preds = %1022
  %1029 = shl i32 %998, 1
  store i32 %1029, ptr @extable_entry_size, align 4, !tbaa !21
  br label %1030

1030:                                             ; preds = %1028, %1022
  call fastcc void @check_section_mismatch(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1017, ptr noundef nonnull %963) #25
  br label %1031

1031:                                             ; preds = %1030, %1014, %1008
  %1032 = getelementptr inbounds %struct.Elf32_Rela, ptr %939, i64 2
  %1033 = icmp ult ptr %1032, %943
  br i1 %1033, label %1034, label %1066

1034:                                             ; preds = %1062, %1031
  %1035 = phi ptr [ %1064, %1062 ], [ %1032, %1031 ]
  %1036 = phi i64 [ %1063, %1062 ], [ 2, %1031 ]
  %1037 = load i32, ptr %1035, align 4, !tbaa !62
  store i32 %1037, ptr %3, align 4, !tbaa !62
  %1038 = getelementptr inbounds %struct.Elf32_Rela, ptr %1035, i64 0, i32 1
  %1039 = load i32, ptr %1038, align 4, !tbaa !64
  store i32 %1039, ptr %891, align 4, !tbaa !64
  %1040 = lshr i32 %1039, 8
  %1041 = getelementptr inbounds %struct.Elf32_Rela, ptr %1035, i64 0, i32 2
  %1042 = load i32, ptr %1041, align 4, !tbaa !65
  store i32 %1042, ptr %892, align 4, !tbaa !65
  %1043 = load ptr, ptr %32, align 8, !tbaa !27
  %1044 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1043, i64 0, i32 2
  %1045 = load i16, ptr %1044, align 2, !tbaa !59
  %1046 = icmp eq i16 %1045, 243
  br i1 %1046, label %1047, label %1053

1047:                                             ; preds = %1034
  %1048 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %963) #29
  %1049 = icmp eq i32 %1048, 0
  %1050 = and i32 %1039, 255
  %1051 = icmp eq i32 %1050, 39
  %1052 = select i1 %1049, i1 %1051, i1 false
  br i1 %1052, label %1062, label %1053

1053:                                             ; preds = %1047, %1034
  %1054 = load ptr, ptr %188, align 8, !tbaa !46
  %1055 = zext i32 %1040 to i64
  %1056 = getelementptr inbounds %struct.Elf32_Sym, ptr %1054, i64 %1055, i32 5
  %1057 = load i16, ptr %1056, align 2, !tbaa !54
  %1058 = add i16 %1057, 1
  %1059 = icmp ult i16 %1058, -255
  br i1 %1059, label %1060, label %1062

1060:                                             ; preds = %1053
  %1061 = getelementptr inbounds %struct.Elf32_Sym, ptr %1054, i64 %1055
  call fastcc void @check_section_mismatch(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1061, ptr noundef nonnull %963) #25
  br label %1062

1062:                                             ; preds = %1060, %1053, %1047
  %1063 = add nuw nsw i64 %1036, 1
  %1064 = getelementptr inbounds %struct.Elf32_Rela, ptr %939, i64 %1063
  %1065 = icmp ult ptr %1064, %943
  br i1 %1065, label %1034, label %1066, !llvm.loop !66

1066:                                             ; preds = %1062, %1031, %994, %956
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  br label %1219

1067:                                             ; preds = %929
  %1068 = load ptr, ptr %56, align 8, !tbaa !33
  %1069 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %895
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #25
  %1070 = load ptr, ptr %32, align 8, !tbaa !27
  %1071 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %895, i32 4
  %1072 = load i32, ptr %1071, align 4, !tbaa !39
  %1073 = zext i32 %1072 to i64
  %1074 = getelementptr i8, ptr %1070, i64 %1073
  %1075 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %895, i32 5
  %1076 = load i32, ptr %1075, align 4, !tbaa !35
  %1077 = zext i32 %1076 to i64
  %1078 = getelementptr i8, ptr %1074, i64 %1077
  %1079 = load i32, ptr %80, align 8, !tbaa !55
  %1080 = load i32, ptr %1069, align 4, !tbaa !41
  %1081 = zext i32 %1080 to i64
  %1082 = zext i32 %1079 to i64
  %1083 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1070, i64 0, i32 1
  %1084 = load i16, ptr %1083, align 4, !tbaa !56
  %1085 = icmp eq i16 %1084, 1
  br i1 %1085, label %1091, label %1086

1086:                                             ; preds = %1067
  %1087 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %1082, i32 3
  %1088 = load i32, ptr %1087, align 4, !tbaa !57
  %1089 = zext i32 %1088 to i64
  %1090 = sub nsw i64 %1081, %1089
  br label %1091

1091:                                             ; preds = %1086, %1067
  %1092 = phi i64 [ %1090, %1086 ], [ %1081, %1067 ]
  %1093 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %1082, i32 4
  %1094 = load i32, ptr %1093, align 4, !tbaa !39
  %1095 = zext i32 %1094 to i64
  %1096 = getelementptr i8, ptr %1070, i64 4
  %1097 = getelementptr i8, ptr %1096, i64 %1095
  %1098 = getelementptr inbounds i8, ptr %1097, i64 %1092
  %1099 = call fastcc i32 @match(ptr noundef nonnull %1098, ptr noundef nonnull @section_white_list) #25
  %1100 = icmp eq i32 %1099, 0
  %1101 = icmp ult ptr %1074, %1078
  %1102 = select i1 %1100, i1 %1101, i1 false
  br i1 %1102, label %1103, label %1218

1103:                                             ; preds = %1091
  %1104 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %895, i32 7
  %1105 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1068, i64 %895, i32 3
  br label %1106

1106:                                             ; preds = %1214, %1103
  %1107 = phi ptr [ %1074, %1103 ], [ %1216, %1214 ]
  %1108 = phi i64 [ 0, %1103 ], [ %1215, %1214 ]
  %1109 = load i32, ptr %1107, align 4, !tbaa !68
  store i32 %1109, ptr %2, align 4, !tbaa !62
  %1110 = getelementptr inbounds %struct.Elf32_Rel, ptr %1107, i64 0, i32 1
  %1111 = load i32, ptr %1110, align 4, !tbaa !70
  store i32 %1111, ptr %889, align 4, !tbaa !64
  %1112 = lshr i32 %1111, 8
  store i32 0, ptr %890, align 4, !tbaa !65
  %1113 = load ptr, ptr %32, align 8, !tbaa !27
  %1114 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1113, i64 0, i32 2
  %1115 = load i16, ptr %1114, align 2, !tbaa !59
  switch i16 %1115, label %1195 [
    i16 3, label %1116
    i16 40, label %1145
    i16 8, label %1163
  ]

1116:                                             ; preds = %1106
  %1117 = load i32, ptr %1104, align 4, !tbaa !71
  %1118 = zext i32 %1109 to i64
  %1119 = load ptr, ptr %56, align 8, !tbaa !33
  %1120 = zext i32 %1117 to i64
  %1121 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1113, i64 0, i32 1
  %1122 = load i16, ptr %1121, align 4, !tbaa !56
  %1123 = icmp eq i16 %1122, 1
  br i1 %1123, label %1129, label %1124

1124:                                             ; preds = %1116
  %1125 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1119, i64 %1120, i32 3
  %1126 = load i32, ptr %1125, align 4, !tbaa !57
  %1127 = zext i32 %1126 to i64
  %1128 = sub nsw i64 %1118, %1127
  br label %1129

1129:                                             ; preds = %1124, %1116
  %1130 = phi i64 [ %1128, %1124 ], [ %1118, %1116 ]
  %1131 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1119, i64 %1120, i32 4
  %1132 = load i32, ptr %1131, align 4, !tbaa !39
  %1133 = zext i32 %1132 to i64
  %1134 = getelementptr i8, ptr %1113, i64 %1133
  %1135 = getelementptr i8, ptr %1134, i64 %1130
  %1136 = trunc i32 %1111 to i8
  switch i8 %1136, label %1195 [
    i8 1, label %1137
    i8 2, label %1139
  ]

1137:                                             ; preds = %1129
  %1138 = load i32, ptr %1135, align 4, !tbaa !21
  br label %1193

1139:                                             ; preds = %1129
  %1140 = load i32, ptr %1135, align 4, !tbaa !21
  %1141 = add i32 %1140, 4
  store i32 %1141, ptr %890, align 4, !tbaa !65
  %1142 = icmp eq i16 %1122, 2
  br i1 %1142, label %1143, label %1195

1143:                                             ; preds = %1139
  %1144 = add i32 %1141, %1109
  br label %1193

1145:                                             ; preds = %1106
  %1146 = trunc i32 %1111 to i8
  switch i8 %1146, label %1214 [
    i8 2, label %1147
    i8 1, label %1151
    i8 28, label %1151
    i8 29, label %1151
    i8 10, label %1151
    i8 30, label %1151
    i8 51, label %1151
  ]

1147:                                             ; preds = %1145
  %1148 = load ptr, ptr %188, align 8, !tbaa !46
  %1149 = zext i32 %1112 to i64
  %1150 = getelementptr inbounds %struct.Elf32_Sym, ptr %1148, i64 %1149
  br label %1159

1151:                                             ; preds = %1145, %1145, %1145, %1145, %1145, %1145
  %1152 = load i32, ptr %1071, align 4, !tbaa !39
  %1153 = zext i32 %1152 to i64
  %1154 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1113, i64 %1153
  %1155 = load i32, ptr %1105, align 4, !tbaa !57
  %1156 = sub i32 %1109, %1155
  %1157 = zext i32 %1156 to i64
  %1158 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1154, i64 %1157
  br label %1159

1159:                                             ; preds = %1151, %1147
  %1160 = phi ptr [ %1150, %1147 ], [ %1158, %1151 ]
  %1161 = ptrtoint ptr %1160 to i64
  %1162 = trunc i64 %1161 to i32
  br label %1193

1163:                                             ; preds = %1106
  %1164 = and i32 %1111, 255
  %1165 = load i32, ptr %1104, align 4, !tbaa !71
  %1166 = zext i32 %1109 to i64
  %1167 = load ptr, ptr %56, align 8, !tbaa !33
  %1168 = zext i32 %1165 to i64
  %1169 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %1113, i64 0, i32 1
  %1170 = load i16, ptr %1169, align 4, !tbaa !56
  %1171 = icmp eq i16 %1170, 1
  br i1 %1171, label %1177, label %1172

1172:                                             ; preds = %1163
  %1173 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1167, i64 %1168, i32 3
  %1174 = load i32, ptr %1173, align 4, !tbaa !57
  %1175 = zext i32 %1174 to i64
  %1176 = sub nsw i64 %1166, %1175
  br label %1177

1177:                                             ; preds = %1172, %1163
  %1178 = phi i64 [ %1176, %1172 ], [ %1166, %1163 ]
  %1179 = icmp eq i32 %1164, 5
  br i1 %1179, label %1214, label %1180

1180:                                             ; preds = %1177
  %1181 = getelementptr inbounds %struct.Elf32_Shdr, ptr %1167, i64 %1168, i32 4
  %1182 = load i32, ptr %1181, align 4, !tbaa !39
  %1183 = zext i32 %1182 to i64
  %1184 = getelementptr i8, ptr %1113, i64 %1183
  %1185 = getelementptr i8, ptr %1184, i64 %1178
  %1186 = load i32, ptr %1185, align 4, !tbaa !21
  %1187 = trunc i32 %1111 to i8
  switch i8 %1187, label %1195 [
    i8 6, label %1188
    i8 4, label %1190
    i8 2, label %1193
  ]

1188:                                             ; preds = %1180
  %1189 = and i32 %1186, 65535
  br label %1193

1190:                                             ; preds = %1180
  %1191 = shl i32 %1186, 2
  %1192 = and i32 %1191, 268435452
  br label %1193

1193:                                             ; preds = %1190, %1188, %1180, %1159, %1143, %1137
  %1194 = phi i32 [ %1162, %1159 ], [ %1144, %1143 ], [ %1138, %1137 ], [ %1189, %1188 ], [ %1192, %1190 ], [ %1186, %1180 ]
  store i32 %1194, ptr %890, align 4, !tbaa !65
  br label %1195

1195:                                             ; preds = %1193, %1180, %1139, %1129, %1106
  %1196 = load ptr, ptr %188, align 8, !tbaa !46
  %1197 = zext i32 %1112 to i64
  %1198 = getelementptr inbounds %struct.Elf32_Sym, ptr %1196, i64 %1197
  %1199 = getelementptr inbounds %struct.Elf32_Sym, ptr %1196, i64 %1197, i32 5
  %1200 = load i16, ptr %1199, align 2, !tbaa !54
  %1201 = add i16 %1200, 1
  %1202 = icmp ult i16 %1201, -255
  br i1 %1202, label %1203, label %1214

1203:                                             ; preds = %1195
  %1204 = icmp eq i64 %1108, 1
  br i1 %1204, label %1205, label %1213

1205:                                             ; preds = %1203
  %1206 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.93, ptr noundef nonnull %1098) #29
  %1207 = icmp eq i32 %1206, 0
  %1208 = load i32, ptr @extable_entry_size, align 4
  %1209 = icmp eq i32 %1208, 0
  %1210 = select i1 %1207, i1 %1209, i1 false
  br i1 %1210, label %1211, label %1213

1211:                                             ; preds = %1205
  %1212 = shl i32 %1109, 1
  store i32 %1212, ptr @extable_entry_size, align 4, !tbaa !21
  br label %1213

1213:                                             ; preds = %1211, %1205, %1203
  call fastcc void @check_section_mismatch(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %1198, ptr noundef nonnull %1098) #25
  br label %1214

1214:                                             ; preds = %1213, %1195, %1177, %1145
  %1215 = add nuw nsw i64 %1108, 1
  %1216 = getelementptr inbounds %struct.Elf32_Rel, ptr %1074, i64 %1215
  %1217 = icmp ult ptr %1216, %1078
  br i1 %1217, label %1106, label %1218

1218:                                             ; preds = %1214, %1091
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #25
  br label %1219

1219:                                             ; preds = %1218, %1066, %929
  %1220 = add nuw nsw i64 %895, 1
  %1221 = load i32, ptr %70, align 4, !tbaa !51
  %1222 = zext i32 %1221 to i64
  %1223 = icmp ult i64 %1220, %1222
  br i1 %1223, label %1224, label %1226

1224:                                             ; preds = %1219
  %1225 = load ptr, ptr %56, align 8, !tbaa !33
  br label %893

1226:                                             ; preds = %1219, %884
  %1227 = load i32, ptr %232, align 4, !tbaa !21
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1269

1229:                                             ; preds = %1226
  %1230 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 8
  %1231 = load ptr, ptr %1230, align 8, !tbaa !42
  %1232 = icmp eq ptr %1231, null
  br i1 %1232, label %1265, label %1233

1233:                                             ; preds = %1229
  %1234 = getelementptr inbounds %struct.elf_info, ptr %5, i64 0, i32 9
  %1235 = load i32, ptr %1234, align 8, !tbaa !43
  %1236 = zext i32 %1235 to i64
  br label %1237

1237:                                             ; preds = %1256, %1233
  %1238 = phi ptr [ %1231, %1233 ], [ %1258, %1256 ]
  %1239 = phi i64 [ %1236, %1233 ], [ %1257, %1256 ]
  %1240 = call i32 @strncmp(ptr noundef nonnull %1238, ptr noundef nonnull dereferenceable(8) @.str.32, i64 noundef 7) #29
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1242, label %1246

1242:                                             ; preds = %1237
  %1243 = getelementptr inbounds i8, ptr %1238, i64 7
  %1244 = load i8, ptr %1243, align 1, !tbaa !14
  %1245 = icmp eq i8 %1244, 61
  br i1 %1245, label %1267, label %1246

1246:                                             ; preds = %1242, %1237
  br label %1247

1247:                                             ; preds = %1252, %1246
  %1248 = phi i64 [ %1254, %1252 ], [ %1239, %1246 ]
  %1249 = phi ptr [ %1253, %1252 ], [ %1238, %1246 ]
  %1250 = load i8, ptr %1249, align 1, !tbaa !14
  %1251 = icmp eq i8 %1250, 0
  br i1 %1251, label %1261, label %1252

1252:                                             ; preds = %1247
  %1253 = getelementptr inbounds i8, ptr %1249, i64 1
  %1254 = add i64 %1248, -1
  %1255 = icmp ult i64 %1248, 2
  br i1 %1255, label %1265, label %1247

1256:                                             ; preds = %1261
  %1257 = add i64 %1262, -1
  %1258 = getelementptr inbounds i8, ptr %1263, i64 1
  %1259 = load i8, ptr %1258, align 1, !tbaa !14
  %1260 = icmp eq i8 %1259, 0
  br i1 %1260, label %1261, label %1237

1261:                                             ; preds = %1256, %1247
  %1262 = phi i64 [ %1257, %1256 ], [ %1248, %1247 ]
  %1263 = phi ptr [ %1258, %1256 ], [ %1249, %1247 ]
  %1264 = icmp ult i64 %1262, 2
  br i1 %1264, label %1265, label %1256

1265:                                             ; preds = %1261, %1252, %1229
  %1266 = load i1, ptr @all_versions, align 4
  br i1 %1266, label %1267, label %1269

1267:                                             ; preds = %1265, %1242
  %1268 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 9
  call void @get_src_version(ptr noundef nonnull %227, ptr noundef nonnull %1268, i32 noundef 24) #25
  br label %1269

1269:                                             ; preds = %1267, %1265, %1226
  %1270 = load ptr, ptr %32, align 8, !tbaa !27
  %1271 = load i64, ptr %5, align 8, !tbaa !30
  %1272 = call i32 @munmap(ptr noundef %1270, i64 noundef %1271) #25
  %1273 = load i1, ptr @modversions, align 4
  br i1 %1273, label %1274, label %1284

1274:                                             ; preds = %1269
  %1275 = getelementptr inbounds %struct.module, ptr %222, i64 0, i32 2
  %1276 = load ptr, ptr %1275, align 8, !tbaa !5
  %1277 = call noalias dereferenceable_or_null(54) ptr @malloc(i64 noundef 54) #28
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1274
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #25
  br label %1280

1280:                                             ; preds = %1279, %1274
  %1281 = getelementptr inbounds i8, ptr %1277, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1281, i8 0, i64 32, i1 false) #25
  %1282 = getelementptr inbounds %struct.symbol, ptr %1277, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %1282, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false) #25
  %1283 = getelementptr inbounds %struct.symbol, ptr %1277, i64 0, i32 5
  store ptr %1276, ptr %1277, align 8, !tbaa !5
  store i8 2, ptr %1283, align 8
  store ptr %1277, ptr %1275, align 8, !tbaa !5
  br label %1284

1284:                                             ; preds = %1280, %1269, %176, %58, %46, %42, %38, %35, %31, %24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #25
  ret void
}

declare void @add_moddevtable(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_if_changed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #25
  %4 = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.184)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @fileno(ptr noundef nonnull %4) #25
  %8 = call i32 @__fxstat(i32 noundef 1, i32 noundef %7, ptr noundef nonnull %3) #25
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !17
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %10
  %18 = call noalias ptr @malloc(i64 noundef %12) #28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.223) #25
  %21 = load i32, ptr %13, align 8, !tbaa !17
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i64 [ %15, %17 ], [ %22, %20 ]
  %25 = call i64 @fread(ptr noundef %18, i64 noundef 1, i64 noundef %24, ptr noundef nonnull %4)
  %26 = load i32, ptr %13, align 8, !tbaa !17
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 8, !tbaa !18
  %31 = call i32 @bcmp(ptr %18, ptr %30, i64 %25)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  call void @free(ptr noundef %18) #25
  %34 = call i32 @fclose(ptr noundef nonnull %4)
  br label %39

35:                                               ; preds = %29, %23
  call void @free(ptr noundef %18) #25
  br label %36

36:                                               ; preds = %35, %10, %6
  %37 = call i32 @fclose(ptr noundef nonnull %4)
  br label %38

38:                                               ; preds = %36, %2
  call fastcc void @write_buf(ptr noundef %0, ptr noundef %1)
  br label %39

39:                                               ; preds = %38, %33
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sym_add_exported(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr %0, align 1, !tbaa !14
  %5 = icmp eq i8 %4, 46
  %6 = zext i1 %5 to i64
  %7 = getelementptr i8, ptr %0, i64 %6
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %9 = trunc i64 %8 to i32
  %10 = mul i32 %9, 596579247
  %11 = load i8, ptr %7, align 1, !tbaa !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %13, %3
  %14 = phi i8 [ %25, %13 ], [ %11, %3 ]
  %15 = phi i32 [ %22, %13 ], [ 0, %3 ]
  %16 = phi i32 [ %21, %13 ], [ %10, %3 ]
  %17 = zext i8 %14 to i32
  %18 = mul i32 %15, 5
  %19 = urem i32 %18, 24
  %20 = shl nuw nsw i32 %17, %19
  %21 = add i32 %20, %16
  %22 = add i32 %15, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %7, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %13

27:                                               ; preds = %13, %3
  %28 = phi i32 [ %10, %3 ], [ %21, %13 ]
  %29 = mul i32 %28, 619
  %30 = add i32 %29, 57
  %31 = and i32 %30, 1023
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %32
  br label %34

34:                                               ; preds = %38, %27
  %35 = phi ptr [ %33, %27 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.symbol, ptr %36, i64 0, i32 7
  %40 = tail call i32 @strcmp(ptr noundef nonnull %39, ptr noundef nonnull %7) #29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %78, label %34

42:                                               ; preds = %34
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %44 = trunc i64 %43 to i32
  %45 = mul i32 %44, 596579247
  %46 = icmp eq i8 %4, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %47, %42
  %48 = phi i8 [ %59, %47 ], [ %4, %42 ]
  %49 = phi i32 [ %56, %47 ], [ 0, %42 ]
  %50 = phi i32 [ %55, %47 ], [ %45, %42 ]
  %51 = zext i8 %48 to i32
  %52 = mul i32 %49, 5
  %53 = urem i32 %52, 24
  %54 = shl nuw nsw i32 %51, %53
  %55 = add i32 %54, %50
  %56 = add i32 %49, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %47

61:                                               ; preds = %47, %42
  %62 = phi i32 [ %45, %42 ], [ %55, %47 ]
  %63 = mul i32 %62, 619
  %64 = add i32 %63, 57
  %65 = and i32 %64, 1023
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = add i64 %43, 41
  %70 = tail call noalias ptr @malloc(i64 noundef %69) #28
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #25
  br label %73

73:                                               ; preds = %72, %61
  %74 = getelementptr inbounds i8, ptr %70, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %74, i8 0, i64 32, i1 false) #25
  %75 = getelementptr inbounds %struct.symbol, ptr %70, i64 0, i32 7
  %76 = tail call ptr @strcpy(ptr noundef nonnull %75, ptr noundef nonnull dereferenceable(1) %0) #25
  %77 = getelementptr inbounds %struct.symbol, ptr %70, i64 0, i32 5
  store ptr %68, ptr %70, align 8, !tbaa !5
  store i8 2, ptr %77, align 8
  store ptr %70, ptr %67, align 8, !tbaa !5
  br label %93

78:                                               ; preds = %38
  %79 = load i1, ptr @external_module, align 4
  %80 = getelementptr inbounds %struct.symbol, ptr %36, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.module, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !21
  br i1 %79, label %84, label %88

84:                                               ; preds = %78
  %85 = icmp ne i32 %83, 0
  %86 = icmp eq ptr %81, %1
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %78
  %89 = getelementptr inbounds %struct.module, ptr %1, i64 0, i32 12
  %90 = getelementptr inbounds %struct.module, ptr %81, i64 0, i32 12
  %91 = icmp eq i32 %83, 0
  %92 = select i1 %91, ptr @.str.18, ptr @.str.17
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %89, ptr noundef nonnull %0, ptr noundef nonnull %90, ptr noundef nonnull %92)
  br label %97

93:                                               ; preds = %84, %73
  %94 = phi ptr [ %70, %73 ], [ %36, %84 ]
  %95 = getelementptr inbounds %struct.symbol, ptr %94, i64 0, i32 1
  store ptr %1, ptr %95, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.symbol, ptr %94, i64 0, i32 6
  store i32 %2, ptr %96, align 4, !tbaa !14
  br label %97

97:                                               ; preds = %93, %88
  %98 = phi ptr [ %36, %88 ], [ %94, %93 ]
  ret ptr %98
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sym_update_namespace(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !14
  %4 = icmp eq i8 %3, 46
  %5 = zext i1 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #29
  %8 = trunc i64 %7 to i32
  %9 = mul i32 %8, 596579247
  %10 = load i8, ptr %6, align 1, !tbaa !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %12, %2
  %13 = phi i8 [ %24, %12 ], [ %10, %2 ]
  %14 = phi i32 [ %21, %12 ], [ 0, %2 ]
  %15 = phi i32 [ %20, %12 ], [ %9, %2 ]
  %16 = zext i8 %13 to i32
  %17 = mul i32 %14, 5
  %18 = urem i32 %17, 24
  %19 = shl nuw nsw i32 %16, %18
  %20 = add i32 %19, %15
  %21 = add i32 %14, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %6, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %12

26:                                               ; preds = %12, %2
  %27 = phi i32 [ %9, %2 ], [ %20, %12 ]
  %28 = mul i32 %27, 619
  %29 = add i32 %28, 57
  %30 = and i32 %29, 1023
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [1024 x ptr], ptr @symbolhash, i64 0, i64 %31
  br label %33

33:                                               ; preds = %37, %26
  %34 = phi ptr [ %32, %26 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.symbol, ptr %35, i64 0, i32 7
  %39 = tail call i32 @strcmp(ptr noundef nonnull %38, ptr noundef nonnull %6) #29
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %33

41:                                               ; preds = %33
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef nonnull %0)
  br label %55

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.symbol, ptr %35, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  tail call void @free(ptr noundef %44) #25
  %45 = icmp eq ptr %1, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr %1, align 1, !tbaa !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24) #25
  br label %53

53:                                               ; preds = %52, %49, %46, %42
  %54 = phi ptr [ null, %46 ], [ null, %42 ], [ %50, %49 ], [ null, %52 ]
  store ptr %54, ptr %43, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %53, %41
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc void @add_namespace(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %11, %10 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.namespace_list, ptr %6, i64 0, i32 1
  %8 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef nonnull dereferenceable(1) %1) #29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %10, %2
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %15 = add i64 %14, 9
  %16 = tail call noalias ptr @malloc(i64 noundef %15) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49) #25
  %19 = load ptr, ptr %0, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi ptr [ %3, %13 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.namespace_list, ptr %16, i64 0, i32 1
  %23 = tail call ptr @strcpy(ptr noundef nonnull %22, ptr noundef nonnull dereferenceable(1) %1) #25
  store ptr %21, ptr %16, align 8, !tbaa !5
  store ptr %16, ptr %0, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn uwtable
define internal fastcc ptr @remove_dot(ptr noundef returned %0) unnamed_addr #18 {
  %2 = tail call i64 @strcspn(ptr noundef %0, ptr noundef nonnull @.str.50) #29
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 %2
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = tail call i64 @strspn(ptr noundef nonnull %9, ptr noundef nonnull @.str.51) #29
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = add i64 %10, %2
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !14
  switch i8 %15, label %17 [
    i8 46, label %16
    i8 0, label %16
  ]

16:                                               ; preds = %12, %12
  store i8 0, ptr %5, align 1, !tbaa !14
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %0, i64 %18
  %22 = getelementptr inbounds i8, ptr %21, i64 -4
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(5) @.str.26) #29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = add i64 %18, -4
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !14
  br label %28

28:                                               ; preds = %25, %20, %17, %4, %1
  ret ptr %0
}

declare void @handle_moddevtable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

declare void @get_src_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #19

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc i32 @match(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %57, %5
  %8 = phi ptr [ %3, %5 ], [ %58, %57 ]
  %9 = phi ptr [ %1, %5 ], [ %10, %57 ]
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = tail call i64 @strlen(ptr noundef nonnull %8) #29
  %12 = getelementptr inbounds i8, ptr %8, i64 -1
  %13 = getelementptr inbounds i8, ptr %12, i64 %11
  %14 = load i8, ptr %8, align 1, !tbaa !14
  %15 = icmp eq i8 %14, 42
  %16 = load i8, ptr %13, align 1, !tbaa !14
  %17 = icmp eq i8 %16, 42
  br i1 %15, label %18, label %49

18:                                               ; preds = %7
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  br i1 %17, label %20, label %28

20:                                               ; preds = %18
  %21 = add i64 %11, -2
  %22 = tail call noalias ptr @strndup(ptr noundef nonnull %19, i64 noundef %21) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.73) #25
  br label %25

25:                                               ; preds = %24, %20
  %26 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %22) #29
  tail call void @free(ptr noundef %22) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %57, label %60

28:                                               ; preds = %18
  br i1 %6, label %57, label %29

29:                                               ; preds = %28
  %30 = tail call i64 @strlen(ptr noundef nonnull %0) #29
  %31 = trunc i64 %30 to i32
  %32 = tail call i64 @strlen(ptr noundef nonnull %19) #29
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %31, 0
  %35 = icmp eq i32 %33, 0
  %36 = select i1 %34, i1 true, i1 %35
  %37 = icmp sgt i32 %33, %31
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %29
  %40 = shl i64 %30, 32
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = shl i64 %32, 32
  %44 = ashr exact i64 %43, 32
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = tail call i32 @bcmp(ptr nonnull %46, ptr nonnull %19, i64 %44)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %57

49:                                               ; preds = %7
  br i1 %17, label %50, label %54

50:                                               ; preds = %49
  %51 = add i64 %11, -1
  %52 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %8, i64 noundef %51) #29
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %57

54:                                               ; preds = %49
  %55 = tail call i32 @strcmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(1) %0) #29
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %50, %39, %29, %28, %25
  %58 = load ptr, ptr %10, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %7

60:                                               ; preds = %57, %54, %50, %39, %25, %2
  %61 = phi i32 [ 0, %2 ], [ 1, %25 ], [ 0, %57 ], [ 1, %39 ], [ 1, %50 ], [ 1, %54 ]
  ret i32 %61
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strndup(ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @check_section_mismatch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Elf32_Sym, ptr %3, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !54
  %8 = zext i16 %7 to i32
  %9 = add i16 %7, 1
  %10 = icmp ult i16 %9, -255
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = or i32 %8, -65536
  br label %26

13:                                               ; preds = %5
  %14 = icmp eq i16 %7, -1
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = ptrtoint ptr %3 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 4
  %24 = getelementptr inbounds i32, ptr %17, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !21
  br label %26

26:                                               ; preds = %15, %13, %11
  %27 = phi i32 [ %12, %11 ], [ %25, %15 ], [ %8, %13 ]
  %28 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds %struct.Elf32_Shdr, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 11
  %33 = load i32, ptr %32, align 8, !tbaa !55
  %34 = load i32, ptr %31, align 4, !tbaa !41
  %35 = zext i32 %34 to i64
  %36 = zext i32 %33 to i64
  %37 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !27
  %39 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %38, i64 0, i32 1
  %40 = load i16, ptr %39, align 4, !tbaa !56
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.Elf32_Shdr, ptr %29, i64 %36, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !57
  %45 = zext i32 %44 to i64
  %46 = sub nsw i64 %35, %45
  br label %47

47:                                               ; preds = %42, %26
  %48 = phi i64 [ %46, %42 ], [ %35, %26 ]
  %49 = getelementptr inbounds %struct.Elf32_Shdr, ptr %29, i64 %36, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !39
  %51 = zext i32 %50 to i64
  %52 = getelementptr i8, ptr %38, i64 %51
  %53 = getelementptr i8, ptr %52, i64 %48
  %54 = load i8, ptr %53, align 1, !tbaa !14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %314, label %56

56:                                               ; preds = %75, %47
  %57 = phi ptr [ %76, %75 ], [ @sectioncheck, %47 ]
  %58 = phi i32 [ %77, %75 ], [ 0, %47 ]
  %59 = tail call fastcc i32 @match(ptr noundef %4, ptr noundef nonnull %57) #25
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @match(ptr noundef nonnull %53, ptr noundef nonnull %62) #25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = tail call fastcc i32 @match(ptr noundef nonnull %53, ptr noundef nonnull %69) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72, %68, %56
  %76 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 1
  %77 = add nuw nsw i32 %58, 1
  %78 = icmp eq i32 %77, 12
  br i1 %78, label %314, label %56

79:                                               ; preds = %72, %65
  %80 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !72
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void %81(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %57, ptr noundef %2, ptr noundef %3, ptr noundef %4) #25
  br label %314

84:                                               ; preds = %79
  %85 = load i32, ptr %2, align 4, !tbaa !62
  %86 = tail call fastcc ptr @find_elf_symbol2(ptr noundef %1, i32 noundef %85, ptr noundef %4) #25
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !48
  %91 = load i32, ptr %86, align 4, !tbaa !52
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %90, i64 %92
  br label %94

94:                                               ; preds = %88, %84
  %95 = phi ptr [ %93, %88 ], [ @.str.22, %84 ]
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(21) @.str.149, i64 noundef 20) #29
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %314, label %98

98:                                               ; preds = %94
  %99 = load i16, ptr %6, align 2, !tbaa !54
  %100 = zext i16 %99 to i32
  %101 = add i16 %99, 1
  %102 = icmp ult i16 %101, -255
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = or i32 %100, -65536
  br label %118

105:                                              ; preds = %98
  %106 = icmp eq i16 %99, -1
  br i1 %106, label %107, label %118

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !49
  %110 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  %112 = ptrtoint ptr %3 to i64
  %113 = ptrtoint ptr %111 to i64
  %114 = sub i64 %112, %113
  %115 = ashr exact i64 %114, 4
  %116 = getelementptr inbounds i32, ptr %109, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !21
  br label %118

118:                                              ; preds = %107, %105, %103
  %119 = phi i32 [ %104, %103 ], [ %117, %107 ], [ %100, %105 ]
  %120 = load ptr, ptr %28, align 8, !tbaa !33
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds %struct.Elf32_Shdr, ptr %120, i64 %121
  %123 = load i32, ptr %32, align 8, !tbaa !55
  %124 = load i32, ptr %122, align 4, !tbaa !41
  %125 = zext i32 %124 to i64
  %126 = zext i32 %123 to i64
  %127 = load ptr, ptr %37, align 8, !tbaa !27
  %128 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %127, i64 0, i32 1
  %129 = load i16, ptr %128, align 4, !tbaa !56
  %130 = icmp eq i16 %129, 1
  br i1 %130, label %136, label %131

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.Elf32_Shdr, ptr %120, i64 %126, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !57
  %134 = zext i32 %133 to i64
  %135 = sub nsw i64 %125, %134
  br label %136

136:                                              ; preds = %131, %118
  %137 = phi i64 [ %135, %131 ], [ %125, %118 ]
  %138 = getelementptr inbounds %struct.Elf32_Shdr, ptr %120, i64 %126, i32 4
  %139 = load i32, ptr %138, align 4, !tbaa !39
  %140 = zext i32 %139 to i64
  %141 = getelementptr i8, ptr %127, i64 %140
  %142 = getelementptr i8, ptr %141, i64 %137
  %143 = getelementptr inbounds %struct.Elf32_Rela, ptr %2, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !65
  %145 = tail call fastcc ptr @find_elf_symbol(ptr noundef nonnull %1, i32 noundef %144, ptr noundef nonnull %3) #25
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !48
  %150 = load i32, ptr %145, align 4, !tbaa !52
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %149, i64 %151
  br label %153

153:                                              ; preds = %147, %136
  %154 = phi ptr [ %152, %147 ], [ @.str.22, %136 ]
  %155 = tail call fastcc i32 @match(ptr noundef %142, ptr noundef nonnull @init_data_sections) #25
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %153
  %158 = tail call fastcc i32 @match(ptr noundef %4, ptr noundef nonnull @data_sections) #25
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(8) @.str.150, i64 noundef 7) #29
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %314, label %163

163:                                              ; preds = %160, %157, %153
  %164 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(11) @.str.123) #29
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = tail call fastcc i32 @match(ptr noundef %4, ptr noundef nonnull @data_sections) #25
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(13) @.str.151, i64 noundef 12) #29
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %314, label %172

172:                                              ; preds = %169, %166, %163
  %173 = tail call fastcc i32 @match(ptr noundef %142, ptr noundef nonnull @init_exit_sections) #25
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = tail call fastcc i32 @match(ptr noundef %4, ptr noundef nonnull @data_sections) #25
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 4
  %180 = tail call fastcc i32 @match(ptr noundef %95, ptr noundef nonnull %179) #25
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %314

182:                                              ; preds = %178, %175, %172
  %183 = tail call fastcc i32 @match(ptr noundef %4, ptr noundef nonnull @head_sections) #25
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = tail call fastcc i32 @match(ptr noundef %142, ptr noundef nonnull @init_sections) #25
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %314

188:                                              ; preds = %185, %182
  %189 = tail call fastcc i32 @match(ptr noundef %154, ptr noundef nonnull @linker_symbols) #25
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %314

191:                                              ; preds = %188
  %192 = tail call fastcc i32 @match(ptr noundef %4, ptr noundef nonnull @text_sections) #25
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = tail call fastcc i32 @match(ptr noundef %142, ptr noundef nonnull @init_sections) #25
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = tail call fastcc i32 @match(ptr noundef %95, ptr noundef nonnull @optim_symbols) #25
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %314

200:                                              ; preds = %197, %194, %191
  %201 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(3) @.str.152, i64 noundef 2) #29
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %314, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr %2, align 4, !tbaa !62
  %205 = zext i32 %204 to i64
  br i1 %87, label %212, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.Elf32_Sym, ptr %86, i64 0, i32 3
  %208 = load i8, ptr %207, align 4, !tbaa !58
  %209 = and i8 %208, 15
  %210 = icmp eq i8 %209, 2
  %211 = zext i1 %210 to i32
  br label %212

212:                                              ; preds = %206, %203
  %213 = phi i32 [ %211, %206 ], [ -1, %203 ]
  br i1 %146, label %220, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.Elf32_Sym, ptr %145, i64 0, i32 3
  %216 = load i8, ptr %215, align 4, !tbaa !58
  %217 = and i8 %216, 15
  %218 = icmp eq i8 %217, 2
  %219 = zext i1 %218 to i32
  br label %220

220:                                              ; preds = %214, %212
  %221 = phi i32 [ %219, %214 ], [ -1, %212 ]
  %222 = load i32, ptr @sec_mismatch_count, align 4, !tbaa !21
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr @sec_mismatch_count, align 4, !tbaa !21
  switch i32 %213, label %225 [
    i32 0, label %226
    i32 1, label %224
  ]

224:                                              ; preds = %220
  br label %226

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %224, %220
  %227 = phi ptr [ @.str.146, %225 ], [ @.str.144, %224 ], [ @.str.143, %220 ]
  %228 = phi ptr [ @.str.17, %225 ], [ @.str.145, %224 ], [ @.str.17, %220 ]
  switch i32 %221, label %230 [
    i32 0, label %231
    i32 1, label %229
  ]

229:                                              ; preds = %226
  br label %231

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %230, %229, %226
  %232 = phi ptr [ @.str.146, %230 ], [ @.str.144, %229 ], [ @.str.143, %226 ]
  %233 = phi ptr [ @.str.17, %230 ], [ @.str.145, %229 ], [ @.str.17, %226 ]
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.163, ptr noundef %0, ptr noundef %4, i64 noundef %205, ptr noundef nonnull %227, ptr noundef %95, ptr noundef nonnull %228, ptr noundef nonnull %232, ptr noundef %142, ptr noundef %154, ptr noundef nonnull %233) #25
  %234 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 3
  %235 = load i32, ptr %234, align 8, !tbaa !74
  switch i32 %235, label %311 [
    i32 0, label %236
    i32 1, label %241
    i32 2, label %264
    i32 3, label %268
    i32 4, label %291
    i32 5, label %291
    i32 6, label %296
    i32 7, label %301
    i32 8, label %306
    i32 9, label %310
  ]

236:                                              ; preds = %231
  %237 = tail call fastcc ptr @sec2annotation(ptr noundef %4) #25
  %238 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %239 = load ptr, ptr @stderr, align 8, !tbaa !5
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef nonnull @.str.164, ptr noundef %237, ptr noundef %95, ptr noundef nonnull %232, ptr noundef %238, ptr noundef %154, ptr noundef nonnull %233, ptr noundef %95, ptr noundef %238, ptr noundef %154) #33
  tail call void @free(ptr noundef %237) #25
  tail call void @free(ptr noundef %238) #25
  br label %311

241:                                              ; preds = %231
  %242 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %243 = load ptr, ptr @stderr, align 8, !tbaa !5
  %244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef nonnull @.str.165, ptr noundef %95, ptr noundef nonnull %232, ptr noundef %242, ptr noundef %154, ptr noundef nonnull %233) #33
  %245 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 4
  %246 = load ptr, ptr %245, align 8, !tbaa !5
  %247 = icmp eq ptr %246, null
  br i1 %247, label %261, label %248

248:                                              ; preds = %256, %241
  %249 = phi ptr [ %259, %256 ], [ %246, %241 ]
  %250 = phi ptr [ %253, %256 ], [ %245, %241 ]
  %251 = load ptr, ptr @stderr, align 8, !tbaa !5
  %252 = tail call i32 @fputs(ptr nonnull %249, ptr %251) #33
  %253 = getelementptr inbounds ptr, ptr %250, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = icmp eq ptr %254, null
  br i1 %255, label %261, label %256

256:                                              ; preds = %248
  %257 = load ptr, ptr @stderr, align 8, !tbaa !5
  %258 = tail call i64 @fwrite(ptr nonnull @.str.182, i64 2, i64 1, ptr %257) #33
  %259 = load ptr, ptr %253, align 8, !tbaa !5
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %248

261:                                              ; preds = %256, %248, %241
  %262 = load ptr, ptr @stderr, align 8, !tbaa !5
  %263 = tail call i32 @fputc(i32 10, ptr %262) #25
  tail call void @free(ptr noundef %242) #25
  br label %311

264:                                              ; preds = %231
  %265 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %266 = load ptr, ptr @stderr, align 8, !tbaa !5
  %267 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef nonnull @.str.166, ptr noundef %95, ptr noundef nonnull %232, ptr noundef nonnull %232, ptr noundef %154, ptr noundef nonnull %233, ptr noundef %265, ptr noundef %154) #33
  tail call void @free(ptr noundef %265) #25
  br label %311

268:                                              ; preds = %231
  %269 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %270 = load ptr, ptr @stderr, align 8, !tbaa !5
  %271 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef nonnull @.str.167, ptr noundef %95, ptr noundef nonnull %232, ptr noundef %269, ptr noundef %154, ptr noundef nonnull %233) #33
  %272 = getelementptr inbounds %struct.sectioncheck, ptr %57, i64 0, i32 4
  %273 = load ptr, ptr %272, align 8, !tbaa !5
  %274 = icmp eq ptr %273, null
  br i1 %274, label %288, label %275

275:                                              ; preds = %283, %268
  %276 = phi ptr [ %286, %283 ], [ %273, %268 ]
  %277 = phi ptr [ %280, %283 ], [ %272, %268 ]
  %278 = load ptr, ptr @stderr, align 8, !tbaa !5
  %279 = tail call i32 @fputs(ptr nonnull %276, ptr %278) #33
  %280 = getelementptr inbounds ptr, ptr %277, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !5
  %282 = icmp eq ptr %281, null
  br i1 %282, label %288, label %283

283:                                              ; preds = %275
  %284 = load ptr, ptr @stderr, align 8, !tbaa !5
  %285 = tail call i64 @fwrite(ptr nonnull @.str.182, i64 2, i64 1, ptr %284) #33
  %286 = load ptr, ptr %280, align 8, !tbaa !5
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %275

288:                                              ; preds = %283, %275, %268
  %289 = load ptr, ptr @stderr, align 8, !tbaa !5
  %290 = tail call i32 @fputc(i32 10, ptr %289) #25
  tail call void @free(ptr noundef %269) #25
  br label %311

291:                                              ; preds = %231, %231
  %292 = tail call fastcc ptr @sec2annotation(ptr noundef %4) #25
  %293 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %294 = load ptr, ptr @stderr, align 8, !tbaa !5
  %295 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef nonnull @.str.168, ptr noundef nonnull %227, ptr noundef %292, ptr noundef %95, ptr noundef nonnull %228, ptr noundef nonnull %232, ptr noundef %293, ptr noundef %154, ptr noundef nonnull %233, ptr noundef %154, ptr noundef %95, ptr noundef %154) #33
  tail call void @free(ptr noundef %292) #25
  tail call void @free(ptr noundef %293) #25
  br label %311

296:                                              ; preds = %231
  %297 = tail call fastcc ptr @sec2annotation(ptr noundef %4) #25
  %298 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %299 = load ptr, ptr @stderr, align 8, !tbaa !5
  %300 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef nonnull @.str.169, ptr noundef nonnull %227, ptr noundef %297, ptr noundef %95, ptr noundef nonnull %228, ptr noundef nonnull %232, ptr noundef %298, ptr noundef %154, ptr noundef nonnull %233, ptr noundef %298, ptr noundef %154, ptr noundef nonnull %233) #33
  tail call void @free(ptr noundef %297) #25
  tail call void @free(ptr noundef %298) #25
  br label %311

301:                                              ; preds = %231
  %302 = tail call fastcc ptr @sec2annotation(ptr noundef %4) #25
  %303 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %304 = load ptr, ptr @stderr, align 8, !tbaa !5
  %305 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %304, ptr noundef nonnull @.str.170, ptr noundef nonnull %227, ptr noundef %302, ptr noundef %95, ptr noundef nonnull %228, ptr noundef nonnull %232, ptr noundef %303, ptr noundef %154, ptr noundef nonnull %233, ptr noundef %303, ptr noundef %154, ptr noundef nonnull %233) #33
  tail call void @free(ptr noundef %302) #25
  tail call void @free(ptr noundef %303) #25
  br label %311

306:                                              ; preds = %231
  %307 = tail call fastcc ptr @sec2annotation(ptr noundef %142) #25
  %308 = load ptr, ptr @stderr, align 8, !tbaa !5
  %309 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %308, ptr noundef nonnull @.str.171, ptr noundef %154, ptr noundef %307, ptr noundef %307, ptr noundef %154) #33
  tail call void @free(ptr noundef %307) #25
  br label %311

310:                                              ; preds = %231
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.172) #25
  br label %311

311:                                              ; preds = %310, %306, %301, %296, %291, %288, %264, %261, %236, %231
  %312 = load ptr, ptr @stderr, align 8, !tbaa !5
  %313 = tail call i32 @fputc(i32 10, ptr %312) #25
  br label %314

314:                                              ; preds = %311, %200, %197, %188, %185, %178, %169, %160, %94, %83, %75, %47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extable_mismatch_handler(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.Elf32_Sym, ptr %4, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !54
  %9 = zext i16 %8 to i32
  %10 = add i16 %8, 1
  %11 = icmp ult i16 %10, -255
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = or i32 %9, -65536
  br label %27

14:                                               ; preds = %6
  %15 = icmp eq i16 %8, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = ptrtoint ptr %4 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 4
  %25 = getelementptr inbounds i32, ptr %18, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !21
  br label %27

27:                                               ; preds = %16, %14, %12
  %28 = phi i32 [ %13, %12 ], [ %26, %16 ], [ %9, %14 ]
  %29 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !33
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds %struct.Elf32_Shdr, ptr %30, i64 %31
  %33 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !55
  %35 = load i32, ptr %32, align 4, !tbaa !41
  %36 = zext i32 %35 to i64
  %37 = zext i32 %34 to i64
  %38 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %39, i64 0, i32 1
  %41 = load i16, ptr %40, align 4, !tbaa !56
  %42 = icmp eq i16 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.Elf32_Shdr, ptr %30, i64 %37, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !57
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %36, %46
  br label %48

48:                                               ; preds = %43, %27
  %49 = phi i64 [ %47, %43 ], [ %36, %27 ]
  %50 = getelementptr inbounds %struct.Elf32_Shdr, ptr %30, i64 %37, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !39
  %52 = zext i32 %51 to i64
  %53 = getelementptr i8, ptr %39, i64 %52
  %54 = getelementptr i8, ptr %53, i64 %49
  %55 = load i32, ptr @sec_mismatch_count, align 4, !tbaa !21
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr @sec_mismatch_count, align 4, !tbaa !21
  %57 = load i32, ptr %3, align 4, !tbaa !62
  %58 = tail call fastcc ptr @find_elf_symbol2(ptr noundef nonnull %1, i32 noundef %57, ptr noundef %5) #25
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = load i32, ptr %58, align 4, !tbaa !52
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  br label %66

66:                                               ; preds = %60, %48
  %67 = phi ptr [ %65, %60 ], [ @.str.22, %48 ]
  %68 = getelementptr inbounds %struct.Elf32_Rela, ptr %3, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !65
  %70 = tail call fastcc ptr @find_elf_symbol(ptr noundef nonnull %1, i32 noundef %69, ptr noundef nonnull %4) #25
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !48
  %75 = load i32, ptr %70, align 4, !tbaa !52
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi ptr [ %77, %72 ], [ @.str.22, %66 ]
  br i1 %59, label %87, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.Elf32_Sym, ptr %58, i64 0, i32 3
  %82 = load i8, ptr %81, align 4, !tbaa !58
  %83 = and i8 %82, 15
  %84 = icmp eq i8 %83, 2
  %85 = select i1 %84, ptr @.str.144, ptr @.str.143
  %86 = select i1 %84, ptr @.str.145, ptr @.str.17
  br label %87

87:                                               ; preds = %80, %78
  %88 = phi ptr [ %85, %80 ], [ @.str.146, %78 ]
  %89 = phi ptr [ %86, %80 ], [ @.str.17, %78 ]
  br i1 %71, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.Elf32_Sym, ptr %70, i64 0, i32 3
  %92 = load i8, ptr %91, align 4, !tbaa !58
  %93 = and i8 %92, 15
  %94 = icmp eq i8 %93, 2
  %95 = select i1 %94, ptr @.str.144, ptr @.str.143
  %96 = select i1 %94, ptr @.str.145, ptr @.str.17
  br label %97

97:                                               ; preds = %90, %87
  %98 = phi ptr [ %95, %90 ], [ @.str.146, %87 ]
  %99 = phi ptr [ %96, %90 ], [ @.str.17, %87 ]
  %100 = zext i32 %57 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.140, ptr noundef %0, ptr noundef %5, i64 noundef %100, ptr noundef nonnull %88, ptr noundef %67, ptr noundef nonnull %89, ptr noundef nonnull %98, ptr noundef %54, ptr noundef %79, ptr noundef nonnull %99) #25
  %101 = getelementptr inbounds %struct.sectioncheck, ptr %2, i64 0, i32 1
  %102 = tail call fastcc i32 @match(ptr noundef %54, ptr noundef nonnull %101) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %97
  %105 = load i16, ptr %7, align 2, !tbaa !54
  %106 = zext i16 %105 to i32
  %107 = add i16 %105, 1
  %108 = icmp ult i16 %107, -255
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = or i32 %106, -65536
  br label %124

111:                                              ; preds = %104
  %112 = icmp eq i16 %105, -1
  br i1 %112, label %113, label %124

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !49
  %116 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = ptrtoint ptr %4 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sub i64 %118, %119
  %121 = ashr exact i64 %120, 4
  %122 = getelementptr inbounds i32, ptr %115, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !21
  br label %124

124:                                              ; preds = %113, %111, %109
  %125 = phi i32 [ %110, %109 ], [ %123, %113 ], [ %106, %111 ]
  %126 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 10
  %127 = load i32, ptr %126, align 4, !tbaa !51
  %128 = icmp ult i32 %127, %125
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.147) #25
  br label %130

130:                                              ; preds = %129, %124
  %131 = load ptr, ptr %29, align 8, !tbaa !33
  %132 = zext i32 %125 to i64
  %133 = getelementptr inbounds %struct.Elf32_Shdr, ptr %131, i64 %132, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !61
  %135 = and i32 %134, 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load ptr, ptr @stderr, align 8, !tbaa !5
  %139 = load i32, ptr %3, align 4, !tbaa !62
  %140 = zext i32 %139 to i64
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.141, ptr noundef %5, i64 noundef %140, ptr noundef %54, ptr noundef %54, ptr noundef %54) #33
  br label %142

142:                                              ; preds = %137, %130, %97
  %143 = tail call fastcc i32 @match(ptr noundef %54, ptr noundef nonnull %101)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, ptr %3, align 4, !tbaa !62
  %147 = zext i32 %146 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.137, ptr noundef %5, i64 noundef %147, ptr noundef %54, ptr noundef %0)
  br label %200

148:                                              ; preds = %142
  %149 = load i16, ptr %7, align 2, !tbaa !54
  %150 = zext i16 %149 to i32
  %151 = add i16 %149, 1
  %152 = icmp ult i16 %151, -255
  br i1 %152, label %155, label %153

153:                                              ; preds = %148
  %154 = or i32 %150, -65536
  br label %168

155:                                              ; preds = %148
  %156 = icmp eq i16 %149, -1
  br i1 %156, label %157, label %168

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 12
  %159 = load ptr, ptr %158, align 8, !tbaa !49
  %160 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  %162 = ptrtoint ptr %4 to i64
  %163 = ptrtoint ptr %161 to i64
  %164 = sub i64 %162, %163
  %165 = ashr exact i64 %164, 4
  %166 = getelementptr inbounds i32, ptr %159, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !21
  br label %168

168:                                              ; preds = %157, %155, %153
  %169 = phi i32 [ %154, %153 ], [ %167, %157 ], [ %150, %155 ]
  %170 = getelementptr inbounds %struct.elf_info, ptr %1, i64 0, i32 10
  %171 = load i32, ptr %170, align 4, !tbaa !51
  %172 = icmp ult i32 %171, %169
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.147) #25
  br label %174

174:                                              ; preds = %173, %168
  %175 = load ptr, ptr %29, align 8, !tbaa !33
  %176 = zext i32 %169 to i64
  %177 = getelementptr inbounds %struct.Elf32_Shdr, ptr %175, i64 %176, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !61
  %179 = and i32 %178, 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %174
  %182 = load i32, ptr %3, align 4, !tbaa !62
  %183 = icmp ne i32 %182, 0
  %184 = load i32, ptr @extable_entry_size, align 4
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.148) #25
  %188 = load i32, ptr %3, align 4, !tbaa !62
  br label %189

189:                                              ; preds = %187, %181
  %190 = phi i32 [ %188, %187 ], [ %182, %181 ]
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = load i32, ptr @extable_entry_size, align 4, !tbaa !21
  %194 = urem i32 %190, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192, %189
  %197 = zext i32 %190 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.138, ptr noundef %5, i64 noundef %197, ptr noundef %54)
  br label %200

198:                                              ; preds = %192
  %199 = zext i32 %190 to i64
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.139, ptr noundef %5, i64 noundef %199, ptr noundef %54)
  br label %200

200:                                              ; preds = %198, %196, %174, %145
  ret void
}

; Function Attrs: nofree nounwind readonly uwtable
define internal fastcc ptr @find_elf_symbol2(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #20 {
  %4 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp ult ptr %5, %7
  br i1 %8, label %9, label %93

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 12
  %11 = ptrtoint ptr %5 to i64
  %12 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 11
  %14 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 7
  br label %16

16:                                               ; preds = %88, %9
  %17 = phi ptr [ %5, %9 ], [ %91, %88 ]
  %18 = phi i32 [ -1, %9 ], [ %90, %88 ]
  %19 = phi ptr [ null, %9 ], [ %89, %88 ]
  %20 = getelementptr inbounds %struct.Elf32_Sym, ptr %17, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !54
  %22 = add i16 %21, 1
  %23 = icmp ult i16 %22, -255
  br i1 %23, label %24, label %88

24:                                               ; preds = %16
  %25 = zext i16 %21 to i32
  %26 = icmp eq i16 %21, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 8, !tbaa !49
  %29 = ptrtoint ptr %17 to i64
  %30 = sub i64 %29, %11
  %31 = ashr exact i64 %30, 4
  %32 = getelementptr inbounds i32, ptr %28, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !21
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i32 [ %33, %27 ], [ %25, %24 ]
  %36 = load ptr, ptr %12, align 8, !tbaa !33
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.Elf32_Shdr, ptr %36, i64 %37
  %39 = load i32, ptr %13, align 8, !tbaa !55
  %40 = load i32, ptr %38, align 4, !tbaa !41
  %41 = zext i32 %40 to i64
  %42 = zext i32 %39 to i64
  %43 = load ptr, ptr %14, align 8, !tbaa !27
  %44 = getelementptr inbounds %struct.Elf32_Ehdr, ptr %43, i64 0, i32 1
  %45 = load i16, ptr %44, align 4, !tbaa !56
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %52, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.Elf32_Shdr, ptr %36, i64 %42, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !57
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 %41, %50
  br label %52

52:                                               ; preds = %47, %34
  %53 = phi i64 [ %51, %47 ], [ %41, %34 ]
  %54 = getelementptr inbounds %struct.Elf32_Shdr, ptr %36, i64 %42, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = zext i32 %55 to i64
  %57 = getelementptr i8, ptr %43, i64 %56
  %58 = getelementptr i8, ptr %57, i64 %53
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %2) #29
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %52
  %62 = load ptr, ptr %15, align 8, !tbaa !48
  %63 = load i32, ptr %17, align 4, !tbaa !52
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  %66 = icmp eq ptr %62, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %61
  %68 = load i8, ptr %65, align 1
  switch i8 %68, label %78 [
    i8 0, label %88
    i8 36, label %69
  ]

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, ptr %65, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !14
  %72 = sext i8 %71 to i32
  %73 = tail call ptr @memchr(ptr noundef nonnull @.str.142, i32 %72, i64 5) #25
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds i8, ptr %65, i64 2
  %77 = load i8, ptr %76, align 1, !tbaa !14
  switch i8 %77, label %78 [
    i8 0, label %88
    i8 46, label %88
  ]

78:                                               ; preds = %75, %69, %67
  %79 = getelementptr inbounds %struct.Elf32_Sym, ptr %17, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !60
  %81 = icmp ugt i32 %80, %1
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = sub i32 %1, %80
  %84 = icmp ult i32 %83, %18
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = icmp eq i32 %83, %18
  %87 = select i1 %86, ptr %17, ptr %19
  br label %88

88:                                               ; preds = %85, %82, %78, %75, %75, %67, %61, %52, %16
  %89 = phi ptr [ %19, %16 ], [ %19, %52 ], [ %19, %78 ], [ %17, %82 ], [ %87, %85 ], [ %19, %75 ], [ %19, %67 ], [ %19, %61 ], [ %19, %75 ]
  %90 = phi i32 [ %18, %16 ], [ %18, %52 ], [ %18, %78 ], [ %83, %82 ], [ %18, %85 ], [ %18, %75 ], [ %18, %67 ], [ %18, %61 ], [ %18, %75 ]
  %91 = getelementptr inbounds %struct.Elf32_Sym, ptr %17, i64 1
  %92 = icmp ult ptr %91, %7
  br i1 %92, label %16, label %93

93:                                               ; preds = %88, %3
  %94 = phi ptr [ null, %3 ], [ %89, %88 ]
  ret ptr %94
}

; Function Attrs: nofree nounwind readonly uwtable
define internal fastcc ptr @find_elf_symbol(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #20 {
  %4 = load i32, ptr %2, align 4, !tbaa !52
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %101

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Elf32_Sym, ptr %2, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !54
  %9 = zext i16 %8 to i32
  %10 = add i16 %8, 1
  %11 = icmp ult i16 %10, -255
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = or i32 %9, -65536
  br label %27

14:                                               ; preds = %6
  %15 = icmp eq i16 %8, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = ptrtoint ptr %2 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 4
  %25 = getelementptr inbounds i32, ptr %18, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !21
  br label %27

27:                                               ; preds = %16, %14, %12
  %28 = phi i32 [ %13, %12 ], [ %26, %16 ], [ %9, %14 ]
  %29 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp ult ptr %30, %32
  br i1 %33, label %34, label %101

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 12
  %36 = ptrtoint ptr %30 to i64
  %37 = getelementptr inbounds %struct.elf_info, ptr %0, i64 0, i32 7
  br label %38

38:                                               ; preds = %93, %34
  %39 = phi i32 [ 20, %34 ], [ %95, %93 ]
  %40 = phi ptr [ null, %34 ], [ %94, %93 ]
  %41 = phi ptr [ %30, %34 ], [ %96, %93 ]
  %42 = getelementptr inbounds %struct.Elf32_Sym, ptr %41, i64 0, i32 5
  %43 = load i16, ptr %42, align 2, !tbaa !54
  %44 = zext i16 %43 to i32
  %45 = add i16 %43, 1
  %46 = icmp ult i16 %45, -255
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = or i32 %44, -65536
  br label %58

49:                                               ; preds = %38
  %50 = icmp eq i16 %43, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = load ptr, ptr %35, align 8, !tbaa !49
  %53 = ptrtoint ptr %41 to i64
  %54 = sub i64 %53, %36
  %55 = ashr exact i64 %54, 4
  %56 = getelementptr inbounds i32, ptr %52, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !21
  br label %58

58:                                               ; preds = %51, %49, %47
  %59 = phi i32 [ %48, %47 ], [ %57, %51 ], [ %44, %49 ]
  %60 = icmp eq i32 %59, %28
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.Elf32_Sym, ptr %41, i64 0, i32 3
  %63 = load i8, ptr %62, align 4, !tbaa !58
  %64 = and i8 %63, 15
  %65 = icmp eq i8 %64, 3
  br i1 %65, label %93, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %37, align 8, !tbaa !48
  %68 = load i32, ptr %41, align 4, !tbaa !52
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = icmp eq ptr %67, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %66
  %73 = load i8, ptr %70, align 1
  switch i8 %73, label %83 [
    i8 0, label %93
    i8 36, label %74
  ]

74:                                               ; preds = %72
  %75 = getelementptr inbounds i8, ptr %70, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !14
  %77 = sext i8 %76 to i32
  %78 = tail call ptr @memchr(ptr noundef nonnull @.str.142, i32 %77, i64 5) #25
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds i8, ptr %70, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !14
  switch i8 %82, label %83 [
    i8 0, label %93
    i8 46, label %93
  ]

83:                                               ; preds = %80, %74, %72
  %84 = getelementptr inbounds %struct.Elf32_Sym, ptr %41, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !60
  %86 = icmp eq i32 %85, %1
  br i1 %86, label %101, label %87

87:                                               ; preds = %83
  %88 = sub i32 %85, %1
  %89 = tail call i32 @llvm.abs.i32(i32 %88, i1 false)
  %90 = icmp slt i32 %89, %39
  %91 = select i1 %90, ptr %41, ptr %40
  %92 = tail call i32 @llvm.smin.i32(i32 %89, i32 %39)
  br label %93

93:                                               ; preds = %87, %80, %80, %72, %66, %61, %58
  %94 = phi ptr [ %40, %58 ], [ %40, %61 ], [ %91, %87 ], [ %40, %80 ], [ %40, %72 ], [ %40, %66 ], [ %40, %80 ]
  %95 = phi i32 [ %39, %58 ], [ %39, %61 ], [ %92, %87 ], [ %39, %80 ], [ %39, %72 ], [ %39, %66 ], [ %39, %80 ]
  %96 = getelementptr inbounds %struct.Elf32_Sym, ptr %41, i64 1
  %97 = icmp ult ptr %96, %32
  br i1 %97, label %38, label %98

98:                                               ; preds = %93
  %99 = icmp slt i32 %95, 20
  %100 = select i1 %99, ptr %94, ptr null
  br label %101

101:                                              ; preds = %98, %83, %27, %3
  %102 = phi ptr [ %2, %3 ], [ null, %27 ], [ %100, %98 ], [ %41, %83 ]
  ret ptr %102
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @sec2annotation(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @match(ptr noundef %0, ptr noundef nonnull @init_exit_sections)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.174) #25
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 95, ptr %5, align 1, !tbaa !14
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 95, ptr %9, align 1, !tbaa !14
  %11 = load i8, ptr %0, align 1, !tbaa !14
  %12 = icmp eq i8 %11, 46
  %13 = zext i1 %12 to i64
  %14 = getelementptr i8, ptr %0, i64 %13
  br label %15

15:                                               ; preds = %19, %8
  %16 = phi ptr [ %14, %8 ], [ %20, %19 ]
  %17 = phi ptr [ %10, %8 ], [ %21, %19 ]
  %18 = load i8, ptr %16, align 1, !tbaa !14
  switch i8 %18, label %19 [
    i8 0, label %22
    i8 46, label %22
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %18, ptr %17, align 1, !tbaa !14
  br label %15

22:                                               ; preds = %15, %15
  store i8 0, ptr %17, align 1, !tbaa !14
  %23 = icmp eq i8 %18, 46
  %24 = zext i1 %23 to i64
  %25 = getelementptr i8, ptr %16, i64 %24
  %26 = tail call ptr @strstr(ptr noundef nonnull %25, ptr noundef nonnull @.str.175) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call i64 @strlen(ptr nonnull %17)
  %30 = getelementptr i8, ptr %17, i64 %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %30, ptr noundef nonnull align 1 dereferenceable(7) @.str.176, i64 7, i1 false)
  br label %42

31:                                               ; preds = %22
  %32 = tail call ptr @strstr(ptr noundef nonnull %25, ptr noundef nonnull @.str.177) #29
  %33 = icmp eq ptr %32, null
  %34 = tail call i64 @strlen(ptr nonnull %17)
  %35 = getelementptr i8, ptr %17, i64 %34
  br i1 %33, label %37, label %36

36:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %35, ptr noundef nonnull align 1 dereferenceable(6) @.str.178, i64 6, i1 false)
  br label %42

37:                                               ; preds = %31
  store i16 32, ptr %35, align 1
  br label %42

38:                                               ; preds = %1
  %39 = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.17) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.180) #25
  br label %42

42:                                               ; preds = %41, %38, %37, %36, %28
  %43 = phi ptr [ %5, %36 ], [ %5, %37 ], [ %5, %28 ], [ %39, %38 ], [ null, %41 ]
  ret ptr %43
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.224)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @perror(ptr noundef %1) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.buffer, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !17
  %10 = sext i32 %9 to i64
  %11 = tail call i64 @fwrite(ptr noundef %7, i64 noundef 1, i64 noundef %10, ptr noundef nonnull %3)
  %12 = load i32, ptr %8, align 8, !tbaa !17
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call void @perror(ptr noundef %1) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

16:                                               ; preds = %6
  %17 = tail call i32 @fclose(ptr noundef nonnull %3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @perror(ptr noundef %1) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

20:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #24

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nofree nounwind }
attributes #23 = { argmemonly nofree nounwind willreturn }
attributes #24 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 48}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 88, !13, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"timespec", !11, i64 0, !11, i64 8}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !12, i64 12}
!16 = !{!"buffer", !6, i64 0, !12, i64 8, !12, i64 12}
!17 = !{!16, !12, i64 8}
!18 = !{!16, !6, i64 0}
!19 = !{!20, !6, i64 8}
!20 = !{!"dump_list", !6, i64 0, !6, i64 8}
!21 = !{!12, !12, i64 0}
!22 = !{!23, !7, i64 8}
!23 = !{!"", !6, i64 0, !7, i64 8}
!24 = !{!20, !6, i64 0}
!25 = !{!23, !6, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!28, !6, i64 8}
!28 = !{!"elf_info", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !29, i64 40, !29, i64 42, !6, i64 48, !6, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !6, i64 80, !6, i64 88}
!29 = !{!"short", !7, i64 0}
!30 = !{!28, !11, i64 0}
!31 = !{!32, !12, i64 32}
!32 = !{!"", !7, i64 0, !29, i64 16, !29, i64 18, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !29, i64 40, !29, i64 42, !29, i64 44, !29, i64 46, !29, i64 48, !29, i64 50}
!33 = !{!28, !6, i64 16}
!34 = !{!32, !29, i64 48}
!35 = !{!36, !12, i64 20}
!36 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!37 = !{!32, !29, i64 50}
!38 = !{!36, !12, i64 24}
!39 = !{!36, !12, i64 16}
!40 = !{!36, !12, i64 4}
!41 = !{!36, !12, i64 0}
!42 = !{!28, !6, i64 56}
!43 = !{!28, !12, i64 64}
!44 = !{!28, !29, i64 40}
!45 = !{!28, !29, i64 42}
!46 = !{!28, !6, i64 24}
!47 = !{!28, !6, i64 32}
!48 = !{!28, !6, i64 48}
!49 = !{!28, !6, i64 80}
!50 = !{!28, !6, i64 88}
!51 = !{!28, !12, i64 68}
!52 = !{!53, !12, i64 0}
!53 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 12, !7, i64 13, !29, i64 14}
!54 = !{!53, !29, i64 14}
!55 = !{!28, !12, i64 72}
!56 = !{!32, !29, i64 16}
!57 = !{!36, !12, i64 12}
!58 = !{!53, !7, i64 12}
!59 = !{!32, !29, i64 18}
!60 = !{!53, !12, i64 4}
!61 = !{!36, !12, i64 8}
!62 = !{!63, !12, i64 0}
!63 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!64 = !{!63, !12, i64 4}
!65 = !{!63, !12, i64 8}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.peeled.count", i32 2}
!68 = !{!69, !12, i64 0}
!69 = !{!"", !12, i64 0, !12, i64 4}
!70 = !{!69, !12, i64 4}
!71 = !{!36, !12, i64 28}
!72 = !{!73, !6, i64 648}
!73 = !{!"sectioncheck", !7, i64 0, !7, i64 160, !7, i64 320, !7, i64 480, !7, i64 488, !6, i64 648}
!74 = !{!73, !7, i64 480}
