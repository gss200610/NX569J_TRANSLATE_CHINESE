.class public final Lcom/loc/au;
.super Ljava/lang/Object;
.source "DexDownLoad.java"

# interfaces
.implements Lcom/loc/bn$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/au$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/av;

.field private b:Lcom/loc/bn;

.field private c:Lcom/loc/u;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/av;Lcom/loc/u;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/au;->c:Lcom/loc/u;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/loc/au;->a:Lcom/loc/av;

    new-instance v0, Lcom/loc/bn;

    new-instance v1, Lcom/loc/ay;

    iget-object v2, p0, Lcom/loc/au;->a:Lcom/loc/av;

    invoke-direct {v1, v2}, Lcom/loc/ay;-><init>(Lcom/loc/av;)V

    invoke-direct {v0, v1}, Lcom/loc/bn;-><init>(Lcom/loc/bq;)V

    iput-object v0, p0, Lcom/loc/au;->b:Lcom/loc/bn;

    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v0, v0, Lcom/loc/av;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/az;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/au;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/au;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/loc/au;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/loc/ah;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v0, v0, Lcom/loc/av;->b:Ljava/lang/String;

    const-string v2, "used"

    invoke-static {p1, v0, v2}, Lcom/loc/az$a;->a(Lcom/loc/ah;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bd;

    invoke-virtual {v0}, Lcom/loc/bd;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v2, v2, Lcom/loc/av;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/bf;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "dDownLoad"

    const-string v3, "isUsed()"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/loc/ah;Lcom/loc/bd;Lcom/loc/av;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p3, Lcom/loc/av;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/loc/av;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/loc/av;->d:Ljava/lang/String;

    iget-object v4, p3, Lcom/loc/av;->e:Ljava/lang/String;

    const-string v4, "errorstatus"

    invoke-virtual {p2}, Lcom/loc/bd;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v3}, Lcom/loc/u;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v4}, Lcom/loc/u;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/az;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-static {v1, p1, v2}, Lcom/loc/az;->a(Landroid/content/Context;Lcom/loc/ah;Lcom/loc/u;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/be;->b()Lcom/loc/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/be;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/loc/au$a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/loc/au$a;-><init>(Lcom/loc/au;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/loc/au;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/loc/au;->f:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/loc/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/loc/bd;

    invoke-virtual {p1, v2, v4}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v4}, Lcom/loc/u;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/loc/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_1
    invoke-static {}, Lcom/loc/be;->b()Lcom/loc/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/be;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/loc/au$a;

    invoke-direct {v2, p0, p1, v3}, Lcom/loc/au$a;-><init>(Lcom/loc/au;Lcom/loc/ah;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/au;)Lcom/loc/u;
    .locals 1

    iget-object v0, p0, Lcom/loc/au;->c:Lcom/loc/u;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/au;)Lcom/loc/bn;
    .locals 1

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/bn;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/au;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/au;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/au;)Lcom/loc/av;
    .locals 1

    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/av;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/loc/be;->b()Lcom/loc/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/be;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/au$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/loc/au$a;-><init>(Lcom/loc/au;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/au;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/loc/bf;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/av;

    invoke-virtual {v0}, Lcom/loc/av;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/au;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/bf;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v4, v0, Lcom/loc/av;->c:Ljava/lang/String;

    new-instance v6, Lcom/loc/ah;

    iget-object v0, p0, Lcom/loc/au;->f:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bb;->b()Lcom/loc/bb;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/ah;-><init>(Landroid/content/Context;Lcom/loc/ag;)V

    new-instance v0, Lcom/loc/bd$a;

    iget-object v1, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v1, v1, Lcom/loc/av;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v3, v3, Lcom/loc/av;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v5, v5, Lcom/loc/av;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/bd$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Lcom/loc/bd$a;->a(Ljava/lang/String;)Lcom/loc/bd$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bd$a;->a()Lcom/loc/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v1, v1, Lcom/loc/av;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v2, v2, Lcom/loc/av;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v3, v3, Lcom/loc/av;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/loc/ah;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v1, v1, Lcom/loc/av;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/be;->b()Lcom/loc/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/be;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/au$a;

    invoke-direct {v1, p0, v6}, Lcom/loc/au$a;-><init>(Lcom/loc/au;Lcom/loc/ah;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Lcom/loc/bu;

    iget-object v1, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v2}, Lcom/loc/u;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v3}, Lcom/loc/u;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/loc/bu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":1}"

    invoke-virtual {v0, v1}, Lcom/loc/bu;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/au;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/bv;->a(Lcom/loc/bu;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "dDownLoad"

    const-string v2, "clearMarker()"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/au;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string v1, "dDownLoad"

    const-string v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/au;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/loc/bf;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method final e()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/au;->c:Lcom/loc/u;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v2}, Lcom/loc/u;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v3, v3, Lcom/loc/av;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v2}, Lcom/loc/u;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v3, v3, Lcom/loc/av;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget v3, v3, Lcom/loc/av;->g:I

    if-lt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget v3, v3, Lcom/loc/av;->f:I

    if-gt v2, v3, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/loc/au;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/p;->p(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    new-instance v2, Lcom/loc/ah;

    iget-object v3, p0, Lcom/loc/au;->f:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bb;->b()Lcom/loc/bb;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/loc/ah;-><init>(Landroid/content/Context;Lcom/loc/ag;)V

    invoke-direct {p0, v2}, Lcom/loc/au;->a(Lcom/loc/ah;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    :goto_3
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/loc/au;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/au;->c:Lcom/loc/u;

    invoke-virtual {v3}, Lcom/loc/u;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/az;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/loc/au;->a:Lcom/loc/av;

    iget-object v3, v3, Lcom/loc/av;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/az$a;->a(Lcom/loc/ah;Ljava/lang/String;)Lcom/loc/bd;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/loc/au;->a:Lcom/loc/av;

    invoke-direct {p0, v2, v3, v4}, Lcom/loc/au;->a(Lcom/loc/ah;Lcom/loc/bd;Lcom/loc/av;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "dDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4
.end method
