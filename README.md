# Eniac Projeto Integrador 2º Semestre

TODO

## 🚀 Semantic Release

Este projeto usa [Semantic Release](https://semantic-release.gitbook.io/) para versionamento automático e geração de releases.

### Configuração Necessária

Para que o semantic-release funcione corretamente com a branch `main` protegida, é necessário configurar um Personal Access Token (PAT).

📚 **[Veja o guia completo de configuração](./docs/SEMANTIC_RELEASE_SETUP.md)**

### Commits Convencionais

Use o padrão [Conventional Commits](https://www.conventionalcommits.org/) para suas mensagens:

- `feat:` - Nova funcionalidade (gera versão minor)
- `fix:` - Correção de bug (gera versão patch)
- `docs:` - Mudanças na documentação
- `style:` - Formatação de código
- `refactor:` - Refatoração de código
- `test:` - Adição ou correção de testes
- `chore:` - Tarefas de manutenção

**Exemplo:**

```bash
git commit -m "feat: adiciona formulário de contato"
git commit -m "fix: corrige validação de email"
```
