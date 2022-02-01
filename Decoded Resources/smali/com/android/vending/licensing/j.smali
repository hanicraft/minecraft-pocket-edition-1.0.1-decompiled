.class public final enum Lcom/android/vending/licensing/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/android/vending/licensing/j;

.field public static final enum b:Lcom/android/vending/licensing/j;

.field public static final enum c:Lcom/android/vending/licensing/j;

.field public static final enum d:Lcom/android/vending/licensing/j;

.field public static final enum e:Lcom/android/vending/licensing/j;

.field private static enum f:Lcom/android/vending/licensing/j;

.field private static final synthetic g:[Lcom/android/vending/licensing/j;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/vending/licensing/j;

    const-string v1, "INVALID_PACKAGE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/licensing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/j;

    new-instance v0, Lcom/android/vending/licensing/j;

    const-string v1, "NON_MATCHING_UID"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/licensing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/j;->b:Lcom/android/vending/licensing/j;

    new-instance v0, Lcom/android/vending/licensing/j;

    const-string v1, "NOT_MARKET_MANAGED"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/licensing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/j;->c:Lcom/android/vending/licensing/j;

    new-instance v0, Lcom/android/vending/licensing/j;

    const-string v1, "CHECK_IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/licensing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/j;->f:Lcom/android/vending/licensing/j;

    new-instance v0, Lcom/android/vending/licensing/j;

    const-string v1, "INVALID_PUBLIC_KEY"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/licensing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/j;->d:Lcom/android/vending/licensing/j;

    new-instance v0, Lcom/android/vending/licensing/j;

    const-string v1, "MISSING_PERMISSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/licensing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/licensing/j;->e:Lcom/android/vending/licensing/j;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/vending/licensing/j;

    sget-object v1, Lcom/android/vending/licensing/j;->a:Lcom/android/vending/licensing/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/licensing/j;->b:Lcom/android/vending/licensing/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/licensing/j;->c:Lcom/android/vending/licensing/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/licensing/j;->f:Lcom/android/vending/licensing/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/licensing/j;->d:Lcom/android/vending/licensing/j;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/licensing/j;->e:Lcom/android/vending/licensing/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/licensing/j;->g:[Lcom/android/vending/licensing/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/licensing/j;
    .locals 1

    const-class v0, Lcom/android/vending/licensing/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/licensing/j;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/licensing/j;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/vending/licensing/j;->g:[Lcom/android/vending/licensing/j;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/vending/licensing/j;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
