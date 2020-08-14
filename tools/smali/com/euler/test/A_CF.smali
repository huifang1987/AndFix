.class public Lcom/euler/test/A_CF;
.super Ljava/lang/Object;
.source "A.java"


# static fields
.field static i:I

.field private static o:Lcom/euler/test/O;


# instance fields
.field s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/euler/test/O;

    const-string v1, "fix"

    invoke-direct {v0, v1}, Lcom/euler/test/O;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/euler/test/A_CF;->o:Lcom/euler/test/O;

    .line 33
    const/16 v0, 0xb

    sput v0, Lcom/euler/test/A_CF;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "s"

    iput-object v0, p0, Lcom/euler/test/A_CF;->s:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "a"
        clazz = "com.euler.test.A"
    .end annotation

    .line 36
    const-string v0, "qq"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "euler"

    const-string v1, "fix succes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "b"

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "a"

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "b"
        clazz = "com.euler.test.A"
    .end annotation

    .line 42
    const-string v0, "euler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/euler/test/A;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/euler/test/A_CF;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fix succes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/euler/test/A_CF;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v1, Lcom/euler/test/A;->o:Lcom/euler/test/O;

    iget-object v1, v1, Lcom/euler/test/O;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getI()I
    .locals 1

    .line 54
    sget v0, Lcom/euler/test/A;->i:I

    return v0
.end method
