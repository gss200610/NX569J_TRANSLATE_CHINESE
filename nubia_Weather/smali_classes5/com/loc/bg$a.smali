.class public final Lcom/loc/bg$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bg$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bg;

.field private final b:Lcom/loc/bg$c;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/loc/bg;Lcom/loc/bg$c;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/bg$a;->b:Lcom/loc/bg$c;

    invoke-static {p2}, Lcom/loc/bg$c;->e(Lcom/loc/bg$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/loc/bg$a;->c:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/loc/bg;->f(Lcom/loc/bg;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/loc/bg;Lcom/loc/bg$c;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/bg$a;-><init>(Lcom/loc/bg;Lcom/loc/bg$c;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/bg$a;)Lcom/loc/bg$c;
    .locals 1

    iget-object v0, p0, Lcom/loc/bg$a;->b:Lcom/loc/bg$c;

    return-object v0
.end method

.method static synthetic b(Lcom/loc/bg$a;)[Z
    .locals 1

    iget-object v0, p0, Lcom/loc/bg$a;->c:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/loc/bg$a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bg$a;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    invoke-static {v0}, Lcom/loc/bg;->f(Lcom/loc/bg;)I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected index 0 to be greater than 0 and less than the maximum value count of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    invoke-static {v2}, Lcom/loc/bg;->f(Lcom/loc/bg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/loc/bg$a;->b:Lcom/loc/bg$c;

    invoke-static {v0}, Lcom/loc/bg$c;->b(Lcom/loc/bg$c;)Lcom/loc/bg$a;

    move-result-object v0

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/bg$a;->b:Lcom/loc/bg$c;

    invoke-static {v0}, Lcom/loc/bg$c;->e(Lcom/loc/bg$c;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bg$a;->c:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/loc/bg$a;->b:Lcom/loc/bg$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/bg$c;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lcom/loc/bg$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/loc/bg$a$a;-><init>(Lcom/loc/bg$a;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    invoke-static {v0}, Lcom/loc/bg;->g(Lcom/loc/bg;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/loc/bg;->f()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/loc/bg$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/loc/bg;->a(Lcom/loc/bg;Lcom/loc/bg$a;Z)V

    iget-object v0, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    iget-object v1, p0, Lcom/loc/bg$a;->b:Lcom/loc/bg$c;

    invoke-static {v1}, Lcom/loc/bg$c;->d(Lcom/loc/bg$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/bg;->c(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/loc/bg$a;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    invoke-static {v0, p0, v2}, Lcom/loc/bg;->a(Lcom/loc/bg;Lcom/loc/bg$a;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/bg$a;->a:Lcom/loc/bg;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/loc/bg;->a(Lcom/loc/bg;Lcom/loc/bg$a;Z)V

    return-void
.end method
