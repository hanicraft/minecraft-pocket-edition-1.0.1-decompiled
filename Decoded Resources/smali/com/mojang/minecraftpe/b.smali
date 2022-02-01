.class final Lcom/mojang/minecraftpe/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mojang/minecraftpe/MainActivity;

.field private final synthetic b:Z

.field private final synthetic c:Z

.field private final synthetic d:I

.field private final synthetic e:[I


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;ZZI[I)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/b;->a:Lcom/mojang/minecraftpe/MainActivity;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/b;->b:Z

    iput-boolean p3, p0, Lcom/mojang/minecraftpe/b;->c:Z

    iput p4, p0, Lcom/mojang/minecraftpe/b;->d:I

    iput-object p5, p0, Lcom/mojang/minecraftpe/b;->e:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/mojang/minecraftpe/b;->a:Lcom/mojang/minecraftpe/MainActivity;

    iget-boolean v1, p0, Lcom/mojang/minecraftpe/b;->b:Z

    iget-boolean v2, p0, Lcom/mojang/minecraftpe/b;->c:Z

    invoke-static {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->a(Lcom/mojang/minecraftpe/MainActivity;ZZ)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/b;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lcom/mojang/minecraftpe/b;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/mojang/minecraftpe/b;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->c(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/b;->e:[I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mojang/minecraftpe/b;->e:[I

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/b;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->c(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :try_start_1
    aget v0, v2, v4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/mojang/minecraftpe/b;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v5}, Lcom/mojang/minecraftpe/MainActivity;->a(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method
