import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch
from mpl_toolkits.mplot3d import Axes3D

def application_1(x):
    """
    Application injective mais pas surjective
    Si x < 0: y = x - 5
    Sinon: y = x
    """
    return np.where(x < 0, x - 5, x)

def application_2(x):
    """
    Application surjective mais pas injective
    Si x < 0: y = x + 5
    Sinon: y = x
    """
    return np.where(x < 0, x + 5, x)

def application_3(x):
    """
    Application bijective
    y = x
    """
    return x

def application_4(x):
    """
    Application injective mais pas surjective (variante)
    Si x < -5: y = x + 5
    Sinon: y = x
    """
    return np.where(x < -5, x + 5, x)

def analyser_proprietes():
    """
    Analyse les propriétés des trois applications
    """
    print("=== ANALYSE DES PROPRIÉTÉS ===\n")
    
    # Test pour l'application 1 (injective mais pas surjective)
    print("1. Application injective mais pas surjective:")
    print("   f(x) = x-5 si x < 0, sinon f(x) = x")
    
    # Test d'injectivité
    x1, x2 = -1, 1
    y1, y2 = application_1(x1), application_1(x2)
    print(f"   f({x1}) = {y1}, f({x2}) = {y2}")
    print(f"   Injectivité: f(x1) ≠ f(x2) quand x1 ≠ x2 ✓")
    
    # Test de surjectivité
    y_test = -6  # Cette valeur n'a pas d'antécédent
    print(f"   Surjectivité: y = {y_test} n'a pas d'antécédent ✗")
    print("   → Injectif mais pas surjectif\n")
    
    # Test pour l'application 2 (surjective mais pas injective)
    print("2. Application surjective mais pas injective:")
    print("   f(x) = x+5 si x < 0, sinon f(x) = x")
    
    # Test d'injectivité
    x1, x2 = -3, 2
    y1, y2 = application_2(x1), application_2(x2)
    print(f"   f({x1}) = {y1}, f({x2}) = {y2}")
    print(f"   Injectivité: f(x1) = f(x2) mais x1 ≠ x2 ✗")
    
    # Test de surjectivité
    print("   Surjectivité: Tout y ∈ ℝ a un antécédent ✓")
    print("   → Surjectif mais pas injectif\n")
    
    # Test pour l'application 3 (bijective)
    print("3. Application bijective:")
    print("   f(x) = x")
    print("   Injectivité: f(x1) = f(x2) ⟺ x1 = x2 ✓")
    print("   Surjectivité: Tout y ∈ ℝ a un antécédent ✓")
    print("   → Bijectif\n")

def visualiser_applications():
    """
    Visualise les quatre applications avec des segments réels et des cercles pour les extrémités
    """
    # Créer la figure avec 4 sous-graphiques
    fig, axes = plt.subplots(2, 2, figsize=(15, 10))
    axes = axes.flatten()  # Convertir en tableau 1D pour faciliter l'indexation
    
    # Application 1: injective mais pas surjective (#3ddcff = CYAN = injectif)
    # Segment 1: f(x) = x-5 pour x < 0 (de x=-10 à x=0, excluant x=0)
    x1_neg = np.linspace(-10, -0.01, 500)  # Exclure x=0
    y1_neg = application_1(x1_neg)
    axes[0].plot(x1_neg, y1_neg, color='#3ddcff', linewidth=3, label='f(x) = x-5')
    
    # Segment 2: f(x) = x pour x >= 0 (de x=0 à x=10, incluant x=0)
    x1_pos = np.linspace(0, 10, 500)
    y1_pos = application_1(x1_pos)
    axes[0].plot(x1_pos, y1_pos, color='#3ddcff', linewidth=3, label='f(x) = x')
    
    # Cercles aux extrémités
    axes[0].plot(0, -5, 'o', markersize=8, markeredgecolor='#3ddcff', markeredgewidth=2, 
                 markerfacecolor='white', label='Point non atteint (0,-5)')
    axes[0].plot(0, 0, 'o', markersize=8, markeredgecolor='#3ddcff', markeredgewidth=2, 
                 markerfacecolor='#3ddcff', label='Point atteint (0,0)')
    
    axes[0].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[0].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[0].set_title('1. Application injective mais pas surjective\nf: ℝ → ℝ, f(x) = x-5 si x<0, sinon f(x) = x')
    axes[0].set_xlabel('x')
    axes[0].set_ylabel('f(x)')
    axes[0].grid(True, alpha=0.3)
    axes[0].legend()
    
    # Marquer la zone non atteinte (entre -5 et 0)
    axes[0].fill_between(np.linspace(-10, 10, 100), -5, 0, alpha=0.2, color='red', label='Zone non atteinte')
    axes[0].legend()
    
    # Application 2: surjective mais pas injective (#d459e8 = MAGENTA = surjectif)
    # Segment 1: f(x) = x+5 pour x < 0 (de x=-10 à x=0, excluant x=0)
    x2_neg = np.linspace(-10, -0.01, 500)  # Exclure x=0
    y2_neg = application_2(x2_neg)
    axes[1].plot(x2_neg, y2_neg, color='#d459e8', linewidth=3, label='f(x) = x+5')
    
    # Segment 2: f(x) = x pour x >= 0 (de x=0 à x=10, incluant x=0)
    x2_pos = np.linspace(0, 10, 500)
    y2_pos = application_2(x2_pos)
    axes[1].plot(x2_pos, y2_pos, color='#d459e8', linewidth=3, label='f(x) = x')
    
    # Cercles aux extrémités
    axes[1].plot(0, 5, 'o', markersize=8, markeredgecolor='#d459e8', markeredgewidth=2, 
                 markerfacecolor='white', label='Point non atteint (0,5)')
    axes[1].plot(0, 0, 'o', markersize=8, markeredgecolor='#d459e8', markeredgewidth=2, 
                 markerfacecolor='#d459e8', label='Point atteint (0,0)')
    
    # Marquer les points avec même image
    axes[1].plot(-3, 2, 'ro', markersize=8, label='f(-3) = f(2) = 2')
    axes[1].plot(2, 2, 'ro', markersize=8)
    
    axes[1].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[1].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[1].set_title('2. Application surjective mais pas injective\nf: ℝ → ℝ, f(x) = x+5 si x<0, sinon f(x) = x')
    axes[1].set_xlabel('x')
    axes[1].set_ylabel('f(x)')
    axes[1].grid(True, alpha=0.3)
    axes[1].legend()
    
    # Application 3: bijective (#899bf3 = BLEU = cyan + magenta en peinture)
    x3 = np.linspace(-10, 10, 1000)
    y3 = application_3(x3)
    
    axes[2].plot(x3, y3, color='#899bf3', linewidth=3, label='f(x) = x')
    axes[2].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[2].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[2].set_title('3. Application bijective\nf: ℝ → ℝ, f(x) = x')
    axes[2].set_xlabel('x')
    axes[2].set_ylabel('f(x)')
    axes[2].grid(True, alpha=0.3)
    axes[2].legend()
    
    # Application 4: Ceci n'est pas une fonction de ℝ dans ℝ (GRIS)
    # Segment 1: f(x) = x+5 pour x < -5 (de x=-10 à x=-5, excluant x=-5)
    x4_neg = np.linspace(-10, -5.01, 500)  # Exclure x=-5
    y4_neg = application_4(x4_neg)
    axes[3].plot(x4_neg, y4_neg, color='grey', linewidth=3, label='f(x) = x+5')
    
    # Segment 2: f(x) = x pour x >= 0 (de x=0 à x=10, incluant x=0)
    x4_pos = np.linspace(0, 10, 500)
    y4_pos = application_4(x4_pos)
    axes[3].plot(x4_pos, y4_pos, color='grey', linewidth=3, label='f(x) = x')
    
    # Cercles aux extrémités
    axes[3].plot(-5, 0, 'o', markersize=8, markeredgecolor='grey', markeredgewidth=2, 
                 markerfacecolor='white', label='Point non atteint (-5,0)')
    axes[3].plot(0, 0, 'o', markersize=8, markeredgecolor='grey', markeredgewidth=2, 
                 markerfacecolor='grey', label='Point atteint (0,0)')
    
    axes[3].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[3].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[3].axvline(x=-5, color='k', linestyle='--', alpha=0.3)
    axes[3].set_title('4. Ceci n\'est pas une fonction de ℝ dans ℝ\nf(x) = x+5 si x<-5, sinon f(x) = x')
    axes[3].set_xlabel('x')
    axes[3].set_ylabel('f(x)')
    axes[3].grid(True, alpha=0.3)
    
    # Marquer la zone où la fonction est indéfinie (entre -5 et 0)
    axes[3].fill_between(np.linspace(-5, 0, 100), -10, 10, alpha=0.3, color='grey', label='Fonction indéfinie')
    axes[3].text(-2.5, 0, 'Fonction\nindéfinie', ha='center', va='center', fontsize=10, 
                 bbox=dict(boxstyle="round,pad=0.3", facecolor='white', alpha=0.8))
    axes[3].legend()
    
    plt.tight_layout()
    
    # Sauvegarder en SVG
    plt.savefig('applications_segments.svg', format='svg', dpi=300, bbox_inches='tight')
    print("Graphique sauvegardé en tant que 'applications_segments.svg'")
    
    # Optionnel : afficher aussi à l'écran
    plt.show()

def visualiser_diagrammes_fleches():
    """
    Visualise les applications avec des diagrammes de flèches
    """
    fig, axes = plt.subplots(1, 3, figsize=(18, 6))
    
    # Application 1: injective mais pas surjective
    ax1 = axes[0]
    ax1.set_xlim(-6, 6)
    ax1.set_ylim(-6, 6)
    ax1.set_title('1. Injectif mais pas surjectif', fontsize=12, fontweight='bold')
    
    # Domaines et codomaines
    ax1.add_patch(plt.Rectangle((-5.5, -5.5), 5, 1, fill=False, edgecolor='blue', linewidth=2))
    ax1.add_patch(plt.Rectangle((0.5, -5.5), 5, 1, fill=False, edgecolor='blue', linewidth=2))
    ax1.add_patch(plt.Rectangle((-5.5, 0.5), 5, 1, fill=False, edgecolor='red', linewidth=2))
    ax1.add_patch(plt.Rectangle((0.5, 0.5), 5, 1, fill=False, edgecolor='red', linewidth=2))
    
    ax1.text(-2.5, -4.5, 'Domaine\nx < 0', ha='center', va='center', fontsize=10, color='blue')
    ax1.text(3, -4.5, 'Domaine\nx ≥ 0', ha='center', va='center', fontsize=10, color='blue')
    ax1.text(-2.5, 1, 'Codomaine\nf(x) < 0', ha='center', va='center', fontsize=10, color='red')
    ax1.text(3, 1, 'Codomaine\nf(x) ≥ 0', ha='center', va='center', fontsize=10, color='red')
    
    # Flèches
    arrow1 = FancyArrowPatch((-3, -4), (-3, 0.5), arrowstyle='->', mutation_scale=20, color='green')
    arrow2 = FancyArrowPatch((3, -4), (3, 0.5), arrowstyle='->', mutation_scale=20, color='green')
    ax1.add_patch(arrow1)
    ax1.add_patch(arrow2)
    
    ax1.text(-1.5, -1.5, 'Zone non\natteinte', ha='center', va='center', fontsize=9, 
             bbox=dict(boxstyle="round,pad=0.3", facecolor='yellow', alpha=0.7))
    
    # Application 2: surjective mais pas injective
    ax2 = axes[1]
    ax2.set_xlim(-6, 6)
    ax2.set_ylim(-6, 6)
    ax2.set_title('2. Surjectif mais pas injectif', fontsize=12, fontweight='bold')
    
    ax2.add_patch(plt.Rectangle((-5.5, -5.5), 5, 1, fill=False, edgecolor='blue', linewidth=2))
    ax2.add_patch(plt.Rectangle((0.5, -5.5), 5, 1, fill=False, edgecolor='blue', linewidth=2))
    ax2.add_patch(plt.Rectangle((-5.5, 0.5), 5, 1, fill=False, edgecolor='red', linewidth=2))
    ax2.add_patch(plt.Rectangle((0.5, 0.5), 5, 1, fill=False, edgecolor='red', linewidth=2))
    
    ax2.text(-2.5, -4.5, 'Domaine\nx < 0', ha='center', va='center', fontsize=10, color='blue')
    ax2.text(3, -4.5, 'Domaine\nx ≥ 0', ha='center', va='center', fontsize=10, color='blue')
    ax2.text(-2.5, 1, 'Codomaine\nf(x) < 0', ha='center', va='center', fontsize=10, color='red')
    ax2.text(3, 1, 'Codomaine\nf(x) ≥ 0', ha='center', va='center', fontsize=10, color='red')
    
    # Flèches convergentes
    arrow3 = FancyArrowPatch((-3, -4), (-1, 0.5), arrowstyle='->', mutation_scale=20, color='green')
    arrow4 = FancyArrowPatch((3, -4), (-1, 0.5), arrowstyle='->', mutation_scale=20, color='green')
    ax2.add_patch(arrow3)
    ax2.add_patch(arrow4)
    
    ax2.text(-1, 1.5, 'f(-5) = f(0) = 0', ha='center', va='center', fontsize=9, 
             bbox=dict(boxstyle="round,pad=0.3", facecolor='yellow', alpha=0.7))
    
    # Application 3: bijective
    ax3 = axes[2]
    ax3.set_xlim(-6, 6)
    ax3.set_ylim(-6, 6)
    ax3.set_title('3. Bijectif', fontsize=12, fontweight='bold')
    
    ax3.add_patch(plt.Rectangle((-5.5, -5.5), 11, 1, fill=False, edgecolor='blue', linewidth=2))
    ax3.add_patch(plt.Rectangle((-5.5, 0.5), 11, 1, fill=False, edgecolor='red', linewidth=2))
    
    ax3.text(0, -4.5, 'Domaine ℝ', ha='center', va='center', fontsize=10, color='blue')
    ax3.text(0, 1, 'Codomaine ℝ', ha='center', va='center', fontsize=10, color='red')
    
    # Flèches bijectives
    for i in range(-4, 5):
        arrow = FancyArrowPatch((i, -4), (i, 0.5), arrowstyle='->', mutation_scale=15, color='green')
        ax3.add_patch(arrow)
    
    ax3.text(0, 1.5, 'Correspondance\n1-1', ha='center', va='center', fontsize=9, 
             bbox=dict(boxstyle="round,pad=0.3", facecolor='yellow', alpha=0.7))
    
    for ax in axes:
        ax.set_aspect('equal')
        ax.axis('off')
    
    plt.tight_layout()
    plt.show()

def tester_applications():
    """
    Teste les applications avec des valeurs spécifiques
    """
    print("=== TESTS DES APPLICATIONS ===\n")
    
    valeurs_test = [-3, -1, 0, 1, 3]
    
    print("Valeurs de test:", valeurs_test)
    print()
    
    print("1. Application injective mais pas surjective:")
    print("   f(x) = x-5 si x < 0, sinon f(x) = x")
    for x in valeurs_test:
        y = application_1(x)
        print(f"   f({x:2d}) = {y:2d}")
    print()
    
    print("2. Application surjective mais pas injective:")
    print("   f(x) = x+5 si x < 0, sinon f(x) = x")
    for x in valeurs_test:
        y = application_2(x)
        print(f"   f({x:2d}) = {y:2d}")
    print()
    
    print("3. Application bijective:")
    print("   f(x) = x")
    for x in valeurs_test:
        y = application_3(x)
        print(f"   f({x:2d}) = {y:2d}")
    print()
    
    print("4. Ceci n'est pas une fonction de ℝ dans ℝ:")
    print("   f(x) = x+5 si x < -5, sinon f(x) = x")
    for x in valeurs_test:
        y = application_4(x)
        print(f"   f({x:2d}) = {y:2d}")
    print()

def generer_svg():
    """
    Génère uniquement le fichier SVG des applications
    """
    print("Génération du fichier SVG...")
    
    # Créer la figure avec 4 sous-graphiques
    fig, axes = plt.subplots(2, 2, figsize=(15, 10))
    axes = axes.flatten()
    
    # Application 1: injective mais pas surjective (#3ddcff = CYAN = injectif)
    x1_neg = np.linspace(-10, -0.01, 500)
    y1_neg = application_1(x1_neg)
    axes[0].plot(x1_neg, y1_neg, color='#3ddcff', linewidth=3, label='f(x) = x-5')
    
    x1_pos = np.linspace(0, 10, 500)
    y1_pos = application_1(x1_pos)
    axes[0].plot(x1_pos, y1_pos, color='#3ddcff', linewidth=3, label='f(x) = x')
    
    axes[0].plot(0, -5, 'o', markersize=8, markeredgecolor='#3ddcff', markeredgewidth=2, 
                 markerfacecolor='white', label='Point non atteint (0,-5)')
    axes[0].plot(0, 0, 'o', markersize=8, markeredgecolor='#3ddcff', markeredgewidth=2, 
                 markerfacecolor='#3ddcff', label='Point atteint (0,0)')
    
    axes[0].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[0].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[0].set_title('1. Application injective mais pas surjective\nf: ℝ → ℝ, f(x) = x-5 si x<0, sinon f(x) = x')
    axes[0].set_xlabel('x')
    axes[0].set_ylabel('f(x)')
    axes[0].grid(True, alpha=0.3)
    axes[0].fill_between(np.linspace(-10, 10, 100), -5, 0, alpha=0.2, color='red', label='Zone non atteinte')
    axes[0].legend()
    
    # Application 2: surjective mais pas injective (#d459e8 = MAGENTA = surjectif)
    x2_neg = np.linspace(-10, -0.01, 500)
    y2_neg = application_2(x2_neg)
    axes[1].plot(x2_neg, y2_neg, color='#d459e8', linewidth=3, label='f(x) = x+5')
    
    x2_pos = np.linspace(0, 10, 500)
    y2_pos = application_2(x2_pos)
    axes[1].plot(x2_pos, y2_pos, color='#d459e8', linewidth=3, label='f(x) = x')
    
    axes[1].plot(0, 5, 'o', markersize=8, markeredgecolor='#d459e8', markeredgewidth=2, 
                 markerfacecolor='white', label='Point non atteint (0,5)')
    axes[1].plot(0, 0, 'o', markersize=8, markeredgecolor='#d459e8', markeredgewidth=2, 
                 markerfacecolor='#d459e8', label='Point atteint (0,0)')
    
    axes[1].plot(-3, 2, 'ro', markersize=8, label='f(-3) = f(2) = 2')
    axes[1].plot(2, 2, 'ro', markersize=8)
    
    axes[1].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[1].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[1].set_title('2. Application surjective mais pas injective\nf: ℝ → ℝ, f(x) = x+5 si x<0, sinon f(x) = x')
    axes[1].set_xlabel('x')
    axes[1].set_ylabel('f(x)')
    axes[1].grid(True, alpha=0.3)
    axes[1].legend()
    
    # Application 3: bijective (#899bf3 = BLEU = cyan + magenta en peinture)
    x3 = np.linspace(-10, 10, 1000)
    y3 = application_3(x3)
    axes[2].plot(x3, y3, color='#899bf3', linewidth=3, label='f(x) = x')
    axes[2].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[2].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[2].set_title('3. Application bijective\nf: ℝ → ℝ, f(x) = x')
    axes[2].set_xlabel('x')
    axes[2].set_ylabel('f(x)')
    axes[2].grid(True, alpha=0.3)
    axes[2].legend()
    
    # Application 4: Ceci n'est pas une fonction de ℝ dans ℝ (GRIS)
    x4_neg = np.linspace(-10, -5.01, 500)
    y4_neg = application_4(x4_neg)
    axes[3].plot(x4_neg, y4_neg, color='grey', linewidth=3, label='f(x) = x+5')
    
    x4_pos = np.linspace(0, 10, 500)
    y4_pos = application_4(x4_pos)
    axes[3].plot(x4_pos, y4_pos, color='grey', linewidth=3, label='f(x) = x')
    
    axes[3].plot(-5, 0, 'o', markersize=8, markeredgecolor='grey', markeredgewidth=2, 
                 markerfacecolor='white', label='Point non atteint (-5,0)')
    axes[3].plot(0, 0, 'o', markersize=8, markeredgecolor='grey', markeredgewidth=2, 
                 markerfacecolor='grey', label='Point atteint (0,0)')
    
    axes[3].axhline(y=0, color='k', linestyle='--', alpha=0.3)
    axes[3].axvline(x=0, color='k', linestyle='--', alpha=0.3)
    axes[3].axvline(x=-5, color='k', linestyle='--', alpha=0.3)
    axes[3].set_title('4. Ceci n\'est pas une fonction de ℝ dans ℝ\nf(x) = x+5 si x<-5, sinon f(x) = x')
    axes[3].set_xlabel('x')
    axes[3].set_ylabel('f(x)')
    axes[3].grid(True, alpha=0.3)
    
    axes[3].fill_between(np.linspace(-5, 0, 100), -10, 10, alpha=0.3, color='grey', label='Fonction indéfinie')
    axes[3].text(-2.5, 0, 'Fonction\nindéfinie', ha='center', va='center', fontsize=10, 
                 bbox=dict(boxstyle="round,pad=0.3", facecolor='white', alpha=0.8))
    axes[3].legend()
    
    plt.tight_layout()
    
    # Sauvegarder en SVG
    plt.savefig('applications_segments.svg', format='svg', dpi=300, bbox_inches='tight')
    print("Fichier SVG généré : 'applications_segments.svg'")
    
    plt.close()  # Fermer la figure pour libérer la mémoire

def main():
    """
    Fonction principale qui exécute toutes les analyses
    """
    print("APPLICATIONS BASÉES SUR DES SEGMENTS DE DROITES")
    print("=" * 50)
    print()
    
    # Analyser les propriétés
    analyser_proprietes()
    
    # Tester avec des valeurs spécifiques
    tester_applications()
    
    # Visualiser les applications
    print("Génération des graphiques...")
    visualiser_applications()
    visualiser_diagrammes_fleches()
    
    print("\nAnalyse terminée!")

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) > 1 and sys.argv[1] == "--svg":
        # Générer uniquement le SVG
        generer_svg()
    else:
        # Exécuter l'analyse complète
        main()
