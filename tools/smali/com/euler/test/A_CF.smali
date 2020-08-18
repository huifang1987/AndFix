.class public Lcom/euler/test/A_CF;
.super Ljava/lang/Object;
.source "A.java"


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "<init>"
        clazz = "com.euler.test.A"
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "fixed"

    iput-object v0, p0, Lcom/euler/test/A_CF;->s:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "a"
        clazz = "com.euler.test.A"
    .end annotation

    .line 34
    const-string v0, "static method fix success"

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        clazz = "com.euler.test.A"
        method = "c"
    .end annotation

    .line 42
    const-string v0, "private method fix success"

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "b"
        clazz = "com.euler.test.A"
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-static method fix success: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/euler/test/A_CF;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
