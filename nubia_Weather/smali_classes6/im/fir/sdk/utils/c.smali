.class public final Lim/fir/sdk/utils/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lim/fir/sdk/utils/c;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lim/fir/sdk/utils/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FIR_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lim/fir/sdk/utils/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FIR_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FIR_SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
