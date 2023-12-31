import treinoUsuarioService from "@/services/treino-usuario-service";

//feature next.js 13 (especificar tipo de requisição)
export async function GET(request: Request) {
  const treinos = await treinoUsuarioService.getAll();

  return Response.json(treinos);
}

export async function POST(request: Request) {
  const data = await request.json();

  const treinoCriado = await treinoUsuarioService.new(data);

  return Response.json(treinoCriado);
}
