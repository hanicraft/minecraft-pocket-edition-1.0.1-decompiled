.class public final enum Lcom/android/vending/licensing/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/android/vending/licensing/e;

.field public static final enum b:Lcom/android/vending/licensing/e;

.field public static final enum c:Lcom/android/vending/licensing/e;

.field private static final synthetic d:[Lcom/android/vending/licensing/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/vending/licensing/e;

    const-string v1, "LICENSED"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/licensing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/e;->a:Lcom/android/vending/licensing/e;

    new-instance v0, Lcom/android/vending/licensing/e;

    const-string v1, "NOT_LICENSED"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/licensing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/e;->b:Lcom/android/vending/licensing/e;

    new-instance v0, Lcom/android/vending/licensing/e;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/licensing/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/e;->c:Lcom/android/vending/licensing/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/licensing/e;

    sget-object v1, Lcom/android/vending/licensing/e;->a:Lcom/android/vending/licensing/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/licensing/e;->b:Lcom/android/vending/licensing/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/licensing/e;->c:Lcom/android/vending/licensing/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/licensing/e;->d:[Lcom/android/vending/licensing/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/licensing/e;
    .locals 1

    const-class v0, Lcom/android/vending/licensing/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/licensing/e;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/licensing/e;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/vending/licensing/e;->d:[Lcom/android/vending/licensing/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/vending/licensing/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
