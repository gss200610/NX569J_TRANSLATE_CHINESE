.class public final Lcom/loc/ar;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/loc/ah;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/ar;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/ar;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/loc/ar;->a(Landroid/content/Context;Z)Lcom/loc/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    return-void
.end method

.method private static a(Landroid/content/Context;Z)Lcom/loc/ah;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/ah;

    const-class v2, Lcom/loc/ao;

    invoke-static {v2}, Lcom/loc/ah;->a(Ljava/lang/Class;)Lcom/loc/ag;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/loc/ah;-><init>(Landroid/content/Context;Lcom/loc/ag;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-string v2, "sd"

    const-string v3, "gdb"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/u;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/u;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    const-class v3, Lcom/loc/u;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/loc/ah;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/loc/u;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/ar;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/ar;->a(Landroid/content/Context;Z)Lcom/loc/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    :cond_2
    invoke-virtual {p1}, Lcom/loc/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    const-class v3, Lcom/loc/u;

    invoke-virtual {v0, v2, v3}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    invoke-virtual {v0, p1}, Lcom/loc/ah;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "sd"

    const-string v2, "it"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/u;

    invoke-virtual {v0, p1}, Lcom/loc/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ar;->a:Lcom/loc/ah;

    invoke-virtual {v0, v2, p1}, Lcom/loc/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method
