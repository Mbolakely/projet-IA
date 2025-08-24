# Projet Web Enquête (Prolog)

Ce projet utilise **SWI-Prolog** pour exécuter un serveur web défini dans le fichier `web_enquete.pl`.  

---

## Démarrage rapide

Exécutez simplement le script suivant :  

```bash
start_server.bat
```

---

## Étapes du script

Le fichier `start_server.bat` effectue automatiquement :  

1. **Vérification de l’installation de SWI-Prolog**
   - Vérifie si `swipl` est installé et disponible dans le `PATH`.
   - Si non, une erreur s’affiche avec le lien de téléchargement :  
     👉 [Télécharger SWI-Prolog](https://www.swi-prolog.org/)

2. **Vérification du fichier `web_enquete.pl`**
   - Vérifie que le fichier est présent dans le répertoire courant.
   - Si absent, la liste des fichiers `.pl` du dossier est affichée.

3. **Lancement de Prolog avec diagnostic**
   - Ouvre SWI-Prolog en chargeant `web_enquete.pl`.
   - Dans l’invite Prolog :  
     - **Démarrer le serveur** avec :  
       ```prolog
       server(8080).
       ```  
       - **Arreter le serveur** avec :  
       ```prolog
       http_stop_server(8080, []).
       ```  

     - **Quitter Prolog** avec :  
       ```prolog
       halt.
       ```

---

## Prérequis

- **SWI-Prolog** installé et accessible dans le `PATH`  
- Fichier **`web_enquete.pl`** présent dans le dossier du projet  

---

## 🛠 Dépannage

- Si une erreur apparaît, notez le message affiché pour le débogage.  
- Vérifiez que le port **8080** n’est pas déjà utilisé par une autre application.  
